<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_summbyplate.conf.php');

# customization
function dbo_rpt_summbyplate_customize(&$dbo){
}

global $USER;

if($USER->userid != 'admin'){
	$dbo->sql = "select sum(smb_printqty) as totalqty,count(*) as totalprint, sp_platename
				from smbtransaction join smplate on smb_spid = sp_id
				where sp_orgid = ".$USER->orgid
				." or sp_orgid = ".userTopOrgID()
				." group by sp_platename";
}

# final rendering
$dbo->render();
?>