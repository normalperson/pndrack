<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'orgpackage';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smorgpackage';
$dbo->key = array('op_id');
$dbo->sql = 'select smorgpackage.*, ceil(datediff(op_enddate, op_startdate)/31) as months from smorgpackage where op_orgid = {$toporgID}';
$dbo->col = array('op_id', 'op_orgid', 'op_packageid', 'op_created', 'op_createby', 'op_status', 'op_startdate', 'op_enddate', 'op_enddateori', 'op_previd', 'months');
$dbo->colList = array('op_orgid', 'op_packageid', 'op_startdate', 'op_enddate', 'op_created', 'op_createby');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('op_id', 'op_orgid', 'op_packageid', 'op_created', 'op_createby', 'op_status', 'op_startdate', 'op_enddate');
$dbo->colNew = array('op_packageid', 'op_startdate', 'months', 'op_status');
$dbo->colEdit = array('op_packageid', 'op_startdate', 'months', 'op_status');
$dbo->colSearch = array('op_orgid', 'op_packageid', 'op_created', 'op_createby', 'op_status', 'op_startdate', 'op_enddate');
$dbo->colExport = array('op_id', 'op_orgid', 'op_packageid', 'op_created', 'op_createby', 'op_status', 'op_startdate', 'op_enddate');
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
$dbo->newModifier = 'dbo_orgpackage_custom_new';
$dbo->editModifier = 'dbo_orgpackage_custom_edit';
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

