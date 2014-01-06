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


# final rendering
$dbo->render();
?>