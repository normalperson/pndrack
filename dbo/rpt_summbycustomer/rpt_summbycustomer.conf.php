<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'rpt_summbycustomer';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smbtransaction ';
$dbo->key = array();
$dbo->sql = 'select sum(smb_printqty) as totalqty,count(*) as totalprint, cus_name,
round(sum(smb_printqty) /count(*),2) as ratio,\'\' datefrom, \'\' dateto,smb_pdinchar
from smbtransaction join smplate on smb_spid = sp_id
join smcustomer on sp_cusid = cus_id
group by cus_name,smb_pdinchar';
$dbo->col = array('totalqty', 'totalprint', 'cus_name', 'ratio', 'datefrom', 'dateto', 'smb_pdinchar');
$dbo->colList = array('smb_pdinchar', 'cus_name', 'totalqty', 'totalprint', 'ratio');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('cus_name', 'totalqty', 'totalprint');
$dbo->colNew = array('cus_name', 'totalqty', 'totalprint');
$dbo->colEdit = array('cus_name', 'totalqty', 'totalprint');
$dbo->colSearch = array('datefrom', 'dateto');
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
$dbo->searchModifier = 'dbo_rpt_summbycustomer_custom_search';
$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增记录';
$dbo->titleEdit = '更改记录';
$dbo->titleSearch = '寻找记录';
$dbo->theme = 'skyblue';
$dbo->layout = 'One';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 50;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'ZH-TW';
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
$dbo->cols['datefrom'] = new DBO_COL('datefrom', 'STRING', '0', '0');
$dbo->cols['datefrom']->displayDataType = 'date';
$dbo->cols['datefrom']->inputTypeDefault = 'text';
$dbo->cols['datefrom']->format = 'yyyy-mm-dd';
$dbo->cols['datefrom']->searchMode = 'exact';
$dbo->cols['datefrom']->capContClassDefault = array();
$dbo->cols['datefrom']->valContClassDefault = array();
$dbo->cols['datefrom']->option->defaultMethod = 'text';
$dbo->cols['datefrom']->option->searchMethod = 'text';
$dbo->cols['datefrom']->option->listMethod = 'text';
$dbo->cols['datefrom']->option->detailMethod = 'text';
$dbo->cols['datefrom']->option->newMethod = 'text';
$dbo->cols['datefrom']->option->editMethod = 'text';
$dbo->cols['dateto'] = new DBO_COL('dateto', 'STRING', '0', '0');
$dbo->cols['dateto']->displayDataType = 'date';
$dbo->cols['dateto']->inputTypeDefault = 'text';
$dbo->cols['dateto']->format = 'yyyy-mm-dd';
$dbo->cols['dateto']->searchMode = 'exact';
$dbo->cols['dateto']->capContClassDefault = array();
$dbo->cols['dateto']->valContClassDefault = array();
$dbo->cols['dateto']->option->defaultMethod = 'text';
$dbo->cols['dateto']->option->searchMethod = 'text';
$dbo->cols['dateto']->option->listMethod = 'text';
$dbo->cols['dateto']->option->detailMethod = 'text';
$dbo->cols['dateto']->option->newMethod = 'text';
$dbo->cols['dateto']->option->editMethod = 'text';
$dbo->cols['smb_pdinchar'] = new DBO_COL('smb_pdinchar', 'VAR_STRING', '150', '0');
$dbo->cols['smb_pdinchar']->inputTypeDefault = 'text';
$dbo->cols['smb_pdinchar']->searchMode = 'exact';
$dbo->cols['smb_pdinchar']->capContClassDefault = array();
$dbo->cols['smb_pdinchar']->valContClassDefault = array();
$dbo->cols['smb_pdinchar']->option->defaultMethod = 'text';
$dbo->cols['smb_pdinchar']->option->searchMethod = 'text';
$dbo->cols['smb_pdinchar']->option->listMethod = 'text';
$dbo->cols['smb_pdinchar']->option->detailMethod = 'text';
$dbo->cols['smb_pdinchar']->option->newMethod = 'text';
$dbo->cols['smb_pdinchar']->option->editMethod = 'text';

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