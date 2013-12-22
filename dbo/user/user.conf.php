<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'user';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fcuser';
$dbo->key = array('usr_userid');
$dbo->sql = 'select fcuser.*,\'\' userRole from fcuser
order by usr_userid';
$dbo->col = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata', 'usr_langid', 'usr_status', 'usr_orgid', 'userRole');
$dbo->colList = array('usr_userid', 'usr_name', 'usr_email', 'usr_status');
$dbo->colDetail = array('usr_password', 'usr_name', 'usr_email', 'usr_status');
$dbo->colNew = array('usr_userid', 'usr_password', 'usr_name', 'usr_email', 'userRole');
$dbo->colEdit = array('usr_userid', 'usr_password', 'usr_name', 'usr_email', 'usr_status', 'userRole');
$dbo->colSearch = array('usr_userid', 'usr_name', 'usr_email', 'usr_status');
$dbo->colExport = array('usr_userid', 'usr_password', 'usr_created', 'usr_name', 'usr_email', 'usr_last_active', 'usr_last_success_login', 'usr_last_fail_login', 'usr_group', 'usr_sessiondata');
$dbo->colSort = array('usr_userid', 'usr_name');
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = true;
$dbo->canDelete = false;
$dbo->canDetail = true;
$dbo->canListEdit = false;
$dbo->canListNew = false;
$dbo->canNewGroup = array();
$dbo->canEditGroup = array();
$dbo->canDeleteGroup = array();
$dbo->showSearch = true;
$dbo->titleList = 'List User';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New User';
$dbo->titleEdit = 'Edit User';
$dbo->titleSearch = 'Search User';
$dbo->theme = 'skyblue';
$dbo->layout = 'One';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 25;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'EN-US';
$dbo->render = array();
$dbo->detailBack = 'Back';

