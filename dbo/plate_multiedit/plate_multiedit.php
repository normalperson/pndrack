<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'plate_multiedit.conf.php');

# customization
function dbo_plate_multiedit_customize(&$dbo){
	$dbo->editModifier = 'dbo_plate_multiedit_custom_edit';
}


function dbo_plate_multiedit_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	// if set to throw, free up the slot
	
	/*// get slotid
	$slotid = $DB->GetOne("select sp_psid from smplate where sp_id = :0",array($wheres['sp_id']));
	// update the slot available to Y
	$sql = "update smplateslot set ps_available = :0 where ps_id = :1";
	$ok = $DB->Execute($sql,array('Y',$slotid));*/

	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}
global $USER,$DB;

global $USER;

if($USER->userid != 'admin'){
	$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";
	$dbo->cols['sp_sfid']->option->default = "select sf_id,sf_desc from smshelfsetting where sf_orgid = ".$USER->orgid." order by sf_seq";
	$dbo->cols['sp_cusid']->option->default = 'select cus_id, cus_name from smcustomer where cus_orgid = '.$USER->orgid.' order by cus_id';
}


$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";

# final rendering
$dbo->render();
?>