<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'transaction_history';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smbtransaction ';
$dbo->key = array();
$dbo->sql = 'select sp_cusid, sp_platename, smb_printdate, smb_printqty, smb_remark,smb_pdinchar, sp_orgid, \'\' datefrom,  \'\' dateto
from smbtransaction 
join smplate on smb_spid = sp_id
join smcustomer on sp_cusid = cus_id
';
$dbo->col = array('sp_cusid', 'sp_platename', 'smb_printdate', 'smb_printqty', 'smb_remark', 'smb_pdinchar', 'sp_orgid', 'datefrom', 'dateto');
$dbo->colList = array('sp_cusid', 'sp_platename', 'smb_printdate', 'smb_printqty', 'smb_remark');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('smb_printdate', 'smb_printqty', 'smb_remark', 'sp_platename');
$dbo->colNew = array('smb_printdate', 'smb_printqty', 'smb_remark', 'sp_platename');
$dbo->colEdit = array('smb_printdate', 'smb_printqty', 'smb_remark', 'sp_platename');
$dbo->colSearch = array('datefrom', 'dateto', 'smb_printqty', 'smb_remark', 'sp_platename', 'sp_cusid');
$dbo->colExport = array('smb_printdate', 'smb_printqty', 'smb_remark', 'sp_platename');
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
$dbo->searchModifier = 'dbo_transaction_history_custom_search';
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

