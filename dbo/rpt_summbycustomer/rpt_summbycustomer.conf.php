<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'rpt_summbycustomer';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smbtransaction ';
$dbo->key = array();
$dbo->sql = 'select sum(smb_printqty) as totalqty,count(*) as totalprint, cus_name,
round(sum(smb_printqty) /count(*),2) as ratio
from smbtransaction join smplate on smb_spid = sp_id
join smcustomer on sp_cusid = cus_id
group by cus_name';
$dbo->col = array('totalqty', 'totalprint', 'cus_name', 'ratio');
$dbo->colList = array('cus_name', 'totalqty', 'totalprint', 'ratio');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('cus_name', 'totalqty', 'totalprint');
$dbo->colNew = array('cus_name', 'totalqty', 'totalprint');
$dbo->colEdit = array('cus_name', 'totalqty', 'totalprint');
$dbo->colSearch = array('cus_name', 'totalqty', 'totalprint');
$dbo->colExport = array('cus_name', 'totalqty', 'totalprint');
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
$dbo->cols['cus_name'] = new DBO_COL('cus_name', 'VAR_STRING', '600', '0');
$dbo->cols['cus_name']->inputTypeDefault = 'text';
$dbo->cols['cus_name']->searchMode = 'exact';
$dbo->cols['cus_name']->capContClassDefault = array();
$dbo->cols['cus_name']->valContClassDefault = array();
$dbo->cols['cus_name']->option->defaultMethod = 'text';
$dbo->cols['cus_name']->option->searchMethod = 'text';
$dbo->cols['cus_name']->option->listMethod = 'text';
$dbo->cols['cus_name']->option->detailMethod = 'text';
$dbo->cols['cus_name']->option->newMethod = 'text';
$dbo->cols['cus_name']->option->editMethod = 'text';
$dbo->cols['ratio'] = new DBO_COL('ratio', 'NEWDECIMAL', '37', '2');
$dbo->cols['ratio']->inputTypeDefault = 'text';
$dbo->cols['ratio']->searchMode = 'exact';
$dbo->cols['ratio']->capContClassDefault = array();
$dbo->cols['ratio']->valContClassDefault = array();
$dbo->cols['ratio']->option->defaultMethod = 'text';
$dbo->cols['ratio']->option->searchMethod = 'text';
$dbo->cols['ratio']->option->listMethod = 'text';
$dbo->cols['ratio']->option->detailMethod = 'text';
$dbo->cols['ratio']->option->newMethod = 'text';
$dbo->cols['ratio']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_rpt_summbycustomer_custom_new';
function dbo_rpt_summbycustomer_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_rpt_summbycustomer_custom_edit';
function dbo_rpt_summbycustomer_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_rpt_summbycustomer_custom_search';
function dbo_rpt_summbycustomer_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_rpt_summbycustomer_custom_delete';
function dbo_rpt_summbycustomer_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_rpt_summbycustomer_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>