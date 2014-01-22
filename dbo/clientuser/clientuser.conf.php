<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'clientuser';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fcuser';
$dbo->key = array('usr_userid');
$dbo->sql = 'select fcuser.*,\'\' userRole, \'\' as currpassword, \'\' as password1, \'\' as password2 from fcuser';
$dbo->col = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status', 'userRole', 'currpassword', 'password1', 'password2');
$dbo->colList = array('usr_userid', 'usr_name', 'usr_email', 'usr_created', 'usr_status');
$dbo->colListEdit = array('usr_status');
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_status');
$dbo->colNew = array('usr_userid', 'password1', 'password2', 'usr_name', 'usr_email', 'usr_langid', 'userRole');
$dbo->colEdit = array('usr_userid', 'usr_name', 'usr_email', 'usr_status', 'usr_langid', 'userRole', 'password1', 'password2');
$dbo->colSearch = array('usr_userid', 'usr_name', 'usr_status');
$dbo->colExport = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status');
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = true;
$dbo->canDelete = true;
$dbo->canDetail = false;
$dbo->canListEdit = false;
$dbo->canListNew = false;
$dbo->canNewGroup = array();
$dbo->canEditGroup = array();
$dbo->canDeleteGroup = array();
$dbo->showSearch = true;
$dbo->newModifier = 'dbo_clientuser_custom_new';
$dbo->editModifier = 'dbo_clientuser_custom_edit';
$dbo->deleteModifier = 'dbo_clientuser_custom_delete';
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
$dbo->whereSQL = 'usr_userid in (\'admin\', \'pndadmin\')';

