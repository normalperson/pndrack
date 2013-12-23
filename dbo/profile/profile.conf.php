<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'profile';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fcuser';
$dbo->key = array('usr_userid');
$dbo->sql = 'select *, \'\' as currpass, \'\' as pass1, \'\' as pass2 from fcuser where usr_userid = \'{$USER->userid}\'';
$dbo->col = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status', 'currpass', 'pass1', 'pass2');
$dbo->colList = array('usr_userid', 'usr_name', 'usr_email', 'usr_created');
$dbo->colDetail = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status');
$dbo->colNew = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status');
$dbo->colEdit = array('usr_name', 'usr_email', 'currpass', 'pass1', 'pass2');
$dbo->colSearch = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status');
$dbo->colExport = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status');
$dbo->colSort = array();
$dbo->canSearch = false;
$dbo->canNew = false;
$dbo->canEdit = true;
$dbo->canDelete = false;
$dbo->canDetail = false;
$dbo->canListEdit = false;
$dbo->canListNew = false;
$dbo->canNewGroup = array();
$dbo->canEditGroup = array();
$dbo->canDeleteGroup = array();
$dbo->showSearch = true;
$dbo->editModifier = 'dbo_profile_custom_edit';
$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->theme = 'skyblue';
$dbo->layout = 'One';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 10;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'EN-US';
$dbo->render = array();
$dbo->detailBack = 'Back';
$dbo->listEditSubmit = 'Submit';

