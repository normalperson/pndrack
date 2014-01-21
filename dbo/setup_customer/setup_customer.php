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