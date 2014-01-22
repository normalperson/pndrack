<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'setup_customer';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smcustomer';
$dbo->key = array('cus_id');
$dbo->sql = 'select smcustomer.*,\'\' noofplate
from smcustomer';
$dbo->col = array('cus_id', 'cus_name', 'cus_regno', 'cus_masterid', 'cus_contactno', 'cus_orgid', 'noofplate');
$dbo->colList = array('cus_name', 'cus_regno', 'cus_masterid', 'cus_contactno');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('cus_name', 'cus_regno', 'cus_masterid');
$dbo->colNew = array('cus_name', 'cus_regno', 'cus_masterid', 'cus_contactno');
$dbo->colEdit = array('cus_name', 'cus_regno', 'cus_masterid', 'cus_contactno');
$dbo->colSearch = array('cus_name', 'cus_regno', 'cus_masterid');
$dbo->colExport = array();
$dbo->colSort = array();
$dbo->canSearch = false;
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
$dbo->titleList = 'Customer List';
$dbo->titleDetail = '细节';
$dbo->titleNew = '增加记录';
$dbo->titleEdit = '更改记录';
$dbo->titleSearch = '寻找记录';
$dbo->theme = 'skyblue';
$dbo->layout = 'One';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 10;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'ZH-TW';
$dbo->render = array();

$dbo->cols['cus_id'] = new DBO_COL('cus_id', 'LONG', '11', '0');
$dbo->cols['cus_id']->inputTypeDefault = 'text';
$dbo->cols['cus_id']->searchMode = 'exact';
$dbo->cols['cus_id']->capContClassDefault = array();
$dbo->cols['cus_id']->valContClassDefault = array();
$dbo->cols['cus_id']->option->defaultMethod = 'text';
$dbo->cols['cus_id']->option->searchMethod = 'text';
$dbo->cols['cus_id']->option->listMethod = 'text';
$dbo->cols['cus_id']->option->detailMethod = 'text';
$dbo->cols['cus_id']->option->newMethod = 'text';
$dbo->cols['cus_id']->option->editMethod = 'text';
$dbo->cols['cus_name'] = new DBO_COL('cus_name', 'VAR_STRING', '600', '0');
$dbo->cols['cus_name']->inputTypeDefault = 'text';
$dbo->cols['cus_name']->mandatoryNew = 1;
$dbo->cols['cus_name']->mandatoryEdit = 1;
$dbo->cols['cus_name']->searchMode = 'exact';
$dbo->cols['cus_name']->capContClassDefault = array();
$dbo->cols['cus_name']->valContClassDefault = array();
$dbo->cols['cus_name']->option->defaultMethod = 'text';
$dbo->cols['cus_name']->option->searchMethod = 'text';
$dbo->cols['cus_name']->option->listMethod = 'text';
$dbo->cols['cus_name']->option->detailMethod = 'text';
$dbo->cols['cus_name']->option->newMethod = 'text';
$dbo->cols['cus_name']->option->editMethod = 'text';
$dbo->cols['cus_regno'] = new DBO_COL('cus_regno', 'VAR_STRING', '300', '0');
$dbo->cols['cus_regno']->inputTypeDefault = 'text';
$dbo->cols['cus_regno']->mandatoryNew = 1;
$dbo->cols['cus_regno']->mandatoryEdit = 1;
$dbo->cols['cus_regno']->searchMode = 'exact';
$dbo->cols['cus_regno']->capContClassDefault = array();
$dbo->cols['cus_regno']->valContClassDefault = array();
$dbo->cols['cus_regno']->option->defaultMethod = 'text';
$dbo->cols['cus_regno']->option->searchMethod = 'text';
$dbo->cols['cus_regno']->option->listMethod = 'text';
$dbo->cols['cus_regno']->option->detailMethod = 'text';
$dbo->cols['cus_regno']->option->newMethod = 'text';
$dbo->cols['cus_regno']->option->editMethod = 'text';
$dbo->cols['cus_masterid'] = new DBO_COL('cus_masterid', 'VAR_STRING', '300', '0');
$dbo->cols['cus_masterid']->inputTypeDefault = 'text';
$dbo->cols['cus_masterid']->mandatoryNew = 1;
$dbo->cols['cus_masterid']->mandatoryEdit = 1;
$dbo->cols['cus_masterid']->searchMode = 'exact';
$dbo->cols['cus_masterid']->capContClassDefault = array();
$dbo->cols['cus_masterid']->valContClassDefault = array();
$dbo->cols['cus_masterid']->option->defaultMethod = 'text';
$dbo->cols['cus_masterid']->option->searchMethod = 'text';
$dbo->cols['cus_masterid']->option->listMethod = 'text';
$dbo->cols['cus_masterid']->option->detailMethod = 'text';
$dbo->cols['cus_masterid']->option->newMethod = 'text';
$dbo->cols['cus_masterid']->option->editMethod = 'text';
$dbo->cols['noofplate'] = new DBO_COL('noofplate', 'STRING', '0', '0');
$dbo->cols['noofplate']->inputTypeDefault = 'text';
$dbo->cols['noofplate']->searchMode = 'exact';
$dbo->cols['noofplate']->capContClassDefault = array();
$dbo->cols['noofplate']->valContClassDefault = array();
$dbo->cols['noofplate']->option->defaultMethod = 'text';
$dbo->cols['noofplate']->option->searchMethod = 'text';
$dbo->cols['noofplate']->option->listMethod = 'text';
$dbo->cols['noofplate']->option->detailMethod = 'text';
$dbo->cols['noofplate']->option->newMethod = 'text';
$dbo->cols['noofplate']->option->editMethod = 'text';
$dbo->cols['cus_contactno'] = new DBO_COL('cus_contactno', 'VAR_STRING', '60', '0');
$dbo->cols['cus_contactno']->inputTypeDefault = 'text';
$dbo->cols['cus_contactno']->searchMode = 'exact';
$dbo->cols['cus_contactno']->capContClassDefault = array();
$dbo->cols['cus_contactno']->valContClassDefault = array();
$dbo->cols['cus_contactno']->option->defaultMethod = 'text';
$dbo->cols['cus_contactno']->option->searchMethod = 'text';
$dbo->cols['cus_contactno']->option->listMethod = 'text';
$dbo->cols['cus_contactno']->option->detailMethod = 'text';
$dbo->cols['cus_contactno']->option->newMethod = 'text';
$dbo->cols['cus_contactno']->option->editMethod = 'text';
$dbo->cols['cus_orgid'] = new DBO_COL('cus_orgid', 'LONG', '11', '0');
$dbo->cols['cus_orgid']->inputTypeDefault = 'text';
$dbo->cols['cus_orgid']->searchMode = 'exact';
$dbo->cols['cus_orgid']->capContClassDefault = array();
$dbo->cols['cus_orgid']->valContClassDefault = array();
$dbo->cols['cus_orgid']->option->defaultMethod = 'text';
$dbo->cols['cus_orgid']->option->searchMethod = 'text';
$dbo->cols['cus_orgid']->option->listMethod = 'text';
$dbo->cols['cus_orgid']->option->detailMethod = 'text';
$dbo->cols['cus_orgid']->option->newMethod = 'text';
$dbo->cols['cus_orgid']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_setup_customer_custom_new';
function dbo_setup_customer_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_setup_customer_custom_edit';
function dbo_setup_customer_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_setup_customer_custom_search';
function dbo_setup_customer_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_setup_customer_custom_delete';
function dbo_setup_customer_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_setup_customer_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>