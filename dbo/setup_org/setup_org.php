<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_org.conf.php');

# customization
function setup_org_customize(&$dbo){
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

# final rendering
$dbo->render();
?>