$dbo->cols['usr_userid'] = new DBO_COL('usr_userid', 'VAR_STRING', '150', '0');
$dbo->cols['usr_userid']->displayDataType = 'datetime';
$dbo->cols['usr_userid']->inputTypeDefault = 'text';
$dbo->cols['usr_userid']->mandatoryNew = 1;
$dbo->cols['usr_userid']->mandatoryEdit = 1;
$dbo->cols['usr_userid']->searchMode = 'matchany';
$dbo->cols['usr_userid']->capContClassDefault = array();
$dbo->cols['usr_userid']->valContClassDefault = array();
$dbo->cols['usr_userid']->filter = array();
$dbo->cols['usr_userid']->inputType = 'text';
$dbo->cols['usr_userid']->filterVal = array();
$dbo->cols['usr_userid']->option->defaultMethod = 'text';
$dbo->cols['usr_userid']->option->searchMethod = 'text';
$dbo->cols['usr_userid']->option->listMethod = 'text';
$dbo->cols['usr_userid']->option->detailMethod = 'text';
$dbo->cols['usr_userid']->option->newMethod = 'text';
$dbo->cols['usr_userid']->option->editMethod = 'text';
$dbo->cols['usr_password'] = new DBO_COL('usr_password', 'VAR_STRING', '150', '0');
$dbo->cols['usr_password']->displayDataType = 'datetime';
$dbo->cols['usr_password']->inputTypeDefault = 'password';
$dbo->cols['usr_password']->mandatoryNew = 1;
$dbo->cols['usr_password']->mandatoryEdit = 1;
$dbo->cols['usr_password']->searchMode = 'exact';
$dbo->cols['usr_password']->capContClassDefault = array();
$dbo->cols['usr_password']->valContClassDefault = array();
$dbo->cols['usr_password']->filter = array();
$dbo->cols['usr_password']->inputType = 'text';
$dbo->cols['usr_password']->filterVal = array();
$dbo->cols['usr_password']->option->defaultMethod = 'text';
$dbo->cols['usr_password']->option->searchMethod = 'text';
$dbo->cols['usr_password']->option->listMethod = 'text';
$dbo->cols['usr_password']->option->detailMethod = 'text';
$dbo->cols['usr_password']->option->newMethod = 'text';
$dbo->cols['usr_password']->option->editMethod = 'text';
$dbo->cols['usr_created'] = new DBO_COL('usr_created', 'TIMESTAMP', '19', '0');
$dbo->cols['usr_created']->displayDataType = 'datetime';
$dbo->cols['usr_created']->inputTypeDefault = 'text';
$dbo->cols['usr_created']->searchMode = 'exact';
$dbo->cols['usr_created']->capContClassDefault = array();
$dbo->cols['usr_created']->valContClassDefault = array();
$dbo->cols['usr_created']->filter = array();
$dbo->cols['usr_created']->inputType = 'text';
$dbo->cols['usr_created']->filterVal = array();
$dbo->cols['usr_created']->option->defaultMethod = 'text';
$dbo->cols['usr_created']->option->searchMethod = 'text';
$dbo->cols['usr_created']->option->listMethod = 'text';
$dbo->cols['usr_created']->option->detailMethod = 'text';
$dbo->cols['usr_created']->option->newMethod = 'text';
$dbo->cols['usr_created']->option->editMethod = 'text';
$dbo->cols['usr_name'] = new DBO_COL('usr_name', 'VAR_STRING', '300', '0');
$dbo->cols['usr_name']->displayDataType = 'datetime';
$dbo->cols['usr_name']->inputTypeDefault = 'text';
$dbo->cols['usr_name']->mandatoryNew = 1;
$dbo->cols['usr_name']->mandatoryEdit = 1;
$dbo->cols['usr_name']->searchMode = 'matchany';
$dbo->cols['usr_name']->capContClassDefault = array();
$dbo->cols['usr_name']->valContClassDefault = array();
$dbo->cols['usr_name']->filter = array();
$dbo->cols['usr_name']->inputType = 'text';
$dbo->cols['usr_name']->filterVal = array();
$dbo->cols['usr_name']->option->defaultMethod = 'text';
$dbo->cols['usr_name']->option->searchMethod = 'text';
$dbo->cols['usr_name']->option->listMethod = 'text';
$dbo->cols['usr_name']->option->detailMethod = 'text';
$dbo->cols['usr_name']->option->newMethod = 'text';
$dbo->cols['usr_name']->option->editMethod = 'text';
$dbo->cols['usr_email'] = new DBO_COL('usr_email', 'VAR_STRING', '150', '0');
$dbo->cols['usr_email']->displayDataType = 'datetime';
$dbo->cols['usr_email']->inputTypeDefault = 'text';
$dbo->cols['usr_email']->searchMode = 'matchany';
$dbo->cols['usr_email']->capContClassDefault = array();
$dbo->cols['usr_email']->valContClassDefault = array();
$dbo->cols['usr_email']->filter = array();
$dbo->cols['usr_email']->inputType = 'text';
$dbo->cols['usr_email']->filterVal = array();
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
$dbo->cols['usr_last_active']->filter = array();
$dbo->cols['usr_last_active']->inputType = 'text';
$dbo->cols['usr_last_active']->filterVal = array();
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
$dbo->cols['usr_last_success_login']->filter = array();
$dbo->cols['usr_last_success_login']->inputType = 'text';
$dbo->cols['usr_last_success_login']->filterVal = array();
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
$dbo->cols['usr_last_fail_login']->filter = array();
$dbo->cols['usr_last_fail_login']->inputType = 'text';
$dbo->cols['usr_last_fail_login']->filterVal = array();
$dbo->cols['usr_last_fail_login']->option->defaultMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->searchMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->listMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->detailMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->newMethod = 'text';
$dbo->cols['usr_last_fail_login']->option->editMethod = 'text';
$dbo->cols['usr_group'] = new DBO_COL('usr_group', 'VAR_STRING', '3000', '0');
$dbo->cols['usr_group']->displayDataType = 'datetime';
$dbo->cols['usr_group']->inputTypeDefault = 'checkbox';
$dbo->cols['usr_group']->searchMode = 'exact';
$dbo->cols['usr_group']->capContClassDefault = array();
$dbo->cols['usr_group']->valContClassDefault = array();
$dbo->cols['usr_group']->filter = array();
$dbo->cols['usr_group']->inputType = 'select';
$dbo->cols['usr_group']->filterVal = array();
$dbo->cols['usr_group']->option->defaultMethod = 'text';
$dbo->cols['usr_group']->option->searchMethod = 'text';
$dbo->cols['usr_group']->option->listMethod = 'text';
$dbo->cols['usr_group']->option->detailMethod = 'text';
$dbo->cols['usr_group']->option->newMethod = 'text';
$dbo->cols['usr_group']->option->editMethod = 'text';
$dbo->cols['usr_sessiondata'] = new DBO_COL('usr_sessiondata', 'BLOB', '-1', '0');
$dbo->cols['usr_sessiondata']->displayDataType = 'datetime';
$dbo->cols['usr_sessiondata']->inputTypeDefault = 'text';
$dbo->cols['usr_sessiondata']->searchMode = 'exact';
$dbo->cols['usr_sessiondata']->capContClassDefault = array();
$dbo->cols['usr_sessiondata']->valContClassDefault = array();
$dbo->cols['usr_sessiondata']->filter = array();
$dbo->cols['usr_sessiondata']->inputType = 'text';
$dbo->cols['usr_sessiondata']->filterVal = array();
$dbo->cols['usr_sessiondata']->option->defaultMethod = 'text';
$dbo->cols['usr_sessiondata']->option->searchMethod = 'text';
$dbo->cols['usr_sessiondata']->option->listMethod = 'text';
$dbo->cols['usr_sessiondata']->option->detailMethod = 'text';
$dbo->cols['usr_sessiondata']->option->newMethod = 'text';
$dbo->cols['usr_sessiondata']->option->editMethod = 'text';
$dbo->cols['userrole'] = new DBO_COL('userrole', 'unknown', '-2', '-1');
$dbo->cols['userrole']->inputNewModifierMethod = 'phpfunc';
$dbo->cols['userrole']->inputEditModifierMethod = 'phpfunc';
$dbo->cols['userrole']->inputNewModifier = 'neworgrole';
$dbo->cols['userrole']->inputEditModifier = 'editorgrole';
$dbo->cols['userrole']->inputTypeDefault = 'text';
$dbo->cols['userrole']->searchMode = 'exact';
$dbo->cols['userrole']->capContClassDefault = array();
$dbo->cols['userrole']->valContClassDefault = array();
$dbo->cols['userrole']->filter = array();
$dbo->cols['userrole']->filterVal = array();
$dbo->cols['userrole']->option->defaultMethod = 'text';
$dbo->cols['userrole']->option->searchMethod = 'text';
$dbo->cols['userrole']->option->listMethod = 'text';
$dbo->cols['userrole']->option->detailMethod = 'text';
$dbo->cols['userrole']->option->newMethod = 'text';
$dbo->cols['userrole']->option->editMethod = 'text';
$dbo->cols['last_modified_date'] = new DBO_COL('last_modified_date', 'timestamptz', '8', '-1');
$dbo->cols['last_modified_date']->inputTypeDefault = 'text';
$dbo->cols['last_modified_date']->searchMode = 'exact';
$dbo->cols['last_modified_date']->capContClassDefault = array();
$dbo->cols['last_modified_date']->valContClassDefault = array();
$dbo->cols['last_modified_date']->option->defaultMethod = 'text';
$dbo->cols['last_modified_date']->option->searchMethod = 'text';
$dbo->cols['last_modified_date']->option->listMethod = 'text';
$dbo->cols['last_modified_date']->option->detailMethod = 'text';
$dbo->cols['last_modified_date']->option->newMethod = 'text';
$dbo->cols['last_modified_date']->option->editMethod = 'text';
$dbo->cols['last_synchronized_date'] = new DBO_COL('last_synchronized_date', 'timestamptz', '8', '-1');
$dbo->cols['last_synchronized_date']->inputTypeDefault = 'text';
$dbo->cols['last_synchronized_date']->searchMode = 'exact';
$dbo->cols['last_synchronized_date']->capContClassDefault = array();
$dbo->cols['last_synchronized_date']->valContClassDefault = array();
$dbo->cols['last_synchronized_date']->option->defaultMethod = 'text';
$dbo->cols['last_synchronized_date']->option->searchMethod = 'text';
$dbo->cols['last_synchronized_date']->option->listMethod = 'text';
$dbo->cols['last_synchronized_date']->option->detailMethod = 'text';
$dbo->cols['last_synchronized_date']->option->newMethod = 'text';
$dbo->cols['last_synchronized_date']->option->editMethod = 'text';
$dbo->cols['record_synchronized'] = new DBO_COL('record_synchronized', 'varchar', '-1', '5');
$dbo->cols['record_synchronized']->inputTypeDefault = 'text';
$dbo->cols['record_synchronized']->searchMode = 'exact';
$dbo->cols['record_synchronized']->capContClassDefault = array();
$dbo->cols['record_synchronized']->valContClassDefault = array();
$dbo->cols['record_synchronized']->option->defaultMethod = 'text';
$dbo->cols['record_synchronized']->option->searchMethod = 'text';
$dbo->cols['record_synchronized']->option->listMethod = 'text';
$dbo->cols['record_synchronized']->option->detailMethod = 'text';
$dbo->cols['record_synchronized']->option->newMethod = 'text';
$dbo->cols['record_synchronized']->option->editMethod = 'text';
$dbo->cols['cloud_refid'] = new DBO_COL('cloud_refid', 'int4', '4', '-1');
$dbo->cols['cloud_refid']->inputTypeDefault = 'text';
$dbo->cols['cloud_refid']->searchMode = 'exact';
$dbo->cols['cloud_refid']->capContClassDefault = array();
$dbo->cols['cloud_refid']->valContClassDefault = array();
$dbo->cols['cloud_refid']->option->defaultMethod = 'text';
$dbo->cols['cloud_refid']->option->searchMethod = 'text';
$dbo->cols['cloud_refid']->option->listMethod = 'text';
$dbo->cols['cloud_refid']->option->detailMethod = 'text';
$dbo->cols['cloud_refid']->option->newMethod = 'text';
$dbo->cols['cloud_refid']->option->editMethod = 'text';
$dbo->cols['usr_status'] = new DBO_COL('usr_status', 'VAR_STRING', '96', '0');
$dbo->cols['usr_status']->inputTypeDefault = 'select';
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
$dbo->cols['usr_orgid'] = new DBO_COL('usr_orgid', 'LONG', '11', '0');
$dbo->cols['usr_orgid']->inputTypeDefault = 'select';
$dbo->cols['usr_orgid']->searchMode = 'exact';
$dbo->cols['usr_orgid']->capContClassDefault = array();
$dbo->cols['usr_orgid']->valContClassDefault = array();
$dbo->cols['usr_orgid']->option->defaultMethod = 'text';
$dbo->cols['usr_orgid']->option->searchMethod = 'text';
$dbo->cols['usr_orgid']->option->listMethod = 'text';
$dbo->cols['usr_orgid']->option->detailMethod = 'text';
$dbo->cols['usr_orgid']->option->newMethod = 'text';
$dbo->cols['usr_orgid']->option->editMethod = 'text';

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
$dbo->newModifier = 'user_custom_new';
function user_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'user_custom_edit';
function user_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'user_custom_search';
function user_custom_search(&$search){
}

$dbo->deleteModifier = 'user_custom_delete';
function user_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function user_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>