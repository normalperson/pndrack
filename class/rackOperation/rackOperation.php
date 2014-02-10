<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

class rackOperation{
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
	function checkinout(){
		global $HTML;

		$smarty = $this->initSmarty();
		html_header();
		$smarty->display('checkinout.html');
		$HTML->addJS('js/js.php?c=rackOperation&js=checkinout.js');

	}
	function stockcount(){
		global $HTML;

		#$smarty = $this->initSmarty();
		html_header();
		$dbo = dbo_include('plate_multiedit');

	}
	function getPlateInfo(){
		global $DB,$USER;
		extract($_POST);
		if (empty($term)) exit ;
		// search the plate under this customer
		$sql = "select sp_id,sp_platename from smplate
				where sp_orgid = :0 and sp_platename  COLLATE UTF8_GENERAL_CI like concat('%',:1,'%')";
		
		$plateinfo = $DB->GetArray($sql,array($USER->orgid,$term),PDO::FETCH_ASSOC);

		// json_encode is available in PHP 5.2 and above, or you can install a PECL module in earlier versions
		echo json_encode($plateinfo);

	}
	function selectPlateInfo(){
		global $DB;
		extract($_POST);

		$ret = array();
		$sql = "select cus_name, sp_platename, date_format(sp_createddate, '%d-%M-%Y')  as createddate,
					   ps_code, sf_desc,sp_id,sp_plateinfo
		        from smplate 
		        join smcustomer on sp_cusid = cus_id 
		        join smplateslot on sp_psid = ps_id 
		        join smshelfsetting on sp_sfid = sf_id
		        where sp_id = :0";
		$selplateinfo = $DB->GetArray($sql,array($plateid),PDO::FETCH_ASSOC);
		// get total printed copy, last printed date and total printed time

		$sql = "select count(*) as totalprint, max(smb_printdate) as lastprinteddate,
		       sum(smb_printqty) as totalqty
			   from smbtransaction where smb_spid = :0";
		$tranSumm = $DB->GetArray($sql,array($plateid),PDO::FETCH_ASSOC);

		$ret = array_merge($ret, array('plateinfo' =>$selplateinfo, 'tranSumm' =>$tranSumm));
/*		$ret = array_merge($ret, $selplateinfo);
		$ret = array_merge($ret, $tranSumm);
*/		

		echo json_encode($ret);

	}
	function addTransaction(){
		global $DB;
		extract($_POST);

		$DB->showsql = true;
		$data = array(
			'smb_printdate' => $DB->GetOne('select now()'),
			'smb_printqty' => (trim($printqty))==''?null:trim($printqty),
			'smb_remark' => (trim($remark))==''?null:trim($remark),
			'smb_spid'  => $plateid
		);

		$ok = $DB->doInsert('smbtransaction', $data);

		echo $ok;
	}
	function barcodescan(){
		global $DB,$USER;

		extract($_POST);
		$sql = "select sp_id from smplate join smplateslot on sp_psid = ps_id
				where ps_code = :0 and ps_orgid = :1";
		$plateid = $DB->GetOne($sql,array($barcode,$USER->orgid));

		echo $plateid;
	}
	function transactionhistory(){
		html_header();
		$dbo = dbo_include('transaction_history');
	}
	function showPlateHistory(){
		global $HTML;

		$HTML->showPageTime = false;
		html_header('iframeheader.html');
		$dbo = dbo_include('plate_audit');

	}
	

	
}

?>