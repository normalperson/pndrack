<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'importdata';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smimport';
$dbo->key = array();
$dbo->sql = 'select * from smimport';
$dbo->col = array('ip_id', 'ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_orgid', 'ip_status', 'ip_remark');
$dbo->colList = array('ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_status', 'ip_remark');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('ip_id', 'ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_orgid', 'ip_status', 'ip_remark');
$dbo->colNew = array('ip_id', 'ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_orgid', 'ip_status', 'ip_remark');
$dbo->colEdit = array('ip_id', 'ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_orgid', 'ip_status', 'ip_remark');
$dbo->colSearch = array('ip_id', 'ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_orgid', 'ip_status', 'ip_remark');
$dbo->colExport = array('ip_id', 'ip_custname', 'ip_custmasterid', 'ip_custregno', 'ip_custcontactno', 'ip_platename', 'ip_platemodel', 'ip_plateinfo', 'ip_orgid', 'ip_status', 'ip_remark');
$dbo->colSort = array();
$dbo->canSearch = false;
$dbo->canNew = false;
$dbo->canEdit = false;
$dbo->canDelete = false;
$dbo->canDetail = false;
$dbo->canListEdit = false;
$dbo->canListNew = false;
$dbo->canNewGroup = array();
$dbo->canEditGroup = array();
$dbo->canDeleteGroup = array();
$dbo->showSearch = true;
$dbo->titleList = 'Import remark';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->theme = 'skyblue';
$dbo->layout = 'AlwaysList';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 10;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'EN-US';
$dbo->render = array();
$dbo->searchCancel = 'Cancel';
$dbo->searchSubmit = 'Search';
$dbo->detailBack = 'Back';
$dbo->editCancel = 'Cancel';
$dbo->editSubmit = 'Save';
$dbo->listEditSubmit = 'Submit';
$dbo->newCancel = 'Cancel';
$dbo->newSubmit = 'Save';

