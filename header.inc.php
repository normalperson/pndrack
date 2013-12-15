<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'init.inc.php');
function html_header($headerTemplate='header.html', $showAutoTime = true){
	global $HTML,$THEME;
	if($HTML->smarty){
		require_once('inc/VMenu.inc.php');
		$Menu = new VMenu();
		$HTML->addJS('js/jquery-1.10.0.js');
		$HTML->addJS('js/jquery-ui-1.10.3.custom.js');
		$HTML->addJS('js/jquery.validate.js');
		$HTML->addJS('js/accounting.js');
		$HTML->addJS('js/popup.js');
		$HTML->addJS('js/bootstrap.js');
		$HTML->addCSS('css/'.$THEME.'/jquery-ui-1.10.3.custom.css');
		$HTML->addCSS('css/'.$THEME.'/jquery.ui.custom.css');
		$HTML->addCSS('css/'.$THEME.'/headermenu.css');		
		$HTML->addCSS('css/'.$THEME.'/jquery-ui-timepicker-addon.css');
		$HTML->addCSS('css/'.$THEME.'/dbo.css');
		$HTML->addCSS('css/bootstrap/css/bootstrap.css');
		$HTML->addCSS('css/bootstrap/css/bootstrap-theme.css');
		$HTML->addCSS('css/'.$THEME.'/custom.css');
		$HTML->smarty->assign('Menu', $Menu);
		$HTML->smarty->assign('ShowAutoTime', $showAutoTime);
		$HTML->smarty->assign('APP', APP);
		$HTML->genHeader($headerTemplate);
	}
}
?>