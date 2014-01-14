<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'init.inc.php');
function html_header($headerTemplate='header.html', $showAutoTime = true){
	global $HTML, $THEME, $DB, $USER;
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
		$HTML->addCSS('css/'.$THEME.'/custom.css');
		$HTML->addCSS('css/bootstrap/css/bootstrap.css');
		$HTML->addCSS('css/bootstrap/css/bootstrap-theme.css');
		$HTML->addCSS('css/'.$THEME.'/custom.css');
		$HTML->smarty->assign('Menu', $Menu);
		$HTML->smarty->assign('ShowAutoTime', $showAutoTime);
		$HTML->smarty->assign('APP', APP);
		
		# pndrack package expiring
		$expiring = '';
		$cnt = $DB->getOne("select count(*) from fcuserorgrole where uor_usrid = :0 and uor_rolid in (1, 2)", array($USER->userid));
		if(!$cnt){
			require_once(DOC_DIR.'/inc/pndFunction.php');
			$toporgID = userTopOrgID();
			$rs = $DB->getArray("select op_id, op_startdate, op_enddate from smorgpackage where op_orgid = :0 and op_status = 1 and (('".date('Y-m-d')."' between op_startdate and op_enddate) or (op_startdate >= '".date('Y-m-d')."')) order by op_startdate asc", array($toporgID));
			if(!$rs){
				die('Invalid access. Package expired.');
			}
			$starttime = strtotime($rs[0]['op_startdate']);			
			$maxendtime = $endtime = strtotime($rs[0]['op_enddate']);
			$nowtime = strtotime(date('Y-m-d'));
			if($nowtime < $starttime){
				die('Invalid access. Package expired.');
			}
			for($i=1;$i<count($rs);$i++){
				if(strtotime($rs[$i]['op_startdate'])==$maxendtime+86400){
					$maxendtime = strtotime($rs[$i]['op_enddate']);
				}
			}
			$timeleft = $maxendtime - $nowtime;
			$dayleft = $timeleft/86400;
			$daycheck = 10;
			$rs = $DB->getOne("select set_val from fcsetting where set_code = 'PNDEXPIRYDAYS'");
			if($rs!==false) $daycheck = $rs;
			if($dayleft==0){
				$expiring = 'Package is expiring today';
			}else if($dayleft<=$daycheck){
				$expiring = 'Package is expiring in '.$dayleft.' days';
			}
			// $expiring = date('Y-m-d', $maxendtime);
		}		
		$HTML->smarty->assign('expiring', $expiring);
		
		$HTML->genHeader($headerTemplate);
	}
}
?>