$dbo->cols['usr_userid'] = new DBO_COL('usr_userid', 'VAR_STRING', '150', '0');
$dbo->cols['usr_userid']->inputTypeDefault = 'text';
$dbo->cols['usr_userid']->mandatoryNew = 1;
$dbo->cols['usr_userid']->mandatoryEdit = 1;
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
$dbo->cols['usr_created']->displayDataType = 'datetime';
$dbo->cols['usr_created']->defaultNewValueMethod = 'phps';
$dbo->cols['usr_created']->defaultNewValue = 'date(\'Y-m-d H:i:s\')';
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
$dbo->cols['usr_name']->mandatoryNew = 1;
$dbo->cols['usr_name']->mandatoryEdit = 1;
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
$dbo->cols['usr_email']->mandatoryNew = 1;
$dbo->cols['usr_email']->mandatoryEdit = 1;
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
$dbo->cols['usr_last_active']->displayDataType = 'datetime';
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
$dbo->cols['usr_last_success_login']->displayDataType = 'datetime';
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
$dbo->cols['usr_last_fail_login']->displayDataType = 'datetime';
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
$dbo->cols['usr_langid']->inputTypeDefault = 'select';
$dbo->cols['usr_langid']->searchMode = 'exact';
$dbo->cols['usr_langid']->capContClassDefault = array();
$dbo->cols['usr_langid']->valContClassDefault = array();
$dbo->cols['usr_langid']->option->default = 'select lang_id, lang_name from fclang where lang_status = \'ACTIVE\' order by lang_name';
$dbo->cols['usr_langid']->option->defaultMethod = 'sql';
$dbo->cols['usr_langid']->option->searchMethod = 'text';
$dbo->cols['usr_langid']->option->listMethod = 'text';
$dbo->cols['usr_langid']->option->detailMethod = 'text';
$dbo->cols['usr_langid']->option->newMethod = 'text';
$dbo->cols['usr_langid']->option->editMethod = 'text';
$dbo->cols['usr_status'] = new DBO_COL('usr_status', 'VAR_STRING', '96', '0');
$dbo->cols['usr_status']->inputTypeDefault = 'select';
$dbo->cols['usr_status']->mandatoryEdit = 1;
$dbo->cols['usr_status']->searchMode = 'exact';
$dbo->cols['usr_status']->capContClassDefault = array();
$dbo->cols['usr_status']->valContClassDefault = array();
$dbo->cols['usr_status']->option->default = 'ACTIVE/Active
INACTIVE/Inactive';
$dbo->cols['usr_status']->option->defaultMethod = 'text';
$dbo->cols['usr_status']->option->searchMethod = 'text';
$dbo->cols['usr_status']->option->listMethod = 'text';
$dbo->cols['usr_status']->option->detailMethod = 'text';
$dbo->cols['usr_status']->option->newMethod = 'text';
$dbo->cols['usr_status']->option->editMethod = 'text';
$dbo->cols['password2'] = new DBO_COL('password2', 'STRING', '0', '0');
$dbo->cols['password2']->inputTypeDefault = 'password';
$dbo->cols['password2']->searchMode = 'exact';
$dbo->cols['password2']->capContClassDefault = array();
$dbo->cols['password2']->valContClassDefault = array();
$dbo->cols['password2']->option->defaultMethod = 'text';
$dbo->cols['password2']->option->searchMethod = 'text';
$dbo->cols['password2']->option->listMethod = 'text';
$dbo->cols['password2']->option->detailMethod = 'text';
$dbo->cols['password2']->option->newMethod = 'text';
$dbo->cols['password2']->option->editMethod = 'text';
$dbo->cols['password1'] = new DBO_COL('password1', 'STRING', '0', '0');
$dbo->cols['password1']->inputTypeDefault = 'password';
$dbo->cols['password1']->mandatoryNew = 1;
$dbo->cols['password1']->searchMode = 'exact';
$dbo->cols['password1']->capContClassDefault = array();
$dbo->cols['password1']->valContClassDefault = array();
$dbo->cols['password1']->option->defaultMethod = 'text';
$dbo->cols['password1']->option->searchMethod = 'text';
$dbo->cols['password1']->option->listMethod = 'text';
$dbo->cols['password1']->option->detailMethod = 'text';
$dbo->cols['password1']->option->newMethod = 'text';
$dbo->cols['password1']->option->editMethod = 'text';
$dbo->cols['orgid'] = new DBO_COL('orgid', 'LONG', '1', '0');
$dbo->cols['orgid']->inputTypeDefault = 'text';
$dbo->cols['orgid']->searchMode = 'exact';
$dbo->cols['orgid']->capContClassDefault = array();
$dbo->cols['orgid']->valContClassDefault = array();
$dbo->cols['orgid']->option->defaultMethod = 'text';
$dbo->cols['orgid']->option->searchMethod = 'text';
$dbo->cols['orgid']->option->listMethod = 'text';
$dbo->cols['orgid']->option->detailMethod = 'text';
$dbo->cols['orgid']->option->newMethod = 'text';
$dbo->cols['orgid']->option->editMethod = 'text';
$dbo->cols['userRole'] = new DBO_COL('userRole', 'STRING', '0', '0');
$dbo->cols['userRole']->inputNewModifierMethod = 'phpfunc';
$dbo->cols['userRole']->inputEditModifierMethod = 'phpfunc';
$dbo->cols['userRole']->inputNewModifier = 'neworgrole';
$dbo->cols['userRole']->inputEditModifier = 'editorgrole';
$dbo->cols['userRole']->inputTypeDefault = 'text';
$dbo->cols['userRole']->searchMode = 'exact';
$dbo->cols['userRole']->capContClassDefault = array();
$dbo->cols['userRole']->valContClassDefault = array();
$dbo->cols['userRole']->option->defaultMethod = 'text';
$dbo->cols['userRole']->option->searchMethod = 'text';
$dbo->cols['userRole']->option->listMethod = 'text';
$dbo->cols['userRole']->option->detailMethod = 'text';
$dbo->cols['userRole']->option->newMethod = 'text';
$dbo->cols['userRole']->option->editMethod = 'text';
$dbo->cols['currpassword'] = new DBO_COL('currpassword', 'STRING', '0', '0');
$dbo->cols['currpassword']->inputTypeDefault = 'text';
$dbo->cols['currpassword']->searchMode = 'exact';
$dbo->cols['currpassword']->capContClassDefault = array();
$dbo->cols['currpassword']->valContClassDefault = array();
$dbo->cols['currpassword']->option->defaultMethod = 'text';
$dbo->cols['currpassword']->option->searchMethod = 'text';
$dbo->cols['currpassword']->option->listMethod = 'text';
$dbo->cols['currpassword']->option->detailMethod = 'text';
$dbo->cols['currpassword']->option->newMethod = 'text';
$dbo->cols['currpassword']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_clientuser_custom_new';
function dbo_clientuser_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_clientuser_custom_edit';
function dbo_clientuser_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_clientuser_custom_search';
function dbo_clientuser_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_clientuser_custom_delete';
function dbo_clientuser_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_clientuser_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>