<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'profile.conf.php');

# customization
function dbo_profile_customize(&$dbo){
	global $GLOBAL;
	$dbo->state = 'edit';
	$dbo->editModifier = 'dbo_profile_custom_edit';
}

function dbo_profile_custom_edit($table, $cols, $wheres){
	global $DB, $USER;
	$passOK = $DB->getOne("select count(*) from ".$DB->prefix."user where usr_userid = :0 and usr_password = :1", array($USER->userid, User::genPassword($cols['currpass'])));
	if(!$passOK){
		return array('Invalid Password!');
	}
	if(isset($cols['pass1']) && !empty($cols['pass1'])){
		if($cols['pass1']!=$cols['pass2']){
			return array('Password do not match!');
		}
		$cols['usr_password'] = User::genPassword($cols['pass1']);
	}
	foreach(array('currpass', 'pass1', 'pass2') as $col){
		if(array_key_exists($col, $cols)) unset($cols[$col]);
	}
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


# final rendering
$dbo->render();
?>