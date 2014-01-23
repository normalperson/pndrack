<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_summbyplate.conf.php');

# customization
function dbo_rpt_summbyplate_customize(&$dbo){
	$dbo->searchModifier = 'dbo_rpt_summbyplate_custom_search';

}

function dbo_rpt_summbyplate_custom_search(&$search){
	$search[0]['col'] = 'smb_pdinchar';
	$search[0]['oper'] = '>=';
	$search[1]['col'] = 'smb_pdinchar';
	$search[1]['oper'] = '<=';
}



global $USER;

if($USER->userid != 'admin'){
	$dbo->sql = "select sum(smb_printqty) as totalqty,count(*) as totalprint, sp_platename,
	            round(sum(smb_printqty)/count(*),2) as ratio, '' datefrom, '' dateto,smb_pdinchar
				from smbtransaction join smplate on smb_spid = sp_id
				where sp_orgid = ".$USER->orgid
				." or sp_orgid = ".userTopOrgID()
				." group by sp_platename,smb_pdinchar";
}

# final rendering
$dbo->render();
?>