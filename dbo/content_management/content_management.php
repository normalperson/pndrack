<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'content_management.conf.php');
echo "<style>
#dbo_content_management_edittable , #dbo_content_management_newtable {
	width : 80%;
}
#dbo_content_management_edit_ct_content_ifr , #dbo_content_management_new_ct_content_ifr {
	height : 500px !important;
}

</style>";

function content_management_custom_new($table, $cols){
	global $DB, $USER;
	$ret = array();

/*	if ($USER->role == 'employer') {
		$cols['ct_status'] = 'INACTIVE';
		$cols['ct_approval_status'] = 'PENDING';
	}*/
	$cols['ct_created_date'] = $DB->getOne("select now()");
	$cols['ct_created_by'] = $USER->userid;
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


function content_management_custom_edit($table, $cols, $wheres){
	global $DB, $USER;
	$ret = array();
	$sysdate = $DB->getOne("select now()");
	$cols['ct_last_modified_by'] = $USER->userid;
	$cols['ct_last_modified_date'] = $sysdate;
	$exstatus = $DB->GetOne("select ct_status from smcontent where ct_id=:0", array($wheres['ct_id']));
	if ($exstatus != $cols['ct_status']) $cols['ct_last_status_date'] = $sysdate;
	
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

# customization
function content_management_customize(&$dbo){
	$dbo->editModifier = 'content_management_custom_edit';
	$dbo->newModifier = 'content_management_custom_new';

}


# final rendering
$dbo->render();
?>