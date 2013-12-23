<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_shelfgroup.conf.php');

# customization
function setup_shelfgroup_customize(&$dbo){
}

$dbo->newModifier = 'setup_shelfgroup_custom_new';
function setup_shelfgroup_custom_new($table, $cols){
	global $DB,$USER;
	$ret = array();
	$cols['sg_orgid'] = $USER->orgid;
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

global $USER;

if($USER->userid != 'admin') $dbo->whereSQL = "sg_orgid = '".$USER->orgid."'";
# final rendering
$dbo->render();
?>