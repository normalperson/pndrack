<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_org.conf.php');

# customization
function dbo_setup_org_customize(&$dbo){
	$dbo->newModifier = 'dbo_setup_org_custom_new';
}

function dbo_setup_org_uniqueorgcode(){
	global $DB;
	$orgcode = randomString(8, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ');
	$cnt = $DB->getOne("select count(*) from ".$DB->prefix."org where org_code = :0", array($orgcode));
	while($cnt){
		$orgcode = randomString(8, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ');
		$cnt = $DB->getOne("select count(*) from ".$DB->prefix."org where org_code = :0", array($orgcode));
	}
	return $orgcode;
}

function dbo_setup_org_custom_new($table, $cols){
	global $DB, $USER;
	$cols2 = $cols;

	
	/*validation*/
	// check duplicate org code
	$ret = array();
	$cnt = $DB->getOne("select count(*) from ".$DB->prefix."org where org_code = :0", array($cols['org_code']));
	if($cnt) 	$ret = array('Org Code not available');

	// check is there space between org code
	if(preg_match('/\s/',$cols['org_code'])>0) $ret = array_merge($ret,array('Org code does not allow to have space in between.'));

	// if package choice is not null 
	if($cols['packageid'] != ''){
		//check start date, month cannot be null
		if($cols['startdate'] == null){
			$ret = array_merge($ret,array('If you choose a package, package start date cannot be null'));
		}
		if($cols['months'] == null){
			$ret = array_merge($ret,array('If you choose a package, package duration cannot be null'));	
		}
	}

	if(count($ret) > 0) return $ret;

	foreach(array('packageid', 'startdate', 'months') as $tmp){
		if(array_key_exists($tmp, $cols)) unset($cols[$tmp]);
	}
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		$lastorgid = $DB->lastID();
		# create default user for new org. userid and password default to org code
		$userCols = array('usr_userid'=>$cols['org_code'], 'usr_password'=>User::genPassword($cols['org_code']), 'usr_created'=>date('Y-m-d H:i:s'), 'usr_name'=>$cols['org_code'], 'usr_status'=>'ACTIVE');
		$ok = $DB->doInsert($DB->prefix.'user', $userCols);
		if(!$ok){
			$ret[] = $DB->lastError;
		}else{
			# default client admin
			$ok = $DB->doInsert($DB->prefix.'userorgrole', array('uor_usrid'=>$cols['org_code'], 'uor_orgid'=>$lastorgid, 'uor_rolid'=>3, 'uor_seq'=>1));
			if(!$ok) $ret[] = $DB->lastError;
			# package
			if(!$cols2['org_parentid'] && $cols2['packageid']){
				$enddate = date('Y-m-d', strtotime("+".$cols2['months']." months", strtotime($cols2['startdate'])-86400));
				$sql = "insert into smorgpackage (op_orgid, op_packageid, op_created, op_createby, op_status, op_startdate, op_enddate, op_enddateori) values (:0, :1, '".date('Y-m-d H:i:s')."', '".$USER->userid."', 1, ".$DB->quote($cols2['startdate']).", '".$enddate."', '".$enddate."')";
				$bind = array($lastorgid, $cols2['packageid']);
				$ok = $DB->execute($sql, $bind);
				if(!$ok){
					$ret[] = $DB->lastError;
				}
			}
		}
	}
	return $ret;
}

# final rendering
$dbo->render();
?>