<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'setup_shelfgroup';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smshelfgroup';
$dbo->key = array('sg_id');
$dbo->sql = 'select * from smshelfgroup';
$dbo->col = array('sg_id', 'sg_code', 'sg_groupname', 'sg_seq');
$dbo->colList = array('sg_code', 'sg_groupname', 'sg_seq');
$dbo->colDetail = array('sg_id', 'sg_groupname', 'sg_seq');
$dbo->colNew = array('sg_code', 'sg_groupname', 'sg_seq');
$dbo->colEdit = array('sg_groupname', 'sg_seq');
$dbo->colSearch = array('sg_groupname');
$dbo->colExport = array('sg_id', 'sg_groupname', 'sg_seq');
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = true;
$dbo->canDelete = true;
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

$dbo->cols['sg_id'] = new DBO_COL('sg_id', 'int4', '4', '-1');
$dbo->cols['sg_id']->inputTypeDefault = 'text';
$dbo->cols['sg_id']->searchMode = 'exact';
$dbo->cols['sg_id']->capContClassDefault = array();
$dbo->cols['sg_id']->valContClassDefault = array();
$dbo->cols['sg_id']->option->defaultMethod = 'text';
$dbo->cols['sg_id']->option->searchMethod = 'text';
$dbo->cols['sg_id']->option->listMethod = 'text';
$dbo->cols['sg_id']->option->detailMethod = 'text';
$dbo->cols['sg_id']->option->newMethod = 'text';
$dbo->cols['sg_id']->option->editMethod = 'text';
$dbo->cols['sg_groupname'] = new DBO_COL('sg_groupname', 'varchar', '-1', '204');
$dbo->cols['sg_groupname']->inputTypeDefault = 'text';
$dbo->cols['sg_groupname']->searchMode = 'exact';
$dbo->cols['sg_groupname']->capContClassDefault = array();
$dbo->cols['sg_groupname']->valContClassDefault = array();
$dbo->cols['sg_groupname']->option->defaultMethod = 'text';
$dbo->cols['sg_groupname']->option->searchMethod = 'text';
$dbo->cols['sg_groupname']->option->listMethod = 'text';
$dbo->cols['sg_groupname']->option->detailMethod = 'text';
$dbo->cols['sg_groupname']->option->newMethod = 'text';
$dbo->cols['sg_groupname']->option->editMethod = 'text';
$dbo->cols['sg_seq'] = new DBO_COL('sg_seq', 'int4', '4', '-1');
$dbo->cols['sg_seq']->inputTypeDefault = 'text';
$dbo->cols['sg_seq']->searchMode = 'exact';
$dbo->cols['sg_seq']->capContClassDefault = array();
$dbo->cols['sg_seq']->valContClassDefault = array();
$dbo->cols['sg_seq']->option->defaultMethod = 'text';
$dbo->cols['sg_seq']->option->searchMethod = 'text';
$dbo->cols['sg_seq']->option->listMethod = 'text';
$dbo->cols['sg_seq']->option->detailMethod = 'text';
$dbo->cols['sg_seq']->option->newMethod = 'text';
$dbo->cols['sg_seq']->option->editMethod = 'text';
$dbo->cols['sg_code'] = new DBO_COL('sg_code', 'varchar', '-1', '14');
$dbo->cols['sg_code']->inputTypeDefault = 'text';
$dbo->cols['sg_code']->searchMode = 'exact';
$dbo->cols['sg_code']->capContClassDefault = array();
$dbo->cols['sg_code']->valContClassDefault = array();
$dbo->cols['sg_code']->option->defaultMethod = 'text';
$dbo->cols['sg_code']->option->searchMethod = 'text';
$dbo->cols['sg_code']->option->listMethod = 'text';
$dbo->cols['sg_code']->option->detailMethod = 'text';
$dbo->cols['sg_code']->option->newMethod = 'text';
$dbo->cols['sg_code']->option->editMethod = 'text';

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
$dbo->newModifier = 'setup_shelfgroup_custom_new';
function setup_shelfgroup_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'setup_shelfgroup_custom_edit';
function setup_shelfgroup_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'setup_shelfgroup_custom_search';
function setup_shelfgroup_custom_search(&$search){
}

$dbo->deleteModifier = 'setup_shelfgroup_custom_delete';
function setup_shelfgroup_custom_delete($table, $wheres){
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