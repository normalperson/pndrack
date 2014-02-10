<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'plate_audit';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fcdbaudit';
$dbo->key = array();
$dbo->sql = 'select * from fcdbaudit';
$dbo->col = array('dba_id', 'dba_created', 'dba_userid', 'dba_table', 'dba_column', 'dba_oldvalue', 'dba_newvalue', 'dba_keys', 'dba_key1', 'dba_key2', 'dba_key3', 'dba_key4', 'dba_key5');
$dbo->colList = array('dba_created', 'dba_userid', 'dba_oldvalue', 'dba_newvalue');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('dba_id', 'dba_created', 'dba_userid', 'dba_table', 'dba_column', 'dba_oldvalue', 'dba_newvalue', 'dba_keys', 'dba_key1', 'dba_key2', 'dba_key3', 'dba_key4', 'dba_key5');
$dbo->colNew = array('dba_id', 'dba_created', 'dba_userid', 'dba_table', 'dba_column', 'dba_oldvalue', 'dba_newvalue', 'dba_keys', 'dba_key1', 'dba_key2', 'dba_key3', 'dba_key4', 'dba_key5');
$dbo->colEdit = array('dba_id', 'dba_created', 'dba_userid', 'dba_table', 'dba_column', 'dba_oldvalue', 'dba_newvalue', 'dba_keys', 'dba_key1', 'dba_key2', 'dba_key3', 'dba_key4', 'dba_key5');
$dbo->colSearch = array('dba_id', 'dba_created', 'dba_userid', 'dba_table', 'dba_column', 'dba_oldvalue', 'dba_newvalue', 'dba_keys', 'dba_key1', 'dba_key2', 'dba_key3', 'dba_key4', 'dba_key5');
$dbo->colExport = array('dba_id', 'dba_created', 'dba_userid', 'dba_table', 'dba_column', 'dba_oldvalue', 'dba_newvalue', 'dba_keys', 'dba_key1', 'dba_key2', 'dba_key3', 'dba_key4', 'dba_key5');
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

