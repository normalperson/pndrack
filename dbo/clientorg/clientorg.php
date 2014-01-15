<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'clientorg.conf.php');

# customization
function dbo_clientorg_customize(&$dbo){
	$dbo->newModifier = 'dbo_clientorg_custom_new';
	$dbo->editModifier = 'dbo_clientorg_custom_edit';
}

function dbo_clientorg_custom_new($table, $cols){
	global $DB,$USER;
	$ret = array();
	// validation on org code
	// check duplicate org code
	$ret = array();
	$cnt = $DB->getOne("select count(*) from ".$DB->prefix."org where org_code = :0", array($cols['org_code']));
	if($cnt) 	$ret = array('Org Code not available');

	// check is there space between org code
	if(preg_match('/\s/',$cols['org_code'])>0) $ret = array_merge($ret,array('Org code does not allow to have space in between.'));

	if(count($ret) > 0) return $ret;
	
	// get the parent id	
	$cols['org_parentid'] = userTopOrgID();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

// add filter only see current org data
global $USER;

if($USER->userid != 'admin'){
	$dbo->sql = "select * from fcorg where org_id = '".$USER->orgid."' or org_parentid = '".userTopOrgID()."'";
}

# final rendering
$dbo->render();
?>