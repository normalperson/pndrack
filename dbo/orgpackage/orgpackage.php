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
	global $DB;
	pr($cols);
	pr($wheres);
	$oriRS = $DB->getRow("select * from smorgpackage join smpackage on op_packageid = pk_id where op_id = :0", array($wheres['op_id']));
	$newpackageRS = $DB->getRow("select * from smpackage where pk_id = :0", array($cols['op_packageid']));
	pr($oriRS);
	pr($newpackageRS);
	return array('test');
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


# final rendering
$dbo->render();
?>