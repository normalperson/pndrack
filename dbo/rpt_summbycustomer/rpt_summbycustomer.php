<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_summbycustomer.conf.php');

# customization
function dbo_rpt_summbycustomer_customize(&$dbo){
}

global $USER;

if($USER->userid != 'admin'){
	$dbo->sql = "select sum(smb_printqty) as totalqty,count(*) as totalprint, cus_name
from smbtransaction join smplate on smb_spid = sp_id
join smcustomer on sp_cusid = cus_id
where sp_orgid = ".$USER->orgid
				." or sp_orgid = ".userTopOrgID()
." group by cus_name";
}



# final rendering
$dbo->render();
?>