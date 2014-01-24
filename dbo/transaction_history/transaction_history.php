<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'transaction_history.conf.php');

# customization
function dbo_transaction_history_customize(&$dbo){
	$dbo->searchModifier = 'dbo_transaction_history_custom_search';
}


function dbo_transaction_history_custom_search(&$search){
	$search[0]['col'] = 'smb_pdinchar';
	$search[0]['oper'] = '>=';
	$search[1]['col'] = 'smb_pdinchar';
	$search[1]['oper'] = '<=';
}

global $USER;

if($USER->userid != 'admin'){
	$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";
	$dbo->cols['sp_cusid']->option->default = 'select cus_id, cus_name from smcustomer where cus_orgid = '.$USER->orgid.' order by cus_id';
}
# final rendering
$dbo->render();
?>