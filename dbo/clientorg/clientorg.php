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
	$toporgid = userTopOrgID();
	// check duplicate org code
	$ret = array();
	$cnt = $DB->getOne("select count(*) from ".$DB->prefix."org where org_code = :0", array($cols['org_code']));
	if($cnt) 	$ret = array('Org Code not available');

	// check is there space between org code
	if(preg_match('/\s/',$cols['org_code'])>0) $ret = array_merge($ret,array('Org code does not allow to have space in between.'));

	// check total org on their license
	if($USER->userid !='admin' || $USER->userid != 'pndadmin'){
		$maxorg = $DB->GetOne("select pk_maxorg from smpackage where pk_id = :0",array($USER->packageID));
		$sql = "select count(*) from fcorg 
				where org_id = :0
				or org_parentid = :1 ";
		$totalorg = $DB->GetOne($sql,array($USER->orgid,$toporgid));

		$newtotalorg = $totalorg + 1;
		if($newtotalorg > $maxorg ) {
			$ret = array( tl('Your package does not allow to create more organization',false,'valmessage') );
			return $ret;
		}


	}

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