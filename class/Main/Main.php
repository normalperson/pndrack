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
	function newcustomer(){
		global $DB;
		extract($_POST);
		$table = "smcustomer";
		$data = array("cus_name" => $companyname,
		              "cus_regno" => (trim($companyregno))==''?null:trim($companyregno),
		              "cus_contactno" => (trim($contactno))==''?null:trim($contactno),
		              "cus_masterid" => (trim($masterid))==''?null:trim($masterid));
		$DB->doInsert($table, $data);
		$cusid = $DB->lastInsertId();

		echo json_encode($cusid);
	}
	function searchplate(){
		global $HTML,$DB;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		
		html_header();
		$dbo = dbo_include('setup_board');

	}
	function createplate(){
		global $HTML,$DB;
		html_header();
		$shelf = $DB->GetArray("select * from smshelfsetting order by sf_seq,sf_code,sf_desc");

		$smarty = $this->initSmarty();
		$smarty->assign('shelf',$shelf);
		$smarty->display('createplate.html');	
		$HTML->addJS('js/js.php?c=Main&js=createplate');
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