$dbo->cols['op_id'] = new DBO_COL('op_id', 'LONG', '11', '0');
$dbo->cols['op_id']->inputTypeDefault = 'text';
$dbo->cols['op_id']->searchMode = 'exact';
$dbo->cols['op_id']->capContClassDefault = array();
$dbo->cols['op_id']->valContClassDefault = array();
$dbo->cols['op_id']->option->defaultMethod = 'text';
$dbo->cols['op_id']->option->searchMethod = 'text';
$dbo->cols['op_id']->option->listMethod = 'text';
$dbo->cols['op_id']->option->detailMethod = 'text';
$dbo->cols['op_id']->option->newMethod = 'text';
$dbo->cols['op_id']->option->editMethod = 'text';
$dbo->cols['op_orgid'] = new DBO_COL('op_orgid', 'LONG', '11', '0');
$dbo->cols['op_orgid']->inputTypeDefault = 'text';
$dbo->cols['op_orgid']->searchMode = 'exact';
$dbo->cols['op_orgid']->capContClassDefault = array();
$dbo->cols['op_orgid']->valContClassDefault = array();
$dbo->cols['op_orgid']->option->defaultMethod = 'text';
$dbo->cols['op_orgid']->option->searchMethod = 'text';
$dbo->cols['op_orgid']->option->listMethod = 'text';
$dbo->cols['op_orgid']->option->detailMethod = 'text';
$dbo->cols['op_orgid']->option->newMethod = 'text';
$dbo->cols['op_orgid']->option->editMethod = 'text';
$dbo->cols['op_packageid'] = new DBO_COL('op_packageid', 'LONG', '11', '0');
$dbo->cols['op_packageid']->inputTypeDefault = 'select';
$dbo->cols['op_packageid']->mandatoryNew = 1;
$dbo->cols['op_packageid']->mandatoryEdit = 1;
$dbo->cols['op_packageid']->searchMode = 'exact';
$dbo->cols['op_packageid']->capContClassDefault = array();
$dbo->cols['op_packageid']->valContClassDefault = array();
$dbo->cols['op_packageid']->option->default = 'select pk_id, pk_description from smpackage order by 2 asc';
$dbo->cols['op_packageid']->option->defaultMethod = 'sql';
$dbo->cols['op_packageid']->option->searchMethod = 'text';
$dbo->cols['op_packageid']->option->listMethod = 'text';
$dbo->cols['op_packageid']->option->detailMethod = 'text';
$dbo->cols['op_packageid']->option->newMethod = 'text';
$dbo->cols['op_packageid']->option->editMethod = 'text';
$dbo->cols['op_created'] = new DBO_COL('op_created', 'DATETIME', '19', '0');
$dbo->cols['op_created']->inputTypeDefault = 'text';
$dbo->cols['op_created']->searchMode = 'exact';
$dbo->cols['op_created']->capContClassDefault = array();
$dbo->cols['op_created']->valContClassDefault = array();
$dbo->cols['op_created']->option->defaultMethod = 'text';
$dbo->cols['op_created']->option->searchMethod = 'text';
$dbo->cols['op_created']->option->listMethod = 'text';
$dbo->cols['op_created']->option->detailMethod = 'text';
$dbo->cols['op_created']->option->newMethod = 'text';
$dbo->cols['op_created']->option->editMethod = 'text';
$dbo->cols['op_createby'] = new DBO_COL('op_createby', 'VAR_STRING', '150', '0');
$dbo->cols['op_createby']->inputTypeDefault = 'text';
$dbo->cols['op_createby']->searchMode = 'exact';
$dbo->cols['op_createby']->capContClassDefault = array();
$dbo->cols['op_createby']->valContClassDefault = array();
$dbo->cols['op_createby']->option->defaultMethod = 'text';
$dbo->cols['op_createby']->option->searchMethod = 'text';
$dbo->cols['op_createby']->option->listMethod = 'text';
$dbo->cols['op_createby']->option->detailMethod = 'text';
$dbo->cols['op_createby']->option->newMethod = 'text';
$dbo->cols['op_createby']->option->editMethod = 'text';
$dbo->cols['op_status'] = new DBO_COL('op_status', '', '4', '0');
$dbo->cols['op_status']->defaultNewValueMethod = 'text';
$dbo->cols['op_status']->defaultNewValue = 1;
$dbo->cols['op_status']->inputTypeDefault = 'radio';
$dbo->cols['op_status']->size = 2;
$dbo->cols['op_status']->searchMode = 'exact';
$dbo->cols['op_status']->capContClassDefault = array();
$dbo->cols['op_status']->valContClassDefault = array();
$dbo->cols['op_status']->option->default = '1/Active
0/Inactive';
$dbo->cols['op_status']->option->defaultMethod = 'text';
$dbo->cols['op_status']->option->searchMethod = 'text';
$dbo->cols['op_status']->option->listMethod = 'text';
$dbo->cols['op_status']->option->detailMethod = 'text';
$dbo->cols['op_status']->option->newMethod = 'text';
$dbo->cols['op_status']->option->editMethod = 'text';
$dbo->cols['op_startdate'] = new DBO_COL('op_startdate', 'DATE', '10', '0');
$dbo->cols['op_startdate']->displayDataType = 'date';
$dbo->cols['op_startdate']->defaultNewValueMethod = 'phps';
$dbo->cols['op_startdate']->defaultNewValue = 'date(\'Y-m-d\')';
$dbo->cols['op_startdate']->inputTypeDefault = 'text';
$dbo->cols['op_startdate']->format = 'dd-mm-yyyy';
$dbo->cols['op_startdate']->mandatoryNew = 1;
$dbo->cols['op_startdate']->mandatoryEdit = 1;
$dbo->cols['op_startdate']->searchMode = 'exact';
$dbo->cols['op_startdate']->capContClassDefault = array();
$dbo->cols['op_startdate']->valContClassDefault = array();
$dbo->cols['op_startdate']->option->defaultMethod = 'text';
$dbo->cols['op_startdate']->option->searchMethod = 'text';
$dbo->cols['op_startdate']->option->listMethod = 'text';
$dbo->cols['op_startdate']->option->detailMethod = 'text';
$dbo->cols['op_startdate']->option->newMethod = 'text';
$dbo->cols['op_startdate']->option->editMethod = 'text';
$dbo->cols['op_enddate'] = new DBO_COL('op_enddate', 'DATE', '10', '0');
$dbo->cols['op_enddate']->displayDataType = 'date';
$dbo->cols['op_enddate']->inputTypeDefault = 'text';
$dbo->cols['op_enddate']->format = 'dd-mm-yyyy';
$dbo->cols['op_enddate']->searchMode = 'exact';
$dbo->cols['op_enddate']->capContClassDefault = array();
$dbo->cols['op_enddate']->valContClassDefault = array();
$dbo->cols['op_enddate']->option->defaultMethod = 'text';
$dbo->cols['op_enddate']->option->searchMethod = 'text';
$dbo->cols['op_enddate']->option->listMethod = 'text';
$dbo->cols['op_enddate']->option->detailMethod = 'text';
$dbo->cols['op_enddate']->option->newMethod = 'text';
$dbo->cols['op_enddate']->option->editMethod = 'text';
$dbo->cols['months'] = new DBO_COL('months', 'LONG', '9', '0');
$dbo->cols['months']->displayListModifier = '{months} ({op_startdate} - {op_enddate})';
$dbo->cols['months']->inputTypeDefault = 'text';
$dbo->cols['months']->mandatoryNew = 1;
$dbo->cols['months']->mandatoryEdit = 1;
$dbo->cols['months']->searchMode = 'exact';
$dbo->cols['months']->capContClassDefault = array();
$dbo->cols['months']->valContClassDefault = array();
$dbo->cols['months']->option->defaultMethod = 'text';
$dbo->cols['months']->option->searchMethod = 'text';
$dbo->cols['months']->option->listMethod = 'text';
$dbo->cols['months']->option->detailMethod = 'text';
$dbo->cols['months']->option->newMethod = 'text';
$dbo->cols['months']->option->editMethod = 'text';
$dbo->cols['op_enddateori'] = new DBO_COL('op_enddateori', 'DATE', '10', '0');
$dbo->cols['op_enddateori']->inputTypeDefault = 'text';
$dbo->cols['op_enddateori']->searchMode = 'exact';
$dbo->cols['op_enddateori']->capContClassDefault = array();
$dbo->cols['op_enddateori']->valContClassDefault = array();
$dbo->cols['op_enddateori']->option->defaultMethod = 'text';
$dbo->cols['op_enddateori']->option->searchMethod = 'text';
$dbo->cols['op_enddateori']->option->listMethod = 'text';
$dbo->cols['op_enddateori']->option->detailMethod = 'text';
$dbo->cols['op_enddateori']->option->newMethod = 'text';
$dbo->cols['op_enddateori']->option->editMethod = 'text';
$dbo->cols['op_previd'] = new DBO_COL('op_previd', 'LONG', '11', '0');
$dbo->cols['op_previd']->inputTypeDefault = 'text';
$dbo->cols['op_previd']->searchMode = 'exact';
$dbo->cols['op_previd']->capContClassDefault = array();
$dbo->cols['op_previd']->valContClassDefault = array();
$dbo->cols['op_previd']->option->defaultMethod = 'text';
$dbo->cols['op_previd']->option->searchMethod = 'text';
$dbo->cols['op_previd']->option->listMethod = 'text';
$dbo->cols['op_previd']->option->detailMethod = 'text';
$dbo->cols['op_previd']->option->newMethod = 'text';
$dbo->cols['op_previd']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_orgpackage_custom_new';
function dbo_orgpackage_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_orgpackage_custom_edit';
function dbo_orgpackage_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_orgpackage_custom_search';
function dbo_orgpackage_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_orgpackage_custom_delete';
function dbo_orgpackage_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_orgpackage_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>