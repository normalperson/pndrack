<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

class Main{
	function __construct(){
		
	}
	function initSmarty(){
		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');				
		
		return $smarty;
	}	
	function customer(){
		global $HTML,$DB;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		
		html_header();
		$dbo = dbo_include('setup_customer');

	}
	function board(){
		global $HTML,$DB;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		
		html_header();
		$dbo = dbo_include('setup_board');

	}
	function getCustInfo(){
		global $DB;
		extract($_POST);

		$sql = "select cus_id,cus_name from smcustomer where (cus_name ilike '%'||:0||'%' or cus_regno ilike '%'||:0||'%' or cus_masterid ilike '%'||:0||'%' )";
		$custlist = $DB->GetArray($sql,array($term),PDO::FETCH_ASSOC);

		echo json_encode($custlist);

	}


	
}

?>