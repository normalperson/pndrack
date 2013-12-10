<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'setup_board';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smboard';
$dbo->key = array('sb_id');
$dbo->sql = 'select smboard.* 
from smboard';
$dbo->col = array('sb_id', 'sb_cusid', 'sb_sgid', 'sb_slfid', 'sb_parentid', 'sb_barcode', 'sb_createddate');
$dbo->colList = array('sb_cusid', 'sb_createddate', 'sb_sgid', 'sb_slfid', 'sb_barcode');
$dbo->colDetail = array();
$dbo->colNew = array('sb_cusid', 'sb_sgid', 'sb_slfid');
$dbo->colEdit = array();
$dbo->colSearch = array('sb_cusid', 'sb_barcode', 'sb_createddate');
$dbo->colExport = array();
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = false;
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

$dbo->cols['sb_id'] = new DBO_COL('sb_id', 'int4', '4', '-1');
$dbo->cols['sb_id']->inputTypeDefault = 'text';
$dbo->cols['sb_id']->searchMode = 'exact';
$dbo->cols['sb_id']->capContClassDefault = array();
$dbo->cols['sb_id']->valContClassDefault = array();
$dbo->cols['sb_id']->option->defaultMethod = 'text';
$dbo->cols['sb_id']->option->searchMethod = 'text';
$dbo->cols['sb_id']->option->listMethod = 'text';
$dbo->cols['sb_id']->option->detailMethod = 'text';
$dbo->cols['sb_id']->option->newMethod = 'text';
$dbo->cols['sb_id']->option->editMethod = 'text';
$dbo->cols['sb_cusid'] = new DBO_COL('sb_cusid', 'int4', '4', '-1');
$dbo->cols['sb_cusid']->inputTypeDefault = 'text';
$dbo->cols['sb_cusid']->mandatoryNew = 1;
$dbo->cols['sb_cusid']->mandatoryEdit = 1;
$dbo->cols['sb_cusid']->searchMode = 'exact';
$dbo->cols['sb_cusid']->capContClassDefault = array();
$dbo->cols['sb_cusid']->valContClassDefault = array();
$dbo->cols['sb_cusid']->option->defaultMethod = 'text';
$dbo->cols['sb_cusid']->option->searchMethod = 'text';
$dbo->cols['sb_cusid']->option->listMethod = 'text';
$dbo->cols['sb_cusid']->option->detailMethod = 'text';
$dbo->cols['sb_cusid']->option->newMethod = 'text';
$dbo->cols['sb_cusid']->option->editMethod = 'text';
$dbo->cols['sb_slfid'] = new DBO_COL('sb_slfid', 'int4', '4', '-1');
$dbo->cols['sb_slfid']->inputTypeDefault = 'select';
$dbo->cols['sb_slfid']->mandatoryNew = 1;
$dbo->cols['sb_slfid']->mandatoryEdit = 1;
$dbo->cols['sb_slfid']->searchMode = 'exact';
$dbo->cols['sb_slfid']->capContClassDefault = array();
$dbo->cols['sb_slfid']->valContClassDefault = array();
$dbo->cols['sb_slfid']->option->default = 'select sf_id, sf_code from smshelfsetting
order by sf_seq';
$dbo->cols['sb_slfid']->option->defaultMethod = 'sql';
$dbo->cols['sb_slfid']->option->searchMethod = 'text';
$dbo->cols['sb_slfid']->option->listMethod = 'text';
$dbo->cols['sb_slfid']->option->detailMethod = 'text';
$dbo->cols['sb_slfid']->option->newMethod = 'text';
$dbo->cols['sb_slfid']->option->editMethod = 'text';
$dbo->cols['sb_parentid'] = new DBO_COL('sb_parentid', 'int4', '4', '-1');
$dbo->cols['sb_parentid']->inputTypeDefault = 'text';
$dbo->cols['sb_parentid']->searchMode = 'exact';
$dbo->cols['sb_parentid']->capContClassDefault = array();
$dbo->cols['sb_parentid']->valContClassDefault = array();
$dbo->cols['sb_parentid']->option->defaultMethod = 'text';
$dbo->cols['sb_parentid']->option->searchMethod = 'text';
$dbo->cols['sb_parentid']->option->listMethod = 'text';
$dbo->cols['sb_parentid']->option->detailMethod = 'text';
$dbo->cols['sb_parentid']->option->newMethod = 'text';
$dbo->cols['sb_parentid']->option->editMethod = 'text';
$dbo->cols['sb_barcode'] = new DBO_COL('sb_barcode', 'varchar', '-1', '54');
$dbo->cols['sb_barcode']->inputTypeDefault = 'text';
$dbo->cols['sb_barcode']->searchMode = 'exact';
$dbo->cols['sb_barcode']->capContClassDefault = array();
$dbo->cols['sb_barcode']->valContClassDefault = array();
$dbo->cols['sb_barcode']->option->defaultMethod = 'text';
$dbo->cols['sb_barcode']->option->searchMethod = 'text';
$dbo->cols['sb_barcode']->option->listMethod = 'text';
$dbo->cols['sb_barcode']->option->detailMethod = 'text';
$dbo->cols['sb_barcode']->option->newMethod = 'text';
$dbo->cols['sb_barcode']->option->editMethod = 'text';
$dbo->cols['sb_createddate'] = new DBO_COL('sb_createddate', 'timestamptz', '8', '-1');
$dbo->cols['sb_createddate']->displayDataType = 'date';
$dbo->cols['sb_createddate']->inputTypeDefault = 'text';
$dbo->cols['sb_createddate']->searchMode = 'exact';
$dbo->cols['sb_createddate']->capContClassDefault = array();
$dbo->cols['sb_createddate']->valContClassDefault = array();
$dbo->cols['sb_createddate']->option->defaultMethod = 'text';
$dbo->cols['sb_createddate']->option->searchMethod = 'text';
$dbo->cols['sb_createddate']->option->listMethod = 'text';
$dbo->cols['sb_createddate']->option->detailMethod = 'text';
$dbo->cols['sb_createddate']->option->newMethod = 'text';
$dbo->cols['sb_createddate']->option->editMethod = 'text';
$dbo->cols['sb_sgid'] = new DBO_COL('sb_sgid', 'int4', '4', '-1');
$dbo->cols['sb_sgid']->inputTypeDefault = 'select';
$dbo->cols['sb_sgid']->mandatoryNew = 1;
$dbo->cols['sb_sgid']->mandatoryEdit = 1;
$dbo->cols['sb_sgid']->searchMode = 'exact';
$dbo->cols['sb_sgid']->capContClassDefault = array();
$dbo->cols['sb_sgid']->valContClassDefault = array();
$dbo->cols['sb_sgid']->option->default = 'select sg_id, sg_groupname from smshelfgroup
order by sg_seq';
$dbo->cols['sb_sgid']->option->defaultMethod = 'sql';
$dbo->cols['sb_sgid']->option->searchMethod = 'text';
$dbo->cols['sb_sgid']->option->listMethod = 'text';
$dbo->cols['sb_sgid']->option->detailMethod = 'text';
$dbo->cols['sb_sgid']->option->newMethod = 'text';
$dbo->cols['sb_sgid']->option->editMethod = 'text';

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
$dbo->newModifier = 'setup_board_custom_new';
function setup_board_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'setup_board_custom_edit';
function setup_board_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'setup_board_custom_search';
function setup_board_custom_search(&$search){
}

$dbo->deleteModifier = 'setup_board_custom_delete';
function setup_board_custom_delete($table, $wheres){
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