$dbo->cols['ip_id'] = new DBO_COL('ip_id', 'LONG', '11', '0');
$dbo->cols['ip_id']->inputTypeDefault = 'text';
$dbo->cols['ip_id']->searchMode = 'exact';
$dbo->cols['ip_id']->capContClassDefault = array();
$dbo->cols['ip_id']->valContClassDefault = array();
$dbo->cols['ip_id']->option->defaultMethod = 'text';
$dbo->cols['ip_id']->option->searchMethod = 'text';
$dbo->cols['ip_id']->option->listMethod = 'text';
$dbo->cols['ip_id']->option->detailMethod = 'text';
$dbo->cols['ip_id']->option->newMethod = 'text';
$dbo->cols['ip_id']->option->editMethod = 'text';
$dbo->cols['ip_custname'] = new DBO_COL('ip_custname', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_custname']->inputTypeDefault = 'text';
$dbo->cols['ip_custname']->searchMode = 'exact';
$dbo->cols['ip_custname']->capContClassDefault = array();
$dbo->cols['ip_custname']->valContClassDefault = array();
$dbo->cols['ip_custname']->option->defaultMethod = 'text';
$dbo->cols['ip_custname']->option->searchMethod = 'text';
$dbo->cols['ip_custname']->option->listMethod = 'text';
$dbo->cols['ip_custname']->option->detailMethod = 'text';
$dbo->cols['ip_custname']->option->newMethod = 'text';
$dbo->cols['ip_custname']->option->editMethod = 'text';
$dbo->cols['ip_custmasterid'] = new DBO_COL('ip_custmasterid', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_custmasterid']->inputTypeDefault = 'text';
$dbo->cols['ip_custmasterid']->searchMode = 'exact';
$dbo->cols['ip_custmasterid']->capContClassDefault = array();
$dbo->cols['ip_custmasterid']->valContClassDefault = array();
$dbo->cols['ip_custmasterid']->option->defaultMethod = 'text';
$dbo->cols['ip_custmasterid']->option->searchMethod = 'text';
$dbo->cols['ip_custmasterid']->option->listMethod = 'text';
$dbo->cols['ip_custmasterid']->option->detailMethod = 'text';
$dbo->cols['ip_custmasterid']->option->newMethod = 'text';
$dbo->cols['ip_custmasterid']->option->editMethod = 'text';
$dbo->cols['ip_custregno'] = new DBO_COL('ip_custregno', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_custregno']->inputTypeDefault = 'text';
$dbo->cols['ip_custregno']->searchMode = 'exact';
$dbo->cols['ip_custregno']->capContClassDefault = array();
$dbo->cols['ip_custregno']->valContClassDefault = array();
$dbo->cols['ip_custregno']->option->defaultMethod = 'text';
$dbo->cols['ip_custregno']->option->searchMethod = 'text';
$dbo->cols['ip_custregno']->option->listMethod = 'text';
$dbo->cols['ip_custregno']->option->detailMethod = 'text';
$dbo->cols['ip_custregno']->option->newMethod = 'text';
$dbo->cols['ip_custregno']->option->editMethod = 'text';
$dbo->cols['ip_custcontactno'] = new DBO_COL('ip_custcontactno', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_custcontactno']->inputTypeDefault = 'text';
$dbo->cols['ip_custcontactno']->searchMode = 'exact';
$dbo->cols['ip_custcontactno']->capContClassDefault = array();
$dbo->cols['ip_custcontactno']->valContClassDefault = array();
$dbo->cols['ip_custcontactno']->option->defaultMethod = 'text';
$dbo->cols['ip_custcontactno']->option->searchMethod = 'text';
$dbo->cols['ip_custcontactno']->option->listMethod = 'text';
$dbo->cols['ip_custcontactno']->option->detailMethod = 'text';
$dbo->cols['ip_custcontactno']->option->newMethod = 'text';
$dbo->cols['ip_custcontactno']->option->editMethod = 'text';
$dbo->cols['ip_platename'] = new DBO_COL('ip_platename', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_platename']->inputTypeDefault = 'text';
$dbo->cols['ip_platename']->searchMode = 'exact';
$dbo->cols['ip_platename']->capContClassDefault = array();
$dbo->cols['ip_platename']->valContClassDefault = array();
$dbo->cols['ip_platename']->option->defaultMethod = 'text';
$dbo->cols['ip_platename']->option->searchMethod = 'text';
$dbo->cols['ip_platename']->option->listMethod = 'text';
$dbo->cols['ip_platename']->option->detailMethod = 'text';
$dbo->cols['ip_platename']->option->newMethod = 'text';
$dbo->cols['ip_platename']->option->editMethod = 'text';
$dbo->cols['ip_platemodel'] = new DBO_COL('ip_platemodel', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_platemodel']->inputTypeDefault = 'text';
$dbo->cols['ip_platemodel']->searchMode = 'exact';
$dbo->cols['ip_platemodel']->capContClassDefault = array();
$dbo->cols['ip_platemodel']->valContClassDefault = array();
$dbo->cols['ip_platemodel']->option->defaultMethod = 'text';
$dbo->cols['ip_platemodel']->option->searchMethod = 'text';
$dbo->cols['ip_platemodel']->option->listMethod = 'text';
$dbo->cols['ip_platemodel']->option->detailMethod = 'text';
$dbo->cols['ip_platemodel']->option->newMethod = 'text';
$dbo->cols['ip_platemodel']->option->editMethod = 'text';
$dbo->cols['ip_plateinfo'] = new DBO_COL('ip_plateinfo', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_plateinfo']->inputTypeDefault = 'text';
$dbo->cols['ip_plateinfo']->searchMode = 'exact';
$dbo->cols['ip_plateinfo']->capContClassDefault = array();
$dbo->cols['ip_plateinfo']->valContClassDefault = array();
$dbo->cols['ip_plateinfo']->option->defaultMethod = 'text';
$dbo->cols['ip_plateinfo']->option->searchMethod = 'text';
$dbo->cols['ip_plateinfo']->option->listMethod = 'text';
$dbo->cols['ip_plateinfo']->option->detailMethod = 'text';
$dbo->cols['ip_plateinfo']->option->newMethod = 'text';
$dbo->cols['ip_plateinfo']->option->editMethod = 'text';
$dbo->cols['ip_orgid'] = new DBO_COL('ip_orgid', 'LONG', '11', '0');
$dbo->cols['ip_orgid']->inputTypeDefault = 'text';
$dbo->cols['ip_orgid']->searchMode = 'exact';
$dbo->cols['ip_orgid']->capContClassDefault = array();
$dbo->cols['ip_orgid']->valContClassDefault = array();
$dbo->cols['ip_orgid']->option->defaultMethod = 'text';
$dbo->cols['ip_orgid']->option->searchMethod = 'text';
$dbo->cols['ip_orgid']->option->listMethod = 'text';
$dbo->cols['ip_orgid']->option->detailMethod = 'text';
$dbo->cols['ip_orgid']->option->newMethod = 'text';
$dbo->cols['ip_orgid']->option->editMethod = 'text';
$dbo->cols['ip_status'] = new DBO_COL('ip_status', 'VAR_STRING', '135', '0');
$dbo->cols['ip_status']->inputTypeDefault = 'text';
$dbo->cols['ip_status']->searchMode = 'exact';
$dbo->cols['ip_status']->capContClassDefault = array();
$dbo->cols['ip_status']->valContClassDefault = array();
$dbo->cols['ip_status']->option->defaultMethod = 'text';
$dbo->cols['ip_status']->option->searchMethod = 'text';
$dbo->cols['ip_status']->option->listMethod = 'text';
$dbo->cols['ip_status']->option->detailMethod = 'text';
$dbo->cols['ip_status']->option->newMethod = 'text';
$dbo->cols['ip_status']->option->editMethod = 'text';
$dbo->cols['ip_remark'] = new DBO_COL('ip_remark', 'VAR_STRING', '3000', '0');
$dbo->cols['ip_remark']->inputTypeDefault = 'text';
$dbo->cols['ip_remark']->searchMode = 'exact';
$dbo->cols['ip_remark']->capContClassDefault = array();
$dbo->cols['ip_remark']->valContClassDefault = array();
$dbo->cols['ip_remark']->option->defaultMethod = 'text';
$dbo->cols['ip_remark']->option->searchMethod = 'text';
$dbo->cols['ip_remark']->option->listMethod = 'text';
$dbo->cols['ip_remark']->option->detailMethod = 'text';
$dbo->cols['ip_remark']->option->newMethod = 'text';
$dbo->cols['ip_remark']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_importdata_custom_new';
function dbo_importdata_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_importdata_custom_edit';
function dbo_importdata_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_importdata_custom_search';
function dbo_importdata_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_importdata_custom_delete';
function dbo_importdata_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_importdata_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>