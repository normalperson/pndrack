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
	global $DB;
	$cnt = $DB->getOne("select count(*) from ".$DB->prefix."org where org_code = :0", array($cols['org_code']));
	if($cnt)
		return array('Org Code not available');
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		# create default user for new org. userid and password default to org code
		$userCols = array('usr_userid'=>$cols['org_code'], 'usr_password'=>User::genPassword($cols['org_code']), 'usr_created'=>date('Y-m-d H:i:s'), 'usr_name'=>$cols['org_code'], 'usr_status'=>'ACTIVE');
		$ok2 = $DB->doInsert($DB->prefix.'user', $userCols);
		if(!$ok2){
			$ret[] = $DB->lastError;
		}
	}
	return $ret;
}

# final rendering
$dbo->render();
?>