<?php
require_once(dirname(__FILE__).'/../../init.inc.php');

class Dashboard{
	function __construct(){
		global $HTML, $GLOBAL, $DB, $USER;
		
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
	function plateSumm(){
		global $DB,$USER,$HTML;

		//print 'orgid = '.$USER->orgid.'<br>'; die();
		$sql = "select count(*) 
				from smshelfsetting
				where sf_orgid = :0";
		$totalshelf = $DB->GetOne($sql,array($USER->orgid));

		$sql = "select COALESCE(sum(case when ps_available = 'Y' then 1 else 0 end),0) availableslot,
		COALESCE(sum(case when ps_available = 'N' then 1 else 0 end),0) totalplate,
		count(*) totalslot
		from smplateslot
		where ps_orgid = :0";
		$summinfo = $DB->GetRow($sql,array($USER->orgid));

		$sql = "select count(*) from smcustomer
				where cus_orgid = :0";
		$totalcust = $DB->GetOne($sql,array($USER->orgid));

		$sql = "select count(*) as printtime, COALESCE(sum(smb_printqty),0) as printqty
			from smbtransaction join smplate on smb_spid = sp_id
			where sp_orgid = :0";

		$plateinfo = $DB->GetRow($sql,array($USER->orgid));

		$smarty = $this->initSmarty();
		$HTML->addJS('js/highchart/highcharts.js');
		html_header();
		$smarty->assign('totalshelf',$totalshelf);
		$smarty->assign('summinfo',$summinfo);
		$smarty->assign('totalcust',$totalcust);
		$smarty->assign('plateinfo',$plateinfo);
		$smarty->display('platesumm.html');	
	}

	
}

$Dashboard = new Dashboard();
?>