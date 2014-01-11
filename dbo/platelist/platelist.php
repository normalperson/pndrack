<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'platelist.conf.php');

$dbo->editModifier = 'dbo_platelist_custom_edit';
function dbo_platelist_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	/*$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}*/
	return $ret;
}

# customization
function platelist_customize(&$dbo){
}
global $USER;

$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";
$dbo->cols['sf_id']->option->default = 'select sf_id,sf_desc from smshelfsetting where sf_orgid = '.$USER->orgid.' order by sf_seq';
$dbo->cols['cus_id']->option->default = 'select cus_id, cus_name from smcustomer where cus_orgid = '.$USER->orgid.' order by cus_id';



# final rendering
$dbo->render();
?>