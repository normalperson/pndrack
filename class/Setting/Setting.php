<?php
require_once(dirname(__FILE__).'/../../init.inc.php');
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
	function printShelfLabel(){
		global $DB;
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
	
}

$Setting = new Setting();
?>