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
	}
	return $ret;
}

# final rendering
$dbo->render();
?>