<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'orgpackage.conf.php');

# customization
function dbo_orgpackage_customize(&$dbo){
	$dbo->newModifier = 'dbo_orgpackage_custom_new';
	$dbo->editModifier = 'dbo_orgpackage_custom_edit';
}

function dbo_orgpackage_custom_new($table, $cols){
	global $DB, $toporgID, $USER;
	$ret = array();
	$cols['op_orgid'] = $toporgID;
	$cols['op_createby'] = $USER->userid;
	$cols['op_created'] = date('Y-m-d H:i:s');
	# check if startdate enddate crash with existing subscribed package
	$cols['op_enddateori'] = $cols['op_enddate'] = date('Y-m-d', strtotime("+".$cols['months']." months", strtotime($cols['op_startdate'])-86400));
	$cnt = $DB->getOne("select count(*) from smorgpackage where op_orgid = :0 and (('".$cols['op_startdate']."' between op_startdate and op_enddate) or ('".$cols['op_enddate']."' between op_startdate and op_enddate))", array($toporgID));
	if($cnt) return array('Invalid tenure');
	unset($cols['months']);
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_orgpackage_custom_edit($table, $cols, $wheres){
	global $DB, $USER;
	$oriRS = $DB->getRow("select * from smorgpackage join smpackage on op_packageid = pk_id where op_id = :0", array($wheres['op_id']), PDO::FETCH_ASSOC);
	$updateCols = $cols;
	
	$ret = $newCols = array();
	
	# check upgrade	
	# package changed
	if($cols['op_packageid']!=$oriRS['op_packageid']){
		$newpackageRS = $DB->getRow("select * from smpackage where pk_id = :0", array($cols['op_packageid']));	
		$enddate = date('Y-m-d', strtotime("+".$cols['months']." months", strtotime($cols['op_startdate'])-86400));
		$newCols = array('op_orgid'=>$oriRS['op_orgid'], 'op_packageid'=>$cols['op_packageid'], 'op_created'=>date('Y-m-d H:i:s'), 'op_createby'=>$USER->userid, 'op_status'=>1, 'op_startdate'=>$cols['op_startdate'], 'op_enddate'=>$enddate, 'op_enddateori'=>$enddate, 'op_previd'=>$oriRS['op_id']);
		# must upgrade only
		if($newpackageRS['pk_price']<$oriRS['pk_price']){
			return array('Downgrade is not allowed');
		}
		# if upgrade, new package startdate must within current package tenure
		if(strtotime($newCols['op_startdate'])<strtotime($oriRS['op_startdate']) 
		|| strtotime($newCols['op_startdate'])>strtotime($oriRS['op_enddate'])){
			return array('Upgrade package not within current package tenure');
		}
		if(strtotime($enddate)<strtotime($oriRS['op_enddate'])){
			return array('New package must not end earlier than current package');
		}
		//op_orid, op_packageid, op_created, op_createby, op_status, op_startdate, op_enddate, op_enddateori, op_previd
		
		$updateCols['op_enddate'] = date('Y-m-d', strtotime($newCols['op_startdate'])-86400);
		foreach(array('months', 'op_packageid', 'op_startdate') as $tmp){
			if(array_key_exists($tmp, $updateCols)) unset($updateCols[$tmp]);
		}
	}else{ # package no changed
		if($updateCols['op_startdate']!=$oriRS['op_startdate'] || date('Y-m-d', strtotime("+".$cols['months']." months", strtotime($cols['op_startdate'])-86400))!=$oriRS['op_enddate']){
			return array('Tenure is not modifiable');
		}
		foreach(array('months', 'op_packageid', 'op_startdate', 'op_enddate') as $tmp){
			if(array_key_exists($tmp, $updateCols)) unset($updateCols[$tmp]);
		}
	}
	/* d('oriRS : ');
	pr($oriRS);
	d('cols : ');
	pr($cols);
	d('newCols : ');
	pr($newCols);
	d('updateCols : ');
	pr($updateCols);
	return array('test'); */
	
	$ok = $DB->doUpdate($table, $updateCols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	$ok = $DB->doInsert($table, $newCols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


# final rendering
$dbo->render();
?>