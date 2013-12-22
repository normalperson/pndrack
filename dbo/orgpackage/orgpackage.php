<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'orgpackage.conf.php');

# customization
function dbo_orgpackage_customize(&$dbo){
	$dbo->newModifier = 'dbo_orgpackage_custom_new';
}

function dbo_orgpackage_custom_new($table, $cols){
	global $DB, $toporgID, $USER;
	$ret = array();
	$cols['op_orgid'] = $toporgID;
	$cols['op_createby'] = $USER->userid;
	$cols['op_created'] = date('Y-m-d H:i:s');
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


# final rendering
$dbo->render();
?>