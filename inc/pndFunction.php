<?php
function userTopOrgID(){
	global $USER, $DB;
	$topID = $USER->orgid;
	$parentID = $DB->getOne("select org_parentid from ".$DB->prefix."org where org_id = :0", array($topID));
	while($parentID && $topID!=$parentID){
		$topID = $parentID;
		$parentID = $DB->getOne("select org_parentid from ".$DB->prefix."org where org_id = :0", array($parentID));
	}
	return $topID;
}
function orgTopOrgID($orgID){
	global $DB;
	$topID = $orgID;
	$parentID = $DB->getOne("select org_parentid from ".$DB->prefix."org where org_id = :0", array($topID));
	while($parentID && $topID!=$parentID){
		$topID = $parentID;
		$parentID = $DB->getOne("select org_parentid from ".$DB->prefix."org where org_id = :0", array($parentID));
	}
	return $topID;
}
function pnd_user_assign_packageid(){
	global $USER, $DB;
	$userTopOrgID = userTopOrgID();
	$packageID = $DB->getOne("select op_packageid from smorgpackage where op_orgid = :0 and op_status = 1 and '".date('Y-m-d')."' between op_startdate and op_enddate", array($userTopOrgID));
	if($packageID){
		$USER->packageID = $packageID;
	}else{
		$USER->packageID = false;
		return false;
	}
	return $packageID;
}

pnd_user_assign_packageid();
?>