$dbo->cols['usr_userid'] = new DBO_COL('usr_userid', 'VAR_STRING', '150', '0');
$dbo->cols['usr_userid']->inputTypeDefault = 'text';
$dbo->cols['usr_userid']->searchMode = 'exact';
$dbo->cols['usr_userid']->capContClassDefault = array();
$dbo->cols['usr_userid']->valContClassDefault = array();
$dbo->cols['usr_userid']->option->defaultMethod = 'text';
$dbo->cols['usr_userid']->option->searchMethod = 'text';
$dbo->cols['usr_userid']->option->listMethod = 'text';
$dbo->cols['usr_userid']->option->detailMethod = 'text';
$dbo->cols['usr_userid']->option->newMethod = 'text';
$dbo->cols['usr_userid']->option->editMethod = 'text';
$dbo->cols['usr_password'] = new DBO_COL('usr_password', 'VAR_STRING', '150', '0');
$dbo->cols['usr_password']->defaultEditValueMethod = 'text';
$dbo->cols['usr_password']->defaultEditValue = ' ';
$dbo->cols['usr_password']->inputTypeDefault = 'password';
$dbo->cols['usr_password']->searchMode = 'exact';
$dbo->cols['usr_password']->capContClassDefault = array();
$dbo->cols['usr_password']->valContClassDefault = array();
$dbo->cols['usr_password']->option->defaultMethod = 'text';
$dbo->cols['usr_password']->option->searchMethod = 'text';
$dbo->cols['usr_password']->option->listMethod = 'text';
$dbo->cols['usr_password']->option->detailMethod = 'text';
$dbo->cols['usr_password']->option->newMethod = 'text';
$dbo->cols['usr_password']->option->editMethod = 'text';
$dbo->cols['usr_created'] = new DBO_COL('usr_created', 'TIMESTAMP', '19', '0');
$dbo->cols['usr_created']->inputTypeDefault = 'text';
$dbo->cols['usr_created']->searchMode = 'exact';
$dbo->cols['usr_created']->capContClassDefault = array();
$dbo->cols['usr_created']->valContClassDefault = array();
$dbo->cols['usr_created']->option->defaultMethod = 'text';
$dbo->cols['usr_created']->option->searchMethod = 'text';
$dbo->cols['usr_created']->option->listMethod = 'text';
$dbo->cols['usr_created']->option->detailMethod = 'text';
$dbo->cols['usr_created']->option->newMethod = 'text';
$dbo->cols['usr_created']->option->editMethod = 'text';
$dbo->cols['usr_name'] = new DBO_COL('usr_name', 'VAR_STRING', '300', '0');
$dbo->cols['usr_name']->inputTypeDefault = 'text';
$dbo->cols['usr_name']->searchMode = 'exact';
$dbo->cols['usr_name']->capContClassDefault = array();
$dbo->cols['usr_name']->valContClassDefault = array();
$dbo->cols['usr_name']->option->defaultMethod = 'text';
$dbo->cols['usr_name']->option->searchMethod = 'text';
$dbo->cols['usr_name']->option->listMethod = 'text';
$dbo->cols['usr_name']->option->detailMethod = 'text';
$dbo->cols['usr_name']->option->newMethod = 'text';
$dbo->cols['usr_name']->option->editMethod = 'text';
$dbo->cols['usr_email'] = new DBO_COL('usr_email', 'VAR_STRING', '150', '0');
$dbo->cols['usr_email']->inputTypeDefault = 'text';
$dbo->cols['usr_email']->searchMode = 'exact';
$dbo->cols['usr_email']->capContClassDefault = array();
$dbo->cols['usr_email']->valContClassDefault = array();
$dbo->cols['usr_email']->option->defaultMethod = 'text';
$dbo->cols['usr_email']->option->searchMethod = 'text';
$dbo->cols['usr_email']->option->listMethod = 'text';
$dbo->cols['usr_email']->option->detailMethod = 'text';
$dbo->cols['usr_email']->option->newMethod = 'text';
$dbo->cols['usr_email']->option->editMethod = 'text';
$dbo->cols['usr_last_active'] = new DBO_COL('usr_last_active', 'TIMESTAMP', '19', '0');
$dbo->cols['usr_last_active']->inputTypeDefault = 'text';
$dbo->cols['usr_last_active']->searchMode = 'exact';
$dbo->cols['usr_last_active']->capContClassDefault = array();
$dbo->cols['usr_last_active']->valContClassDefault = array();
$dbo->cols['usr_last_active']->option->defaultMethod = 'text';
$dbo->cols['usr_last_active']->option->searchMethod = 'text';
$dbo->cols['usr_last_active']->option->listMethod = 'text';
$dbo->cols['usr_last_active']->option->detailMethod = 'text';
$dbo->cols['usr_last_active']->option->newMethod = 'text';
$dbo->cols['usr_last_active']->option->editMethod = 'text';
$dbo->cols['usr_last_success_login'] = new DBO_COL('usr_last_success_login', 'TIMESTAMP', '19', '0');
$dbo->cols['usr_last_success_login']->inputTypeDefault = 'text';
$dbo->cols['usr_last_success_login']->searchMode = 'exact';
$dbo->cols['usr_last_success_login']->capContClassDefault = array();
$dbo->cols['usr_last_success_login']->valContClassDefault = array();
$dbo->cols['usr_last_success_login']->option->defaultMethod = 'text';
$dbo->cols['usr_last_success_login']->option->searchMethod = 'text';
$dbo->cols['usr_last_success_login']->option->listMethod = 'text';
$dbo->cols['usr_last_success_login']->option->detailMethod = 'text';
$dbo->cols['usr_last_success_login']->option->newMethod = 'text';
$dbo->cols['usr_last_success_login']->option->editMethod = 'text';
$dbo->cols['usr_last_fail_login'] = new DBO_COL('usr_last_fail_login', 'TIMESTAMP', '19', '0');
$dbo->cols['usr_last_fail_login']->inputTypeDefault = 'text';
$dbo->cols['usr_last_fail_login']->searchMode = 'exact';
$dbo->cols['usr_last_fail_login']->capContClassDefault = array();
$dbo->cols['usr_last_fail_login']->valContClassDefault = array();
$dbo->cols['usr_last_fail_login']->option->defaultMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->searchMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->listMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->detailMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->newMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->editMethod = 'text';
$dbo->cols['usr_group'] = new DBO_COL('usr_group', 'VAR_STRING', '3000', '0');
$dbo->cols['usr_group']->inputTypeDefault = 'text';
$dbo->cols['usr_group']->searchMode = 'exact';
$dbo->cols['usr_group']->capContClassDefault = array();
$dbo->cols['usr_group']->valContClassDefault = array();
$dbo->cols['usr_group']->option->defaultMethod = 'text';
$dbo->cols['usr_group']->option->searchMethod = 'text';
$dbo->cols['usr_group']->option->listMethod = 'text';
$dbo->cols['usr_group']->option->detailMethod = 'text';
$dbo->cols['usr_group']->option->newMethod = 'text';
$dbo->cols['usr_group']->option->editMethod = 'text';
$dbo->cols['usr_sessiondata'] = new DBO_COL('usr_sessiondata', 'BLOB', '-1', '0');
$dbo->cols['usr_sessiondata']->inputTypeDefault = 'text';
$dbo->cols['usr_sessiondata']->searchMode = 'exact';
$dbo->cols['usr_sessiondata']->capContClassDefault = array();
$dbo->cols['usr_sessiondata']->valContClassDefault = array();
$dbo->cols['usr_sessiondata']->option->defaultMethod = 'text';
$dbo->cols['usr_sessiondata']->option->searchMethod = 'text';
$dbo->cols['usr_sessiondata']->option->listMethod = 'text';
$dbo->cols['usr_sessiondata']->option->detailMethod = 'text';
$dbo->cols['usr_sessiondata']->option->newMethod = 'text';
$dbo->cols['usr_sessiondata']->option->editMethod = 'text';
$dbo->cols['usr_langid'] = new DBO_COL('usr_langid', 'LONG', '11', '0');
$dbo->cols['usr_langid']->inputTypeDefault = 'text';
$dbo->cols['usr_langid']->searchMode = 'exact';
$dbo->cols['usr_langid']->capContClassDefault = array();
$dbo->cols['usr_langid']->valContClassDefault = array();
$dbo->cols['usr_langid']->option->defaultMethod = 'text';
$dbo->cols['usr_langid']->option->searchMethod = 'text';
$dbo->cols['usr_langid']->option->listMethod = 'text';
$dbo->cols['usr_langid']->option->detailMethod = 'text';
$dbo->cols['usr_langid']->option->newMethod = 'text';
$dbo->cols['usr_langid']->option->editMethod = 'text';
$dbo->cols['usr_status'] = new DBO_COL('usr_status', 'VAR_STRING', '96', '0');
$dbo->cols['usr_status']->inputTypeDefault = 'text';
$dbo->cols['usr_status']->searchMode = 'exact';
$dbo->cols['usr_status']->capContClassDefault = array();
$dbo->cols['usr_status']->valContClassDefault = array();
$dbo->cols['usr_status']->option->defaultMethod = 'text';
$dbo->cols['usr_status']->option->searchMethod = 'text';
$dbo->cols['usr_status']->option->listMethod = 'text';
$dbo->cols['usr_status']->option->detailMethod = 'text';
$dbo->cols['usr_status']->option->newMethod = 'text';
$dbo->cols['usr_status']->option->editMethod = 'text';
$dbo->cols['usr_password2'] = new DBO_COL('usr_password2', 'VAR_STRING', '150', '0');
$dbo->cols['usr_password2']->defaultEditValueMethod = 'text';
$dbo->cols['usr_password2']->inputTypeDefault = 'password';
$dbo->cols['usr_password2']->searchMode = 'exact';
$dbo->cols['usr_password2']->capContClassDefault = array();
$dbo->cols['usr_password2']->valContClassDefault = array();
$dbo->cols['usr_password2']->option->defaultMethod = 'text';
$dbo->cols['usr_password2']->option->searchMethod = 'text';
$dbo->cols['usr_password2']->option->listMethod = 'text';
$dbo->cols['usr_password2']->option->detailMethod = 'text';
$dbo->cols['usr_password2']->option->newMethod = 'text';
$dbo->cols['usr_password2']->option->editMethod = 'text';
$dbo->cols['pass1'] = new DBO_COL('pass1', 'STRING', '0', '0');
$dbo->cols['pass1']->inputTypeDefault = 'password';
$dbo->cols['pass1']->searchMode = 'exact';
$dbo->cols['pass1']->capContClassDefault = array();
$dbo->cols['pass1']->valContClassDefault = array();
$dbo->cols['pass1']->option->defaultMethod = 'text';
$dbo->cols['pass1']->option->searchMethod = 'text';
$dbo->cols['pass1']->option->listMethod = 'text';
$dbo->cols['pass1']->option->detailMethod = 'text';
$dbo->cols['pass1']->option->newMethod = 'text';
$dbo->cols['pass1']->option->editMethod = 'text';
$dbo->cols['pass2'] = new DBO_COL('pass2', 'STRING', '0', '0');
$dbo->cols['pass2']->inputTypeDefault = 'password';
$dbo->cols['pass2']->searchMode = 'exact';
$dbo->cols['pass2']->capContClassDefault = array();
$dbo->cols['pass2']->valContClassDefault = array();
$dbo->cols['pass2']->option->defaultMethod = 'text';
$dbo->cols['pass2']->option->searchMethod = 'text';
$dbo->cols['pass2']->option->listMethod = 'text';
$dbo->cols['pass2']->option->detailMethod = 'text';
$dbo->cols['pass2']->option->newMethod = 'text';
$dbo->cols['pass2']->option->editMethod = 'text';
$dbo->cols['currpass'] = new DBO_COL('currpass', 'STRING', '0', '0');
$dbo->cols['currpass']->inputTypeDefault = 'password';
$dbo->cols['currpass']->searchMode = 'exact';
$dbo->cols['currpass']->capContClassDefault = array();
$dbo->cols['currpass']->valContClassDefault = array();
$dbo->cols['currpass']->option->defaultMethod = 'text';
$dbo->cols['currpass']->option->searchMethod = 'text';
$dbo->cols['currpass']->option->listMethod = 'text';
$dbo->cols['currpass']->option->detailMethod = 'text';
$dbo->cols['currpass']->option->newMethod = 'text';
$dbo->cols['currpass']->option->editMethod = 'text';

// support multiple language. only caption
global $LANG;
if(file_exists(dirname(__FILE__).DIRECTORY_SEPARATOR.$dbo->id.'.conf.lang.'.$LANG.'.php')){
	require(dirname(__FILE__).DIRECTORY_SEPARATOR.$dbo->id.'.conf.lang.'.$LANG.'.php');
}else if($availang = glob(dirname(__FILE__).DIRECTORY_SEPARATOR.$dboID.'.conf.lang.*')){
	require($availang[0]);
}

// for DBO Builder
$dbo->saveDir = dirname(dirname(__FILE__));

$dbo->run();

/*
$dbo->newModifier = 'dbo_profile_custom_new';
function dbo_profile_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_profile_custom_edit';
function dbo_profile_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_profile_custom_search';
function dbo_profile_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_profile_custom_delete';
function dbo_profile_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_profile_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>