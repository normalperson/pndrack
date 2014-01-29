<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
require_once(DOC_DIR.'/inc/pndFunction.php');

class Main{
	function __construct(){
		
	}
	function index(){
		$curdir = dirname(__FILE__);

		if(!isset($_GET['webf']) || empty($_GET['webf'])) return;
		$func = $_GET['webf'];
		if(file_exists($curdir.DS.$func.'.php')){
			include($curdir.DS.$func.'.php');
		}else{
			html_header();
			// echo '<!-- function not found -->';
		}
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
		global $DB,$USER;
		extract($_POST);
		$topOrgID = userTopOrgID();
		$table = "smcustomer";
		$data = array("cus_name" => $companyname,
		              "cus_regno" => (trim($companyregno))==''?null:trim($companyregno),
		              "cus_contactno" => (trim($contactno))==''?null:trim($contactno),
		              "cus_masterid" => (trim($masterid))==''?null:trim($masterid),
		              "cus_orgid" => $topOrgID);
		$DB->doInsert($table, $data);
		$cusid = $DB->lastInsertId();

		echo $cusid;
	}
	function newplate(){
		global $DB,$USER;
		// pass in shelf ID and return the available slot
		extract($_POST);
        // auto allocate slot 
        
		$slotid = $DB->GetOne("select getslot(:0)",array($shelfid));
		$data = array(
			'sp_cusid'      => $custid,
			'sp_sfid'       => $shelfid,
			'sp_psid'       => $slotid,
			'sp_platename'  => (trim($platename))==''?null:trim($platename),
		    'sp_platemodel' => (trim($platemodel))==''?null:trim($platemodel),
		    'sp_createdby'  => $USER->userid,
		    'sp_orgid'      => $USER->orgid
		    );
		$table = 'smplate';
		$DB->doInsert($table, $data);
		$plateid = $DB->lastInsertId();
		// get the location 
		$location = $DB->GetOne("select ps_code from smplateslot where ps_id = :0",array($slotid));

		$result = array( 
				'location'   => $location,
				'createdby'  => $USER->userid
			);

		echo json_encode($result);
	}
	function searchplate(){
		global $HTML,$DB;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		
		html_header();
		$dbo = dbo_include('platelist');

	}
	function createplate(){
		global $HTML,$DB,$USER;
		/*vd($USER);*/
		$HTML->addJS('js/code39.js');
		html_header();
		$shelf = $DB->GetArray("select * from smshelfsetting where sf_orgid = :0 and sf_freeslot = :1 order by sf_seq,sf_code,sf_desc",array($USER->orgid,'Y'));

		$smarty = $this->initSmarty();
		$smarty->assign('shelf',$shelf);
		$smarty->display('createplate.html');	
		$HTML->addJS('js/js.php?c=Main&js=createplate');
	}
/*	function getCustInfo(){
		global $DB;
		extract($_POST);

		$sql = "select cus_id,cus_name from smcustomer where (cus_name ilike '%'||:0||'%' or cus_regno ilike '%'||:0||'%' or cus_masterid ilike '%'||:0||'%' )";
		$custlist = $DB->GetArray($sql,array($term),PDO::FETCH_ASSOC);

		echo json_encode($custlist);

	}*/
	function getCustInfo(){
		global $DB,$USER;
		extract($_POST);
		if (empty($term)) exit ;

		$sql = "select
				*
				from smcustomer
				where cus_orgid = :0 and ( cus_name COLLATE UTF8_GENERAL_CI like concat('%',:1,'%') 
					  or cus_regno COLLATE UTF8_GENERAL_CI like concat( '%',:1,'%' ) )";

		$custInfo = $DB->GetArray($sql,array($USER->orgid,$term));

		// json_encode is available in PHP 5.2 and above, or you can install a PECL module in earlier versions
		echo json_encode($custInfo);

	}
	function getslot(){
		global $DB;

		extract($_POST);
		$sql = "select min(ps_id) from smplateslot where ps_sfid = :0 and ps_available = :1";
		$slotid = $DB->GetOne($sql,array($shelfid,'Y'));  
		$pscode = $DB->GetOne("select ps_code from smplateslot where ps_id = :0",array($slotid));

		echo $pscode;
	}
	function printBarcode(){
		global $DB,$HTML;
		$smarty = $this->initSmarty();
		$HTML->addJS('js/code39.js');

		$plidarr = explode(",",$_GET['plidarr']);

		$plateinfo = array();
		// location, customer name, created by
		$sql = "select ps_code,cus_name,sp_createdby,sp_id from smplate 
				join smcustomer on sp_cusid = cus_id
				join smplateslot on sp_psid = ps_id
				where sp_id = :0";
		foreach($plidarr as $key => $val){
			$plateinfo[] = $DB->GetRow($sql,array($val));
		}
	
		html_header('header.nh.html');
		#vd($shelfinfo);die();
		$totalplate = count($plidarr);
		$smarty->assign('totalplate',$totalplate);
		$smarty->assign('plateinfo',$plateinfo);
 		$smarty->display('printbarcode.html');

	}

	
}

?>