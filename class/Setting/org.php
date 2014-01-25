<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
require_once(DOC_DIR.'/inc/pndFunction.php');
html_header();

$dbo = dbo_include('setup_org');

if(in_array($dbo->state, array('detail', 'edit'))){
	global $toporgID, $GLOBAL;
	$toporgID = orgTopOrgID($GLOBAL[DBOSESS]['setup_org']['lastid']['org_id']);
	include(DOC_DIR.'/dbo/orgpackage/orgpackage.php');
}
?>