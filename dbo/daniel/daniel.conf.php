<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'daniel';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'daniel';
$dbo->key = array('d_id');
$dbo->sql = 'select * from daniel';
$dbo->col = array('d_id', 'd_name', 'd_gender');
$dbo->colList = array('d_name', 'd_gender');
$dbo->colDetail = array('d_name', 'd_gender');
$dbo->colNew = array('d_name', 'd_gender');
$dbo->colEdit = array('d_name', 'd_gender');
$dbo->colSearch = array('d_name', 'd_gender');
$dbo->colExport = array('d_name', 'd_gender');
$dbo->colSort = array();
$dbo->canSearch = false;
$dbo->canNew = true;
$dbo->canEdit = true;
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

$dbo->cols['d_id'] = new DBO_COL('d_id', 'int4', '4', '-1');
$dbo->cols['d_id']->inputTypeDefault = 'text';
$dbo->cols['d_id']->searchMode = 'exact';
$dbo->cols['d_id']->capContClassDefault = array();
$dbo->cols['d_id']->valContClassDefault = array();
$dbo->cols['d_id']->option->defaultMethod = 'text';
$dbo->cols['d_id']->option->searchMethod = 'text';
$dbo->cols['d_id']->option->listMethod = 'text';
$dbo->cols['d_id']->option->detailMethod = 'text';
$dbo->cols['d_id']->option->newMethod = 'text';
$dbo->cols['d_id']->option->editMethod = 'text';
$dbo->cols['d_name'] = new DBO_COL('d_name', 'varchar', '-1', '204');
$dbo->cols['d_name']->inputTypeDefault = 'text';
$dbo->cols['d_name']->searchMode = 'exact';
$dbo->cols['d_name']->capContClassDefault = array();
$dbo->cols['d_name']->valContClassDefault = array();
$dbo->cols['d_name']->option->defaultMethod = 'text';
$dbo->cols['d_name']->option->searchMethod = 'text';
$dbo->cols['d_name']->option->listMethod = 'text';
$dbo->cols['d_name']->option->detailMethod = 'text';
$dbo->cols['d_name']->option->newMethod = 'text';
$dbo->cols['d_name']->option->editMethod = 'text';
$dbo->cols['d_gender'] = new DBO_COL('d_gender', 'varchar', '-1', '6');
$dbo->cols['d_gender']->inputTypeDefault = 'text';
$dbo->cols['d_gender']->searchMode = 'exact';
$dbo->cols['d_gender']->capContClassDefault = array();
$dbo->cols['d_gender']->valContClassDefault = array();
$dbo->cols['d_gender']->option->defaultMethod = 'text';
$dbo->cols['d_gender']->option->searchMethod = 'text';
$dbo->cols['d_gender']->option->listMethod = 'text';
$dbo->cols['d_gender']->option->detailMethod = 'text';
$dbo->cols['d_gender']->option->newMethod = 'text';
$dbo->cols['d_gender']->option->editMethod = 'text';

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
$dbo->newModifier = 'daniel_custom_new';
function daniel_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'daniel_custom_edit';
function daniel_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'daniel_custom_search';
function daniel_custom_search(&$search){
}

$dbo->deleteModifier = 'daniel_custom_delete';
function daniel_custom_delete($table, $wheres){
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