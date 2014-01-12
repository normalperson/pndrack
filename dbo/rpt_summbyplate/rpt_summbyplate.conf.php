<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'rpt_summbyplate';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smbtransaction';
$dbo->key = array();
$dbo->sql = 'select sum(smb_printqty) as totalqty,count(*) as totalprint, sp_platename
from smbtransaction join smplate on smb_spid = sp_id
group by sp_platename';
$dbo->col = array('totalqty', 'totalprint', 'sp_platename');
$dbo->colList = array('sp_platename', 'totalqty', 'totalprint');
$dbo->colDetail = array('sp_platename', 'totalqty', 'totalprint');
$dbo->colNew = array('sp_platename', 'totalqty', 'totalprint');
$dbo->colEdit = array('sp_platename', 'totalqty', 'totalprint');
$dbo->colSearch = array('sp_platename', 'totalqty', 'totalprint');
$dbo->colExport = array('sp_platename', 'totalqty', 'totalprint');
$dbo->colSort = array();
$dbo->canSearch = true;
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

$dbo->cols['totalqty'] = new DBO_COL('totalqty', 'NEWDECIMAL', '33', '0');
$dbo->cols['totalqty']->inputTypeDefault = 'text';
$dbo->cols['totalqty']->searchMode = 'exact';
$dbo->cols['totalqty']->capContClassDefault = array();
$dbo->cols['totalqty']->valContClassDefault = array();
$dbo->cols['totalqty']->option->defaultMethod = 'text';
$dbo->cols['totalqty']->option->searchMethod = 'text';
$dbo->cols['totalqty']->option->listMethod = 'text';
$dbo->cols['totalqty']->option->detailMethod = 'text';
$dbo->cols['totalqty']->option->newMethod = 'text';
$dbo->cols['totalqty']->option->editMethod = 'text';
$dbo->cols['totalprint'] = new DBO_COL('totalprint', 'LONGLONG', '21', '0');
$dbo->cols['totalprint']->inputTypeDefault = 'text';
$dbo->cols['totalprint']->searchMode = 'exact';
$dbo->cols['totalprint']->capContClassDefault = array();
$dbo->cols['totalprint']->valContClassDefault = array();
$dbo->cols['totalprint']->option->defaultMethod = 'text';
$dbo->cols['totalprint']->option->searchMethod = 'text';
$dbo->cols['totalprint']->option->listMethod = 'text';
$dbo->cols['totalprint']->option->detailMethod = 'text';
$dbo->cols['totalprint']->option->newMethod = 'text';
$dbo->cols['totalprint']->option->editMethod = 'text';
$dbo->cols['sp_platename'] = new DBO_COL('sp_platename', 'VAR_STRING', '300', '0');
$dbo->cols['sp_platename']->inputTypeDefault = 'text';
$dbo->cols['sp_platename']->searchMode = 'exact';
$dbo->cols['sp_platename']->capContClassDefault = array();
$dbo->cols['sp_platename']->valContClassDefault = array();
$dbo->cols['sp_platename']->option->defaultMethod = 'text';
$dbo->cols['sp_platename']->option->searchMethod = 'text';
$dbo->cols['sp_platename']->option->listMethod = 'text';
$dbo->cols['sp_platename']->option->detailMethod = 'text';
$dbo->cols['sp_platename']->option->newMethod = 'text';
$dbo->cols['sp_platename']->option->editMethod = 'text';
$dbo->cols['sp_orgid'] = new DBO_COL('sp_orgid', 'LONG', '11', '0');
$dbo->cols['sp_orgid']->inputTypeDefault = 'text';
$dbo->cols['sp_orgid']->searchMode = 'exact';
$dbo->cols['sp_orgid']->capContClassDefault = array();
$dbo->cols['sp_orgid']->valContClassDefault = array();
$dbo->cols['sp_orgid']->option->defaultMethod = 'text';
$dbo->cols['sp_orgid']->option->searchMethod = 'text';
$dbo->cols['sp_orgid']->option->listMethod = 'text';
$dbo->cols['sp_orgid']->option->detailMethod = 'text';
$dbo->cols['sp_orgid']->option->newMethod = 'text';
$dbo->cols['sp_orgid']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_rpt_summbyplate_custom_new';
function dbo_rpt_summbyplate_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_rpt_summbyplate_custom_edit';
function dbo_rpt_summbyplate_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_rpt_summbyplate_custom_search';
function dbo_rpt_summbyplate_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_rpt_summbyplate_custom_delete';
function dbo_rpt_summbyplate_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_rpt_summbyplate_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>