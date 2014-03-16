<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_customer.conf.php');
require_once(DOC_DIR.'/inc/pndFunction.php');
// vd(userTopOrgID());

# customization
$topOrgID = userTopOrgID();
/*vd($topOrgID);*/
$dbo->whereSQL = "cus_orgid = ".($topOrgID?$topOrgID:0);

$dbo->newModifier = 'setup_customer_custom_new';
function setup_customer_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$cols['cus_orgid'] = userTopOrgID();
	// add validation if same customer name or master ID
	$cnt = $DB->GetOne("select count(*) from smcustomer
						where cus_name = :0
						and cus_orgid = :1",array($cols['cus_name'],userTopOrgID()));
	if($cnt > 0) $ret[] = 'Duplicate customer name found. Please enter other name';
	$cnt = $DB->GetOne("select count(*) from smcustomer
						where cus_regno = :0
						and cus_orgid = :1",array($cols['cus_regno'],userTopOrgID()));
	if($cnt > 0) $ret[] = 'Duplicate customer registration number found. Please enter other customer registration number';
	$cnt = $DB->GetOne("select count(*) from smcustomer
						where cus_masterid = :0
						and cus_orgid = :1",array($cols['cus_masterid'],userTopOrgID()));
	if($cnt > 0) $ret[] = 'Duplicate customer master ID found. Please enter other customer master id';	

	if(count($ret) > 0) return $ret;

	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


$dbo->deleteModifier = 'dbo_setup_customer_custom_delete';
function dbo_setup_customer_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$cusid = $wheres['cus_id'];
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		// get all the plate under this custmer
		$platearr = $DB->GetArray("select * from smplate where sp_cusid = :0",array($cusid));
		// loop all the plate slot
		foreach($platearr as $plateinfo){
			$sql = "update smplateslot set ps_available = :0 where ps_id = :1";
			$ok = $DB->Execute($sql,array('Y', $plateinfo['sp_psid']));
		}

		$sql = "delete from smplate where sp_cusid = :0";
		$ok = $DB->Execute($sql,array($cusid));
	}

	return $ret;
}

# final rendering
$dbo->render();
?>