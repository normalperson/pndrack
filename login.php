<?php
define('ANONYMOUS', true);
define('LOGINPAGE', true);
require_once(dirname(__FILE__).'/init.inc.php');
$loginMessage = '';
if(!empty($_POST['username'])){
	$ok = $User->login($_POST['username'], $_POST['password']);
	if($ok){
		$url = isset($GLOBAL['urlbeforelogin'])&&!empty($GLOBAL['urlbeforelogin'])?$GLOBAL['urlbeforelogin']:'index.php';
		redirect($url);
	}else{
		$loginMessage = $User->loginFailMessage;
	}
}else if(!empty($_POST['mulsess'])){
	$User->chooseSession($_POST['mulsess']);
}else if(isset($_GET['logout'])){
	$User->logout();
}else if(isset($_GET['forgot'])){
	$User->loginForm = 'forgot.html';
	if(!empty($_POST['forgotemail'])){
		$userid = $DB->getOne("select usr_userid from ".$DB->prefix."user where usr_email = :0", array($_POST['forgotemail']));
		if($userid){
			$newpassword = randomString(8);
			$DB->execute("update ".$DB->prefix."user set usr_password = :0 where usr_userid = :1", array($User->genPassword($newpassword), $userid));
			mail($_POST['forgotemail'], "New password for PND", "New password : ".$newpassword, "From: pndhelpdesk@pnd.com");
			// pr(array($_POST['forgotemail'], "New password for PND", "New password : ".$newpassword));
			$loginMessage = 'Password reset. Please check email for new password.';
		}else{
			$loginMessage = 'User not found!';
		}
	}
}
$User->smarty->assign('loginMessage', $loginMessage);

// html_header();
// read login message from C:\vpos\smarty\template\loginMessage.txt
$filename = dirname(__FILE__)."/smarty/templates/loginMessage.txt";
$handle = fopen($filename, "r");
$contents = fread($handle, filesize($filename));
fclose($handle);

$User->smarty->assign('year', date('Y'));
$User->smarty->assign('contents', $contents);
$User->smarty->assign('APP', APP);
$User->smarty->display($User->loginForm);

function login_extra_check($userid){
	global $DB;
	require_once(DOC_DIR.DS.'inc'.DS.'pndFunction.php');
	$rs = $DB->getArray("select uor_orgid, rol_id from ".$DB->prefix."user join ".$DB->prefix."userorgrole on usr_userid = uor_usrid join fcrole on uor_rolid = rol_id where usr_userid = :0 order by uor_seq asc", array($userid));
	foreach($rs as $no=>$row){
		if($no==0){
			$orgID = $row['uor_orgid'];
		}
		# pndrack, if is admin or pndadmin, no need check package
		if(in_array($row['rol_id'], array(1, 2))){
			return true;
		}
	}
	$topOrgID = orgTopOrgID($orgID);
	$cnt = $DB->getOne("select count(*) from smorgpackage where op_orgid = :0 and op_status = 1 and '".date('Y-m-d')."' between op_startdate and op_enddate", array($topOrgID));
	if(!$cnt)
		return 'Package expired';
}
?>