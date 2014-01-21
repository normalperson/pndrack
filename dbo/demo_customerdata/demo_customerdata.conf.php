<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'demo_customerdata';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smdemocustomer';
$dbo->key = array('dm_id');
$dbo->sql = 'select * from smdemocustomer';
$dbo->col = array('dm_id', 'dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colList = array('dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colNew = array('dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colEdit = array('dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colSearch = array('dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colExport = array('dm_cusname', 'dm_regno', 'dm_masterid', 'dm_contactno', 'dm_industry');
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = true;
$dbo->canDelete = false;
$dbo->canDetail = false;
$dbo->canListEdit = false;
$dbo->canListNew = false;
$dbo->canNewGroup = array();
$dbo->canEditGroup = array();
$dbo->canDeleteGroup = array();
$dbo->showSearch = true;
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

$dbo->cols['dm_id'] = new DBO_COL('dm_id', 'LONG', '11', '0');
$dbo->cols['dm_id']->inputTypeDefault = 'text';
$dbo->cols['dm_id']->searchMode = 'exact';
$dbo->cols['dm_id']->capContClassDefault = array();
$dbo->cols['dm_id']->valContClassDefault = array();
$dbo->cols['dm_id']->option->defaultMethod = 'text';
$dbo->cols['dm_id']->option->searchMethod = 'text';
$dbo->cols['dm_id']->option->listMethod = 'text';
$dbo->cols['dm_id']->option->detailMethod = 'text';
$dbo->cols['dm_id']->option->newMethod = 'text';
$dbo->cols['dm_id']->option->editMethod = 'text';
$dbo->cols['dm_cusname'] = new DBO_COL('dm_cusname', 'VAR_STRING', '600', '0');
$dbo->cols['dm_cusname']->inputTypeDefault = 'text';
$dbo->cols['dm_cusname']->searchMode = 'exact';
$dbo->cols['dm_cusname']->capContClassDefault = array();
$dbo->cols['dm_cusname']->valContClassDefault = array();
$dbo->cols['dm_cusname']->option->defaultMethod = 'text';
$dbo->cols['dm_cusname']->option->searchMethod = 'text';
$dbo->cols['dm_cusname']->option->listMethod = 'text';
$dbo->cols['dm_cusname']->option->detailMethod = 'text';
$dbo->cols['dm_cusname']->option->newMethod = 'text';
$dbo->cols['dm_cusname']->option->editMethod = 'text';
$dbo->cols['dm_regno'] = new DBO_COL('dm_regno', 'VAR_STRING', '300', '0');
$dbo->cols['dm_regno']->inputTypeDefault = 'text';
$dbo->cols['dm_regno']->searchMode = 'exact';
$dbo->cols['dm_regno']->capContClassDefault = array();
$dbo->cols['dm_regno']->valContClassDefault = array();
$dbo->cols['dm_regno']->option->defaultMethod = 'text';
$dbo->cols['dm_regno']->option->searchMethod = 'text';
$dbo->cols['dm_regno']->option->listMethod = 'text';
$dbo->cols['dm_regno']->option->detailMethod = 'text';
$dbo->cols['dm_regno']->option->newMethod = 'text';
$dbo->cols['dm_regno']->option->editMethod = 'text';
$dbo->cols['dm_masterid'] = new DBO_COL('dm_masterid', 'VAR_STRING', '300', '0');
$dbo->cols['dm_masterid']->inputTypeDefault = 'text';
$dbo->cols['dm_masterid']->searchMode = 'exact';
$dbo->cols['dm_masterid']->capContClassDefault = array();
$dbo->cols['dm_masterid']->valContClassDefault = array();
$dbo->cols['dm_masterid']->option->defaultMethod = 'text';
$dbo->cols['dm_masterid']->option->searchMethod = 'text';
$dbo->cols['dm_masterid']->option->listMethod = 'text';
$dbo->cols['dm_masterid']->option->detailMethod = 'text';
$dbo->cols['dm_masterid']->option->newMethod = 'text';
$dbo->cols['dm_masterid']->option->editMethod = 'text';
$dbo->cols['dm_contactno'] = new DBO_COL('dm_contactno', 'VAR_STRING', '60', '0');
$dbo->cols['dm_contactno']->inputTypeDefault = 'text';
$dbo->cols['dm_contactno']->searchMode = 'exact';
$dbo->cols['dm_contactno']->capContClassDefault = array();
$dbo->cols['dm_contactno']->valContClassDefault = array();
$dbo->cols['dm_contactno']->option->defaultMethod = 'text';
$dbo->cols['dm_contactno']->option->searchMethod = 'text';
$dbo->cols['dm_contactno']->option->listMethod = 'text';
$dbo->cols['dm_contactno']->option->detailMethod = 'text';
$dbo->cols['dm_contactno']->option->newMethod = 'text';
$dbo->cols['dm_contactno']->option->editMethod = 'text';
$dbo->cols['dm_industry'] = new DBO_COL('dm_industry', 'VAR_STRING', '60', '0');
$dbo->cols['dm_industry']->inputTypeDefault = 'text';
$dbo->cols['dm_industry']->searchMode = 'exact';
$dbo->cols['dm_industry']->capContClassDefault = array();
$dbo->cols['dm_industry']->valContClassDefault = array();
$dbo->cols['dm_industry']->option->defaultMethod = 'text';
$dbo->cols['dm_industry']->option->searchMethod = 'text';
$dbo->cols['dm_industry']->option->listMethod = 'text';
$dbo->cols['dm_industry']->option->detailMethod = 'text';
$dbo->cols['dm_industry']->option->newMethod = 'text';
$dbo->cols['dm_industry']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_demo_customerdata_custom_new';
function dbo_demo_customerdata_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_demo_customerdata_custom_edit';
function dbo_demo_customerdata_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_demo_customerdata_custom_search';
function dbo_demo_customerdata_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_demo_customerdata_custom_delete';
function dbo_demo_customerdata_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_demo_customerdata_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>