$dbo->cols['dba_id'] = new DBO_COL('dba_id', 'LONG', '11', '0');
$dbo->cols['dba_id']->inputTypeDefault = 'text';
$dbo->cols['dba_id']->searchMode = 'exact';
$dbo->cols['dba_id']->capContClassDefault = array();
$dbo->cols['dba_id']->valContClassDefault = array();
$dbo->cols['dba_id']->option->defaultMethod = 'text';
$dbo->cols['dba_id']->option->searchMethod = 'text';
$dbo->cols['dba_id']->option->listMethod = 'text';
$dbo->cols['dba_id']->option->detailMethod = 'text';
$dbo->cols['dba_id']->option->newMethod = 'text';
$dbo->cols['dba_id']->option->editMethod = 'text';
$dbo->cols['dba_created'] = new DBO_COL('dba_created', 'DATETIME', '19', '0');
$dbo->cols['dba_created']->inputTypeDefault = 'text';
$dbo->cols['dba_created']->searchMode = 'exact';
$dbo->cols['dba_created']->capContClassDefault = array();
$dbo->cols['dba_created']->valContClassDefault = array();
$dbo->cols['dba_created']->option->defaultMethod = 'text';
$dbo->cols['dba_created']->option->searchMethod = 'text';
$dbo->cols['dba_created']->option->listMethod = 'text';
$dbo->cols['dba_created']->option->detailMethod = 'text';
$dbo->cols['dba_created']->option->newMethod = 'text';
$dbo->cols['dba_created']->option->editMethod = 'text';
$dbo->cols['dba_userid'] = new DBO_COL('dba_userid', 'VAR_STRING', '150', '0');
$dbo->cols['dba_userid']->inputTypeDefault = 'text';
$dbo->cols['dba_userid']->searchMode = 'exact';
$dbo->cols['dba_userid']->capContClassDefault = array();
$dbo->cols['dba_userid']->valContClassDefault = array();
$dbo->cols['dba_userid']->option->defaultMethod = 'text';
$dbo->cols['dba_userid']->option->searchMethod = 'text';
$dbo->cols['dba_userid']->option->listMethod = 'text';
$dbo->cols['dba_userid']->option->detailMethod = 'text';
$dbo->cols['dba_userid']->option->newMethod = 'text';
$dbo->cols['dba_userid']->option->editMethod = 'text';
$dbo->cols['dba_table'] = new DBO_COL('dba_table', 'VAR_STRING', '192', '0');
$dbo->cols['dba_table']->inputTypeDefault = 'text';
$dbo->cols['dba_table']->searchMode = 'exact';
$dbo->cols['dba_table']->capContClassDefault = array();
$dbo->cols['dba_table']->valContClassDefault = array();
$dbo->cols['dba_table']->option->defaultMethod = 'text';
$dbo->cols['dba_table']->option->searchMethod = 'text';
$dbo->cols['dba_table']->option->listMethod = 'text';
$dbo->cols['dba_table']->option->detailMethod = 'text';
$dbo->cols['dba_table']->option->newMethod = 'text';
$dbo->cols['dba_table']->option->editMethod = 'text';
$dbo->cols['dba_column'] = new DBO_COL('dba_column', 'VAR_STRING', '192', '0');
$dbo->cols['dba_column']->inputTypeDefault = 'text';
$dbo->cols['dba_column']->searchMode = 'exact';
$dbo->cols['dba_column']->capContClassDefault = array();
$dbo->cols['dba_column']->valContClassDefault = array();
$dbo->cols['dba_column']->option->defaultMethod = 'text';
$dbo->cols['dba_column']->option->searchMethod = 'text';
$dbo->cols['dba_column']->option->listMethod = 'text';
$dbo->cols['dba_column']->option->detailMethod = 'text';
$dbo->cols['dba_column']->option->newMethod = 'text';
$dbo->cols['dba_column']->option->editMethod = 'text';
$dbo->cols['dba_oldvalue'] = new DBO_COL('dba_oldvalue', 'VAR_STRING', '12000', '0');
$dbo->cols['dba_oldvalue']->inputTypeDefault = 'text';
$dbo->cols['dba_oldvalue']->searchMode = 'exact';
$dbo->cols['dba_oldvalue']->capContClassDefault = array();
$dbo->cols['dba_oldvalue']->valContClassDefault = array();
$dbo->cols['dba_oldvalue']->option->defaultMethod = 'text';
$dbo->cols['dba_oldvalue']->option->searchMethod = 'text';
$dbo->cols['dba_oldvalue']->option->listMethod = 'text';
$dbo->cols['dba_oldvalue']->option->detailMethod = 'text';
$dbo->cols['dba_oldvalue']->option->newMethod = 'text';
$dbo->cols['dba_oldvalue']->option->editMethod = 'text';
$dbo->cols['dba_newvalue'] = new DBO_COL('dba_newvalue', 'VAR_STRING', '12000', '0');
$dbo->cols['dba_newvalue']->inputTypeDefault = 'text';
$dbo->cols['dba_newvalue']->searchMode = 'exact';
$dbo->cols['dba_newvalue']->capContClassDefault = array();
$dbo->cols['dba_newvalue']->valContClassDefault = array();
$dbo->cols['dba_newvalue']->option->defaultMethod = 'text';
$dbo->cols['dba_newvalue']->option->searchMethod = 'text';
$dbo->cols['dba_newvalue']->option->listMethod = 'text';
$dbo->cols['dba_newvalue']->option->detailMethod = 'text';
$dbo->cols['dba_newvalue']->option->newMethod = 'text';
$dbo->cols['dba_newvalue']->option->editMethod = 'text';
$dbo->cols['dba_keys'] = new DBO_COL('dba_keys', 'VAR_STRING', '3000', '0');
$dbo->cols['dba_keys']->inputTypeDefault = 'text';
$dbo->cols['dba_keys']->searchMode = 'exact';
$dbo->cols['dba_keys']->capContClassDefault = array();
$dbo->cols['dba_keys']->valContClassDefault = array();
$dbo->cols['dba_keys']->option->defaultMethod = 'text';
$dbo->cols['dba_keys']->option->searchMethod = 'text';
$dbo->cols['dba_keys']->option->listMethod = 'text';
$dbo->cols['dba_keys']->option->detailMethod = 'text';
$dbo->cols['dba_keys']->option->newMethod = 'text';
$dbo->cols['dba_keys']->option->editMethod = 'text';
$dbo->cols['dba_key1'] = new DBO_COL('dba_key1', 'VAR_STRING', '600', '0');
$dbo->cols['dba_key1']->inputTypeDefault = 'text';
$dbo->cols['dba_key1']->searchMode = 'exact';
$dbo->cols['dba_key1']->capContClassDefault = array();
$dbo->cols['dba_key1']->valContClassDefault = array();
$dbo->cols['dba_key1']->option->defaultMethod = 'text';
$dbo->cols['dba_key1']->option->searchMethod = 'text';
$dbo->cols['dba_key1']->option->listMethod = 'text';
$dbo->cols['dba_key1']->option->detailMethod = 'text';
$dbo->cols['dba_key1']->option->newMethod = 'text';
$dbo->cols['dba_key1']->option->editMethod = 'text';
$dbo->cols['dba_key2'] = new DBO_COL('dba_key2', 'VAR_STRING', '600', '0');
$dbo->cols['dba_key2']->inputTypeDefault = 'text';
$dbo->cols['dba_key2']->searchMode = 'exact';
$dbo->cols['dba_key2']->capContClassDefault = array();
$dbo->cols['dba_key2']->valContClassDefault = array();
$dbo->cols['dba_key2']->option->defaultMethod = 'text';
$dbo->cols['dba_key2']->option->searchMethod = 'text';
$dbo->cols['dba_key2']->option->listMethod = 'text';
$dbo->cols['dba_key2']->option->detailMethod = 'text';
$dbo->cols['dba_key2']->option->newMethod = 'text';
$dbo->cols['dba_key2']->option->editMethod = 'text';
$dbo->cols['dba_key3'] = new DBO_COL('dba_key3', 'VAR_STRING', '600', '0');
$dbo->cols['dba_key3']->inputTypeDefault = 'text';
$dbo->cols['dba_key3']->searchMode = 'exact';
$dbo->cols['dba_key3']->capContClassDefault = array();
$dbo->cols['dba_key3']->valContClassDefault = array();
$dbo->cols['dba_key3']->option->defaultMethod = 'text';
$dbo->cols['dba_key3']->option->searchMethod = 'text';
$dbo->cols['dba_key3']->option->listMethod = 'text';
$dbo->cols['dba_key3']->option->detailMethod = 'text';
$dbo->cols['dba_key3']->option->newMethod = 'text';
$dbo->cols['dba_key3']->option->editMethod = 'text';
$dbo->cols['dba_key4'] = new DBO_COL('dba_key4', 'VAR_STRING', '600', '0');
$dbo->cols['dba_key4']->inputTypeDefault = 'text';
$dbo->cols['dba_key4']->searchMode = 'exact';
$dbo->cols['dba_key4']->capContClassDefault = array();
$dbo->cols['dba_key4']->valContClassDefault = array();
$dbo->cols['dba_key4']->option->defaultMethod = 'text';
$dbo->cols['dba_key4']->option->searchMethod = 'text';
$dbo->cols['dba_key4']->option->listMethod = 'text';
$dbo->cols['dba_key4']->option->detailMethod = 'text';
$dbo->cols['dba_key4']->option->newMethod = 'text';
$dbo->cols['dba_key4']->option->editMethod = 'text';
$dbo->cols['dba_key5'] = new DBO_COL('dba_key5', 'VAR_STRING', '600', '0');
$dbo->cols['dba_key5']->inputTypeDefault = 'text';
$dbo->cols['dba_key5']->searchMode = 'exact';
$dbo->cols['dba_key5']->capContClassDefault = array();
$dbo->cols['dba_key5']->valContClassDefault = array();
$dbo->cols['dba_key5']->option->defaultMethod = 'text';
$dbo->cols['dba_key5']->option->searchMethod = 'text';
$dbo->cols['dba_key5']->option->listMethod = 'text';
$dbo->cols['dba_key5']->option->detailMethod = 'text';
$dbo->cols['dba_key5']->option->newMethod = 'text';
$dbo->cols['dba_key5']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_plate_audit_custom_new';
function dbo_plate_audit_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_plate_audit_custom_edit';
function dbo_plate_audit_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_plate_audit_custom_search';
function dbo_plate_audit_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_plate_audit_custom_delete';
function dbo_plate_audit_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_plate_audit_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>