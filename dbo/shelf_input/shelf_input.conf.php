<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'shelf_input';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smshelfitem';
$dbo->key = array('sfi_id');
$dbo->sql = 'select * from smshelfitem';
$dbo->col = array('sfi_id', 'sfi_slfid', 'sfi_itemname');
$dbo->colList = array('sfi_itemname');
$dbo->colDetail = array('sfi_itemname');
$dbo->colNew = array('sfi_itemname');
$dbo->colEdit = array('sfi_itemname');
$dbo->colSearch = array('sfi_itemname');
$dbo->colExport = array();
$dbo->colSort = array();
$dbo->canSearch = false;
$dbo->canNew = true;
$dbo->canEdit = false;
$dbo->canDelete = false;
$dbo->canDetail = false;
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
$dbo->detailBack = 'Back';

$dbo->cols['slf_id'] = new DBO_COL('slf_id', 'int4', '4', '-1');
$dbo->cols['slf_id']->inputTypeDefault = 'text';
$dbo->cols['slf_id']->searchMode = 'exact';
$dbo->cols['slf_id']->capContClassDefault = array();
$dbo->cols['slf_id']->valContClassDefault = array();
$dbo->cols['slf_id']->option->defaultMethod = 'text';
$dbo->cols['slf_id']->option->searchMethod = 'text';
$dbo->cols['slf_id']->option->listMethod = 'text';
$dbo->cols['slf_id']->option->detailMethod = 'text';
$dbo->cols['slf_id']->option->newMethod = 'text';
$dbo->cols['slf_id']->option->editMethod = 'text';
$dbo->cols['slf_sfid'] = new DBO_COL('slf_sfid', 'int4', '4', '-1');
$dbo->cols['slf_sfid']->inputTypeDefault = 'text';
$dbo->cols['slf_sfid']->searchMode = 'exact';
$dbo->cols['slf_sfid']->capContClassDefault = array();
$dbo->cols['slf_sfid']->valContClassDefault = array();
$dbo->cols['slf_sfid']->option->defaultMethod = 'text';
$dbo->cols['slf_sfid']->option->searchMethod = 'text';
$dbo->cols['slf_sfid']->option->listMethod = 'text';
$dbo->cols['slf_sfid']->option->detailMethod = 'text';
$dbo->cols['slf_sfid']->option->newMethod = 'text';
$dbo->cols['slf_sfid']->option->editMethod = 'text';
$dbo->cols['slf_code'] = new DBO_COL('slf_code', 'varchar', '-1', '104');
$dbo->cols['slf_code']->inputTypeDefault = 'text';
$dbo->cols['slf_code']->searchMode = 'exact';
$dbo->cols['slf_code']->capContClassDefault = array();
$dbo->cols['slf_code']->valContClassDefault = array();
$dbo->cols['slf_code']->option->defaultMethod = 'text';
$dbo->cols['slf_code']->option->searchMethod = 'text';
$dbo->cols['slf_code']->option->listMethod = 'text';
$dbo->cols['slf_code']->option->detailMethod = 'text';
$dbo->cols['slf_code']->option->newMethod = 'text';
$dbo->cols['slf_code']->option->editMethod = 'text';
$dbo->cols['slf_row'] = new DBO_COL('slf_row', 'int4', '4', '-1');
$dbo->cols['slf_row']->inputTypeDefault = 'text';
$dbo->cols['slf_row']->searchMode = 'exact';
$dbo->cols['slf_row']->capContClassDefault = array();
$dbo->cols['slf_row']->valContClassDefault = array();
$dbo->cols['slf_row']->option->defaultMethod = 'text';
$dbo->cols['slf_row']->option->searchMethod = 'text';
$dbo->cols['slf_row']->option->listMethod = 'text';
$dbo->cols['slf_row']->option->detailMethod = 'text';
$dbo->cols['slf_row']->option->newMethod = 'text';
$dbo->cols['slf_row']->option->editMethod = 'text';
$dbo->cols['slf_col'] = new DBO_COL('slf_col', 'int4', '4', '-1');
$dbo->cols['slf_col']->inputTypeDefault = 'text';
$dbo->cols['slf_col']->searchMode = 'exact';
$dbo->cols['slf_col']->capContClassDefault = array();
$dbo->cols['slf_col']->valContClassDefault = array();
$dbo->cols['slf_col']->option->defaultMethod = 'text';
$dbo->cols['slf_col']->option->searchMethod = 'text';
$dbo->cols['slf_col']->option->listMethod = 'text';
$dbo->cols['slf_col']->option->detailMethod = 'text';
$dbo->cols['slf_col']->option->newMethod = 'text';
$dbo->cols['slf_col']->option->editMethod = 'text';
$dbo->cols['slf_qty'] = new DBO_COL('slf_qty', 'int4', '4', '-1');
$dbo->cols['slf_qty']->inputTypeDefault = 'text';
$dbo->cols['slf_qty']->searchMode = 'exact';
$dbo->cols['slf_qty']->capContClassDefault = array();
$dbo->cols['slf_qty']->valContClassDefault = array();
$dbo->cols['slf_qty']->option->defaultMethod = 'text';
$dbo->cols['slf_qty']->option->searchMethod = 'text';
$dbo->cols['slf_qty']->option->listMethod = 'text';
$dbo->cols['slf_qty']->option->detailMethod = 'text';
$dbo->cols['slf_qty']->option->newMethod = 'text';
$dbo->cols['slf_qty']->option->editMethod = 'text';
$dbo->cols['sfi_id'] = new DBO_COL('sfi_id', 'int4', '4', '-1');
$dbo->cols['sfi_id']->inputTypeDefault = 'text';
$dbo->cols['sfi_id']->searchMode = 'exact';
$dbo->cols['sfi_id']->capContClassDefault = array();
$dbo->cols['sfi_id']->valContClassDefault = array();
$dbo->cols['sfi_id']->option->defaultMethod = 'text';
$dbo->cols['sfi_id']->option->searchMethod = 'text';
$dbo->cols['sfi_id']->option->listMethod = 'text';
$dbo->cols['sfi_id']->option->detailMethod = 'text';
$dbo->cols['sfi_id']->option->newMethod = 'text';
$dbo->cols['sfi_id']->option->editMethod = 'text';
$dbo->cols['sfi_itemname'] = new DBO_COL('sfi_itemname', 'varchar', '-1', '204');
$dbo->cols['sfi_itemname']->inputTypeDefault = 'text';
$dbo->cols['sfi_itemname']->searchMode = 'exact';
$dbo->cols['sfi_itemname']->capContClassDefault = array();
$dbo->cols['sfi_itemname']->valContClassDefault = array();
$dbo->cols['sfi_itemname']->option->defaultMethod = 'text';
$dbo->cols['sfi_itemname']->option->searchMethod = 'text';
$dbo->cols['sfi_itemname']->option->listMethod = 'text';
$dbo->cols['sfi_itemname']->option->detailMethod = 'text';
$dbo->cols['sfi_itemname']->option->newMethod = 'text';
$dbo->cols['sfi_itemname']->option->editMethod = 'text';
$dbo->cols['sfi_slfid'] = new DBO_COL('sfi_slfid', 'int4', '4', '-1');
$dbo->cols['sfi_slfid']->inputTypeDefault = 'text';
$dbo->cols['sfi_slfid']->searchMode = 'exact';
$dbo->cols['sfi_slfid']->capContClassDefault = array();
$dbo->cols['sfi_slfid']->valContClassDefault = array();
$dbo->cols['sfi_slfid']->option->defaultMethod = 'text';
$dbo->cols['sfi_slfid']->option->searchMethod = 'text';
$dbo->cols['sfi_slfid']->option->listMethod = 'text';
$dbo->cols['sfi_slfid']->option->detailMethod = 'text';
$dbo->cols['sfi_slfid']->option->newMethod = 'text';
$dbo->cols['sfi_slfid']->option->editMethod = 'text';

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
$dbo->newModifier = 'shelf_input_custom_new';
function shelf_input_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'shelf_input_custom_edit';
function shelf_input_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'shelf_input_custom_search';
function shelf_input_custom_search(&$search){
}

$dbo->deleteModifier = 'shelf_input_custom_delete';
function shelf_input_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}
*/
?>