$dbo->cols['smb_id'] = new DBO_COL('smb_id', 'LONG', '11', '0');
$dbo->cols['smb_id']->inputTypeDefault = 'text';
$dbo->cols['smb_id']->capContClassDefault = array();
$dbo->cols['smb_id']->valContClassDefault = array();
$dbo->cols['smb_id']->option->defaultMethod = 'text';
$dbo->cols['smb_id']->option->searchMethod = 'text';
$dbo->cols['smb_id']->option->listMethod = 'text';
$dbo->cols['smb_id']->option->detailMethod = 'text';
$dbo->cols['smb_id']->option->newMethod = 'text';
$dbo->cols['smb_id']->option->editMethod = 'text';
$dbo->cols['smb_spid'] = new DBO_COL('smb_spid', 'LONG', '11', '0');
$dbo->cols['smb_spid']->inputTypeDefault = 'text';
$dbo->cols['smb_spid']->capContClassDefault = array();
$dbo->cols['smb_spid']->valContClassDefault = array();
$dbo->cols['smb_spid']->option->defaultMethod = 'text';
$dbo->cols['smb_spid']->option->searchMethod = 'text';
$dbo->cols['smb_spid']->option->listMethod = 'text';
$dbo->cols['smb_spid']->option->detailMethod = 'text';
$dbo->cols['smb_spid']->option->newMethod = 'text';
$dbo->cols['smb_spid']->option->editMethod = 'text';
$dbo->cols['smb_printdate'] = new DBO_COL('smb_printdate', 'TIMESTAMP', '19', '0');
$dbo->cols['smb_printdate']->displayDataType = 'date';
$dbo->cols['smb_printdate']->inputTypeDefault = 'text';
$dbo->cols['smb_printdate']->searchMode = 'exact';
$dbo->cols['smb_printdate']->capContClassDefault = array();
$dbo->cols['smb_printdate']->valContClassDefault = array();
$dbo->cols['smb_printdate']->option->defaultMethod = 'text';
$dbo->cols['smb_printdate']->option->searchMethod = 'text';
$dbo->cols['smb_printdate']->option->listMethod = 'text';
$dbo->cols['smb_printdate']->option->detailMethod = 'text';
$dbo->cols['smb_printdate']->option->newMethod = 'text';
$dbo->cols['smb_printdate']->option->editMethod = 'text';
$dbo->cols['smb_printqty'] = new DBO_COL('smb_printqty', 'LONG', '11', '0');
$dbo->cols['smb_printqty']->inputTypeDefault = 'text';
$dbo->cols['smb_printqty']->searchMode = 'exact';
$dbo->cols['smb_printqty']->capContClassDefault = array();
$dbo->cols['smb_printqty']->valContClassDefault = array();
$dbo->cols['smb_printqty']->option->defaultMethod = 'text';
$dbo->cols['smb_printqty']->option->searchMethod = 'text';
$dbo->cols['smb_printqty']->option->listMethod = 'text';
$dbo->cols['smb_printqty']->option->detailMethod = 'text';
$dbo->cols['smb_printqty']->option->newMethod = 'text';
$dbo->cols['smb_printqty']->option->editMethod = 'text';
$dbo->cols['smb_saleamount'] = new DBO_COL('smb_saleamount', 'NEWDECIMAL', '22', '4');
$dbo->cols['smb_saleamount']->inputTypeDefault = 'text';
$dbo->cols['smb_saleamount']->capContClassDefault = array();
$dbo->cols['smb_saleamount']->valContClassDefault = array();
$dbo->cols['smb_saleamount']->option->defaultMethod = 'text';
$dbo->cols['smb_saleamount']->option->searchMethod = 'text';
$dbo->cols['smb_saleamount']->option->listMethod = 'text';
$dbo->cols['smb_saleamount']->option->detailMethod = 'text';
$dbo->cols['smb_saleamount']->option->newMethod = 'text';
$dbo->cols['smb_saleamount']->option->editMethod = 'text';
$dbo->cols['smb_remark'] = new DBO_COL('smb_remark', 'VAR_STRING', '3000', '0');
$dbo->cols['smb_remark']->inputTypeDefault = 'text';
$dbo->cols['smb_remark']->searchMode = 'exact';
$dbo->cols['smb_remark']->capContClassDefault = array();
$dbo->cols['smb_remark']->valContClassDefault = array();
$dbo->cols['smb_remark']->option->defaultMethod = 'text';
$dbo->cols['smb_remark']->option->searchMethod = 'text';
$dbo->cols['smb_remark']->option->listMethod = 'text';
$dbo->cols['smb_remark']->option->detailMethod = 'text';
$dbo->cols['smb_remark']->option->newMethod = 'text';
$dbo->cols['smb_remark']->option->editMethod = 'text';
$dbo->cols['sp_id'] = new DBO_COL('sp_id', 'LONG', '11', '0');
$dbo->cols['sp_id']->inputTypeDefault = 'text';
$dbo->cols['sp_id']->capContClassDefault = array();
$dbo->cols['sp_id']->valContClassDefault = array();
$dbo->cols['sp_id']->option->defaultMethod = 'text';
$dbo->cols['sp_id']->option->searchMethod = 'text';
$dbo->cols['sp_id']->option->listMethod = 'text';
$dbo->cols['sp_id']->option->detailMethod = 'text';
$dbo->cols['sp_id']->option->newMethod = 'text';
$dbo->cols['sp_id']->option->editMethod = 'text';
$dbo->cols['sp_cusid'] = new DBO_COL('sp_cusid', 'LONG', '11', '0');
$dbo->cols['sp_cusid']->inputTypeDefault = 'select';
$dbo->cols['sp_cusid']->searchMode = 'exact';
$dbo->cols['sp_cusid']->capContClassDefault = array();
$dbo->cols['sp_cusid']->valContClassDefault = array();
$dbo->cols['sp_cusid']->option->default = 'select cus_id,cus_name from smcustomer';
$dbo->cols['sp_cusid']->option->defaultMethod = 'sql';
$dbo->cols['sp_cusid']->option->searchMethod = 'text';
$dbo->cols['sp_cusid']->option->listMethod = 'text';
$dbo->cols['sp_cusid']->option->detailMethod = 'text';
$dbo->cols['sp_cusid']->option->newMethod = 'text';
$dbo->cols['sp_cusid']->option->editMethod = 'text';
$dbo->cols['sp_sfid'] = new DBO_COL('sp_sfid', 'LONG', '11', '0');
$dbo->cols['sp_sfid']->inputTypeDefault = 'text';
$dbo->cols['sp_sfid']->capContClassDefault = array();
$dbo->cols['sp_sfid']->valContClassDefault = array();
$dbo->cols['sp_sfid']->option->defaultMethod = 'text';
$dbo->cols['sp_sfid']->option->searchMethod = 'text';
$dbo->cols['sp_sfid']->option->listMethod = 'text';
$dbo->cols['sp_sfid']->option->detailMethod = 'text';
$dbo->cols['sp_sfid']->option->newMethod = 'text';
$dbo->cols['sp_sfid']->option->editMethod = 'text';
$dbo->cols['sp_parentid'] = new DBO_COL('sp_parentid', 'LONG', '11', '0');
$dbo->cols['sp_parentid']->inputTypeDefault = 'text';
$dbo->cols['sp_parentid']->capContClassDefault = array();
$dbo->cols['sp_parentid']->valContClassDefault = array();
$dbo->cols['sp_parentid']->option->defaultMethod = 'text';
$dbo->cols['sp_parentid']->option->searchMethod = 'text';
$dbo->cols['sp_parentid']->option->listMethod = 'text';
$dbo->cols['sp_parentid']->option->detailMethod = 'text';
$dbo->cols['sp_parentid']->option->newMethod = 'text';
$dbo->cols['sp_parentid']->option->editMethod = 'text';
$dbo->cols['sp_psid'] = new DBO_COL('sp_psid', 'LONG', '11', '0');
$dbo->cols['sp_psid']->inputTypeDefault = 'text';
$dbo->cols['sp_psid']->capContClassDefault = array();
$dbo->cols['sp_psid']->valContClassDefault = array();
$dbo->cols['sp_psid']->option->defaultMethod = 'text';
$dbo->cols['sp_psid']->option->searchMethod = 'text';
$dbo->cols['sp_psid']->option->listMethod = 'text';
$dbo->cols['sp_psid']->option->detailMethod = 'text';
$dbo->cols['sp_psid']->option->newMethod = 'text';
$dbo->cols['sp_psid']->option->editMethod = 'text';
$dbo->cols['sp_masterid'] = new DBO_COL('sp_masterid', 'VAR_STRING', '300', '0');
$dbo->cols['sp_masterid']->inputTypeDefault = 'text';
$dbo->cols['sp_masterid']->capContClassDefault = array();
$dbo->cols['sp_masterid']->valContClassDefault = array();
$dbo->cols['sp_masterid']->option->defaultMethod = 'text';
$dbo->cols['sp_masterid']->option->searchMethod = 'text';
$dbo->cols['sp_masterid']->option->listMethod = 'text';
$dbo->cols['sp_masterid']->option->detailMethod = 'text';
$dbo->cols['sp_masterid']->option->newMethod = 'text';
$dbo->cols['sp_masterid']->option->editMethod = 'text';
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
$dbo->cols['sp_platemodel'] = new DBO_COL('sp_platemodel', 'VAR_STRING', '300', '0');
$dbo->cols['sp_platemodel']->inputTypeDefault = 'text';
$dbo->cols['sp_platemodel']->capContClassDefault = array();
$dbo->cols['sp_platemodel']->valContClassDefault = array();
$dbo->cols['sp_platemodel']->option->defaultMethod = 'text';
$dbo->cols['sp_platemodel']->option->searchMethod = 'text';
$dbo->cols['sp_platemodel']->option->listMethod = 'text';
$dbo->cols['sp_platemodel']->option->detailMethod = 'text';
$dbo->cols['sp_platemodel']->option->newMethod = 'text';
$dbo->cols['sp_platemodel']->option->editMethod = 'text';
$dbo->cols['sp_createddate'] = new DBO_COL('sp_createddate', 'TIMESTAMP', '19', '0');
$dbo->cols['sp_createddate']->inputTypeDefault = 'text';
$dbo->cols['sp_createddate']->capContClassDefault = array();
$dbo->cols['sp_createddate']->valContClassDefault = array();
$dbo->cols['sp_createddate']->option->defaultMethod = 'text';
$dbo->cols['sp_createddate']->option->searchMethod = 'text';
$dbo->cols['sp_createddate']->option->listMethod = 'text';
$dbo->cols['sp_createddate']->option->detailMethod = 'text';
$dbo->cols['sp_createddate']->option->newMethod = 'text';
$dbo->cols['sp_createddate']->option->editMethod = 'text';
$dbo->cols['sp_createdby'] = new DBO_COL('sp_createdby', 'VAR_STRING', '150', '0');
$dbo->cols['sp_createdby']->inputTypeDefault = 'text';
$dbo->cols['sp_createdby']->capContClassDefault = array();
$dbo->cols['sp_createdby']->valContClassDefault = array();
$dbo->cols['sp_createdby']->option->defaultMethod = 'text';
$dbo->cols['sp_createdby']->option->searchMethod = 'text';
$dbo->cols['sp_createdby']->option->listMethod = 'text';
$dbo->cols['sp_createdby']->option->detailMethod = 'text';
$dbo->cols['sp_createdby']->option->newMethod = 'text';
$dbo->cols['sp_createdby']->option->editMethod = 'text';
$dbo->cols['sp_status'] = new DBO_COL('sp_status', 'VAR_STRING', '60', '0');
$dbo->cols['sp_status']->inputTypeDefault = 'text';
$dbo->cols['sp_status']->capContClassDefault = array();
$dbo->cols['sp_status']->valContClassDefault = array();
$dbo->cols['sp_status']->option->defaultMethod = 'text';
$dbo->cols['sp_status']->option->searchMethod = 'text';
$dbo->cols['sp_status']->option->listMethod = 'text';
$dbo->cols['sp_status']->option->detailMethod = 'text';
$dbo->cols['sp_status']->option->newMethod = 'text';
$dbo->cols['sp_status']->option->editMethod = 'text';
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
$dbo->cols['cus_id'] = new DBO_COL('cus_id', 'LONG', '11', '0');
$dbo->cols['cus_id']->inputTypeDefault = 'text';
$dbo->cols['cus_id']->capContClassDefault = array();
$dbo->cols['cus_id']->valContClassDefault = array();
$dbo->cols['cus_id']->option->defaultMethod = 'text';
$dbo->cols['cus_id']->option->searchMethod = 'text';
$dbo->cols['cus_id']->option->listMethod = 'text';
$dbo->cols['cus_id']->option->detailMethod = 'text';
$dbo->cols['cus_id']->option->newMethod = 'text';
$dbo->cols['cus_id']->option->editMethod = 'text';
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
$dbo->cols['cus_regno'] = new DBO_COL('cus_regno', 'VAR_STRING', '300', '0');
$dbo->cols['cus_regno']->inputTypeDefault = 'text';
$dbo->cols['cus_regno']->capContClassDefault = array();
$dbo->cols['cus_regno']->valContClassDefault = array();
$dbo->cols['cus_regno']->option->defaultMethod = 'text';
$dbo->cols['cus_regno']->option->searchMethod = 'text';
$dbo->cols['cus_regno']->option->listMethod = 'text';
$dbo->cols['cus_regno']->option->detailMethod = 'text';
$dbo->cols['cus_regno']->option->newMethod = 'text';
$dbo->cols['cus_regno']->option->editMethod = 'text';
$dbo->cols['cus_masterid'] = new DBO_COL('cus_masterid', 'VAR_STRING', '300', '0');
$dbo->cols['cus_masterid']->inputTypeDefault = 'text';
$dbo->cols['cus_masterid']->capContClassDefault = array();
$dbo->cols['cus_masterid']->valContClassDefault = array();
$dbo->cols['cus_masterid']->option->defaultMethod = 'text';
$dbo->cols['cus_masterid']->option->searchMethod = 'text';
$dbo->cols['cus_masterid']->option->listMethod = 'text';
$dbo->cols['cus_masterid']->option->detailMethod = 'text';
$dbo->cols['cus_masterid']->option->newMethod = 'text';
$dbo->cols['cus_masterid']->option->editMethod = 'text';
$dbo->cols['cus_contactno'] = new DBO_COL('cus_contactno', 'VAR_STRING', '60', '0');
$dbo->cols['cus_contactno']->inputTypeDefault = 'text';
$dbo->cols['cus_contactno']->capContClassDefault = array();
$dbo->cols['cus_contactno']->valContClassDefault = array();
$dbo->cols['cus_contactno']->option->defaultMethod = 'text';
$dbo->cols['cus_contactno']->option->searchMethod = 'text';
$dbo->cols['cus_contactno']->option->listMethod = 'text';
$dbo->cols['cus_contactno']->option->detailMethod = 'text';
$dbo->cols['cus_contactno']->option->newMethod = 'text';
$dbo->cols['cus_contactno']->option->editMethod = 'text';
$dbo->cols['cus_orgid'] = new DBO_COL('cus_orgid', 'LONG', '11', '0');
$dbo->cols['cus_orgid']->inputTypeDefault = 'text';
$dbo->cols['cus_orgid']->capContClassDefault = array();
$dbo->cols['cus_orgid']->valContClassDefault = array();
$dbo->cols['cus_orgid']->option->defaultMethod = 'text';
$dbo->cols['cus_orgid']->option->searchMethod = 'text';
$dbo->cols['cus_orgid']->option->listMethod = 'text';
$dbo->cols['cus_orgid']->option->detailMethod = 'text';
$dbo->cols['cus_orgid']->option->newMethod = 'text';
$dbo->cols['cus_orgid']->option->editMethod = 'text';
$dbo->cols['datefrom'] = new DBO_COL('datefrom', 'STRING', '0', '0');
$dbo->cols['datefrom']->displayDataType = 'date';
$dbo->cols['datefrom']->inputTypeDefault = 'text';
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
$dbo->cols['smb_pdinchar']->capContClassDefault = array();
$dbo->cols['smb_pdinchar']->valContClassDefault = array();

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
$dbo->newModifier = 'dbo_transaction_history_custom_new';
function dbo_transaction_history_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_transaction_history_custom_edit';
function dbo_transaction_history_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_transaction_history_custom_search';
function dbo_transaction_history_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_transaction_history_custom_delete';
function dbo_transaction_history_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_transaction_history_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>