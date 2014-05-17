<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
require_once(dirname(__FILE__).'/../../inc/generalFunc.php');
require_once(CORE_DIR.DS.'inc'.DS.'dompdf'.DS.'dompdf_config.inc.php');

class Setting{
	function __construct(){
		/* global $HTML, $GLOBAL, $DB, $USER;
		$curdir = dirname(__FILE__);

		if(!isset($_GET['webf']) || empty($_GET['webf'])) return;
		$func = $_GET['webf'];
		if(file_exists($curdir.DS.$func.'.php')){
			include($curdir.DS.$func.'.php');
		}else{
			//html_header();
			// echo '<!-- function not found -->';
		} */		
	}
	function datamapping(){
		$tablearr = array('smcustomer','smplate');

		$custmapping = array('cus_name' => 'Customer name',
			                 'cus_regno' => 'Customer registration number',
			                 'cus_masterid' => 'Customer masterID',
			                 'cus_contactno' => 'Customer contact number');

		$platemapping = array('sp_platename' => 'Plate name',
			                  'sp_platemodel' => 'Plate model',
			                  'sp_plateinfo' => 'Plate info');

		$colmapping = array('custmapping' => $custmapping, 'platemapping' => $platemapping);

		$datamapping = array('table' => $tablearr, 'colmapping' => $colmapping);

		return $datamapping;
	}
	function procesdata($excelobj){
		global $USER,$DB;
		// get mapping data
		$datamapping = $this->datamapping();

		// map into customer table		
		$custmapping = $datamapping['colmapping']['custmapping']; // get customer mapping array
		$platemapping = $datamapping['colmapping']['platemapping']; // get plate mapping array
		//loop
		$data = $excelobj->genData();
		$header = $excelobj->genColKey();
		vd($header);
		 
		vd($data);
		foreach ($data as $key => $value) {
			// search customer name
			# code...
			$custdata = array(); // construct customer data
			foreach ($custmapping as $custkey => $custvalue) {
				$valuekey = array_search($custvalue, $header);
				$custdata =  associative_push($custdata, array($custkey => $value[$valuekey]));
			}
			// do a search 
			$sql = "select cus_id,cus_name from smcustomer
					where cus_name = :0
					and cus_orgid = :1";
			$cusdata = $DB->GetRow($sql,array($custdata['cus_name'],$USER->orgid), PDO::FETCH_ASSOC);
			// no data do insert
			if(count($cusdata) == 0){
				$ok = $DB->doInsert('smcustomer',$custdata);
				$custid = $DB->lastInsertId(); // get the customerID
			}else{
				$custid = $cusdata['cus_id']; // get the customerID
			}

			$platedata = array(); // construct plate data
			foreach ($platemapping as $plkey => $plvalue) {
				$valuekey = array_search($plvalue, $header);
				$platedata =  associative_push($platedata, array($plkey => $value[$valuekey]));
			}
			vd('plate data');
			vd($platedata);
			// insert plate info
			
			// ignore shelf part first?

			// validate plate name???
			$sql = "select count(*) from smplate
					where sp_platename = :0
					and sp_orgid = :1";			
			$platecnt = $DB->GetOne($sql,array($platedata['sp_platename'],$USER->orgid), PDO::FETCH_ASSOC);
			$data[$key]['error'] = '';
			if($platecnt == 0){
				$platedata =  associative_push($platedata, array('sp_cusid' => $custid));
				$ok = $DB->doInsert('smplate',$platedata);
				if(!$ok) $data[$key]['error'] = $DB->lastError;
			}else{
				 $data[$key]['error'] = 'Data failed to insert due to duplicated plate name';
			}

			// error handling
			if($data[$key]['error'] == ''){
				// insert into smimport table
			}


		}

	}
	function impExcelData(){	
		global $DB,$LABEL,$USER;
		
		require_once(dirname(__FILE__).'/../../inc/ExcelUpload.php');

		header( 'Cache-Control: no-store, no-cache, must-revalidate' ); 
		header( 'Cache-Control: post-check=0, pre-check=0', false ); 
		header( 'Pragma: no-cache' ); 
		set_time_limit(0);

		// file type and extentsion array
		$arrayZips = array("application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	    $arrayExtensions = array(".xls", ".xlsx");
	    vd($_FILES);
	    // file type validation
	    if($_FILES){
	    	$extension = (false === $pos = strrpos($_FILES['file']['name'], '.')) ? '' : substr($_FILES['file']['name'], $pos);
	    	if ($_FILES["file"]["error"] > 0 || 
	    		!in_array($extension, $arrayExtensions) ||
	    		!in_array($_FILES["file"]["type"], $arrayZips)) 
	    	{
				echo 'INVALID FILE TYPE OR FORMAT. ONLY ACCEPT .xls or .xlsx';
				return ;	
			}
	    }
		$inputFileName = $_FILES["file"]["tmp_name"];

		// take off the . for the extension
		$extension =  substr($extension, 1);
		$upExcel = new phi_ExcelUpload($inputFileName, $extension);
		$this->procesdata($upExcel);
		echo 'haha';
	
	}
	function importdata(){

		
		html_header();
		$dbo = dbo_include('importdata');


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
	function gensetting(){
		global $HTML,$DB;
		$HTML->showPageTime = false;

		$smarty = new Smarty();
		$smarty->caching = false;
		// $smarty->debugging = true;
		$smarty->setTemplateDir(DOC_DIR.DS.'smarty'.DS.'templates');
		$smarty->setCompileDir(DOC_DIR.DS.'smarty'.DS.'templates_c');
		$smarty->setCacheDir(DOC_DIR.DS.'smarty'.DS.'cache');
		$smarty->setConfigDir(DOC_DIR.DS.'smarty'.DS.'configs');
			
		html_header();

		// get default check in time
		$sessiontime = $DB->GetOne("select set_val from fcsetting where set_code = :0",array('MAXLIFETIME'));
		$langselected = $DB->GetOne("select set_val from fcsetting where set_code = :0",array('LANG'));
		$themeselected = $DB->GetOne("select set_val from fcsetting where set_code = :0",array('THEME'));
		// get the theme option
		$themeoption = $DB->GetArray("select lu_code,lu_title from fclookup where lu_cat = :0",array('THEME'));
		$langoption = $DB->GetArray("select lu_code,lu_title from fclookup where lu_cat = :0",array('LANGUAGE'));

		$smarty->assign('sessiontime',$sessiontime);
		$smarty->assign('themeoption',$themeoption);
		$smarty->assign('langoption',$langoption);
		$smarty->assign('langselected',$langselected);
		$smarty->assign('themeselected',$themeselected);
		$smarty->display('gensetting.html');
		$HTML->addJS('js/js.php?c=Setting&js=gensetting');
	}	

	function shelfSetting(){
		global $HTML,$DB;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		
		html_header();
		$dbo = dbo_include('setup_shelf');
	}
	function samplemenu(){
		global $HTML,$DB;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		
		html_header();
		$dbo = dbo_include('daniel');
	}
	function shelfGroupSetting(){
		global $HTML;
		$HTML->addJS('js/js.php?c=DBO&js=DBO');
		html_header();
		$dbo = dbo_include('setup_shelfgroup');
	}
	function corgsetup(){
		html_header();
		$dbo = dbo_include('clientorg');
	}
	function updSetting(){
		global $DB;


		extract($_POST);
		$themecol = array('set_val' => $theme, 'set_description' => $themetitle);
		$langcol = array('set_val' => $language, 'set_description' => $languagetitle);
		$sessioncol = array('set_val' => $sessiontime);
		$checkincol = array('set_val' => $checkintime);
		$checkoutcol = array('set_val' => $checkouttime);
		$eicharge = array('set_val' => $eicharge);
		$locharge = array('set_val' => $locharge);

    	$ok = $DB->doUpdate("fcsetting",$themecol, array("set_code"=>'THEME'));
		$ok = $DB->doUpdate("fcsetting",$langcol, array("set_code"=>'LANG'));
		$ok = $DB->doUpdate("fcsetting",$sessioncol, array("set_code"=>'MAXLIFETIME'));
		$ok = $DB->doUpdate("fcsetting",$checkincol, array("set_code"=>'DEFCHECKIN'));
		$ok = $DB->doUpdate("fcsetting",$checkoutcol, array("set_code"=>'DEFCHECKOUT'));
		$ok = $DB->doUpdate("fcsetting",$eicharge, array("set_code"=>'EICHARGE'));
		$ok = $DB->doUpdate("fcsetting",$locharge, array("set_code"=>'LOCHARGE'));

	}
	function resetDefault(){
		global $DB;

		$DB->Execute("select resetfcsetting()");
		
	}
	function usersetup(){
		global $HTML;
		html_header();
		$dbo = dbo_include('user');
	}
	function rolesetup(){
		global $HTML;
		html_header();
		$dbo = dbo_include('role');
	}
	function permissionsetup(){
		global $HTML;
		html_header();
		$dbo = dbo_include('permission');
	}
	function menusetup(){
		global $HTML;
		html_header();
		$dbo = dbo_include('menu');	
	}
	function printShelfLabel(){
		global $DB,$HTML;
		$HTML->showPageTime = false;
		$smarty = $this->initSmarty();

		$sfidarr = explode(",",$_GET['sfiarr']);

		$result = array();

		foreach($sfidarr as $key => $val){
			$shelfinfo[] = $DB->GetRow("Select * from smshelfsetting where sf_id = :0",array($val));
		}
		foreach($shelfinfo as $key => $val){
			$shelfinfo[$key]['slotinfo'] = $DB->GetArray("Select * from smplateslot where ps_sfid = :0",array($val['sf_id']));
		}
	
		html_header('header.nh.html');
		#vd($shelfinfo);die();
		$smarty->assign('shelfinfo',$shelfinfo);
 		$smarty->display('printlabel.html');

	}
	function democustdata(){
		global $HTML;
		html_header();
		$dbo = dbo_include('demo_customerdata');	
	}
	function contentmanagement(){
		global $HTML, $DB;
		html_header();		
		$dbo = dbo_include('content_management');
	}
	function getrole(){
		global $DB;
		$rolepermarr = $DB->GetArray("select rp_pmscode from fcroleperm join fcrole on rp_rolid = rol_id where rol_id = :0",array($_POST['rolid']));
		echo json_encode($rolepermarr);
	}
	
}

$Setting = new Setting();
?>