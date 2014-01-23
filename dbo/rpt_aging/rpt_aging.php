<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'rpt_aging.conf.php');

# customization
function dbo_rpt_aging_customize(&$dbo){
	global $USER;

	if($USER->userid != 'admin'){
		$dbo->sql = "select sp_id,cus_masterid, cus_name, sp_platename, sp_platemodel, ps_code,sf_id,sp_orgid,
					DATEDIFF(curdate(),maxdate) as daydiff, maxdate as lastprintdate
					from smplate 
					join vw_agingtransaction on sp_id = smb_spid
					join smplateslot on sp_psid = ps_id
					join smcustomer on sp_cusid = cus_id
					join smshelfsetting on sp_sfid = sf_id
					join smshelfgroup on sf_sgid = sg_id
					where sp_orgid = ".$USER->orgid
									." or sp_orgid = ".userTopOrgID();
	}
}



# final rendering
$dbo->render();
?>