<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'platelist';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smcustomer ';
$dbo->key = array('sp_id');
$dbo->sql = 'select sp_id,cus_masterid, cus_name, sp_platename, sp_platemodel, ps_code
from smplate 
join smplateslot on sp_psid = ps_id
join smcustomer on sp_cusid = cus_id
join smshelfsetting on sp_sfid = sf_id
join smshelfgroup on sf_sgid = sg_id';
$dbo->col = array('sp_id', 'cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colList = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colDetail = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colNew = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colEdit = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colSearch = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colExport = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = false;
$dbo->canEdit = true;
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

$dbo->cols['sp_id'] = new DBO_COL('sp_id', 'LONG', '11', '0');
$dbo->cols['sp_id']->inputTypeDefault = 'text';
$dbo->cols['sp_id']->searchMode = 'exact';
$dbo->cols['sp_id']->capContClassDefault = array();
$dbo->cols['sp_id']->valContClassDefault = array();
$dbo->cols['sp_id']->option->defaultMethod = 'text';
$dbo->cols['sp_id']->option->searchMethod = 'text';
$dbo->cols['sp_id']->option->listMethod = 'text';
$dbo->cols['sp_id']->option->detailMethod = 'text';
$dbo->cols['sp_id']->option->newMethod = 'text';
$dbo->cols['sp_id']->option->editMethod = 'text';
$dbo->cols['sp_cusid'] = new DBO_COL('sp_cusid', 'LONG', '11', '0');
$dbo->cols['sp_cusid']->inputTypeDefault = 'text';
$dbo->cols['sp_cusid']->capContClassDefault = array();
$dbo->cols['sp_cusid']->valContClassDefault = array();
$dbo->cols['sp_cusid']->option->defaultMethod = 'text';
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
$dbo->cols['sp_platemodel']->searchMode = 'exact';
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
$dbo->cols['cus_masterid']->searchMode = 'exact';
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
$dbo->cols['sf_id'] = new DBO_COL('sf_id', 'LONG', '11', '0');
$dbo->cols['sf_id']->inputTypeDefault = 'text';
$dbo->cols['sf_id']->capContClassDefault = array();
$dbo->cols['sf_id']->valContClassDefault = array();
$dbo->cols['sf_id']->option->defaultMethod = 'text';
$dbo->cols['sf_id']->option->searchMethod = 'text';
$dbo->cols['sf_id']->option->listMethod = 'text';
$dbo->cols['sf_id']->option->detailMethod = 'text';
$dbo->cols['sf_id']->option->newMethod = 'text';
$dbo->cols['sf_id']->option->editMethod = 'text';
$dbo->cols['sf_sgid'] = new DBO_COL('sf_sgid', 'LONG', '11', '0');
$dbo->cols['sf_sgid']->inputTypeDefault = 'text';
$dbo->cols['sf_sgid']->capContClassDefault = array();
$dbo->cols['sf_sgid']->valContClassDefault = array();
$dbo->cols['sf_sgid']->option->defaultMethod = 'text';
$dbo->cols['sf_sgid']->option->searchMethod = 'text';
$dbo->cols['sf_sgid']->option->listMethod = 'text';
$dbo->cols['sf_sgid']->option->detailMethod = 'text';
$dbo->cols['sf_sgid']->option->newMethod = 'text';
$dbo->cols['sf_sgid']->option->editMethod = 'text';
$dbo->cols['sf_code'] = new DBO_COL('sf_code', 'VAR_STRING', '30', '0');
$dbo->cols['sf_code']->inputTypeDefault = 'text';
$dbo->cols['sf_code']->capContClassDefault = array();
$dbo->cols['sf_code']->valContClassDefault = array();
$dbo->cols['sf_code']->option->defaultMethod = 'text';
$dbo->cols['sf_code']->option->searchMethod = 'text';
$dbo->cols['sf_code']->option->listMethod = 'text';
$dbo->cols['sf_code']->option->detailMethod = 'text';
$dbo->cols['sf_code']->option->newMethod = 'text';
$dbo->cols['sf_code']->option->editMethod = 'text';
$dbo->cols['sf_desc'] = new DBO_COL('sf_desc', 'VAR_STRING', '600', '0');
$dbo->cols['sf_desc']->inputTypeDefault = 'text';
$dbo->cols['sf_desc']->capContClassDefault = array();
$dbo->cols['sf_desc']->valContClassDefault = array();
$dbo->cols['sf_desc']->option->defaultMethod = 'text';
$dbo->cols['sf_desc']->option->searchMethod = 'text';
$dbo->cols['sf_desc']->option->listMethod = 'text';
$dbo->cols['sf_desc']->option->detailMethod = 'text';
$dbo->cols['sf_desc']->option->newMethod = 'text';
$dbo->cols['sf_desc']->option->editMethod = 'text';
$dbo->cols['sf_totalplate'] = new DBO_COL('sf_totalplate', 'LONG', '11', '0');
$dbo->cols['sf_totalplate']->inputTypeDefault = 'text';
$dbo->cols['sf_totalplate']->capContClassDefault = array();
$dbo->cols['sf_totalplate']->valContClassDefault = array();
$dbo->cols['sf_totalplate']->option->defaultMethod = 'text';
$dbo->cols['sf_totalplate']->option->searchMethod = 'text';
$dbo->cols['sf_totalplate']->option->listMethod = 'text';
$dbo->cols['sf_totalplate']->option->detailMethod = 'text';
$dbo->cols['sf_totalplate']->option->newMethod = 'text';
$dbo->cols['sf_totalplate']->option->editMethod = 'text';
$dbo->cols['sf_seq'] = new DBO_COL('sf_seq', 'LONG', '11', '0');
$dbo->cols['sf_seq']->inputTypeDefault = 'text';
$dbo->cols['sf_seq']->capContClassDefault = array();
$dbo->cols['sf_seq']->valContClassDefault = array();
$dbo->cols['sf_seq']->option->defaultMethod = 'text';
$dbo->cols['sf_seq']->option->searchMethod = 'text';
$dbo->cols['sf_seq']->option->listMethod = 'text';
$dbo->cols['sf_seq']->option->detailMethod = 'text';
$dbo->cols['sf_seq']->option->newMethod = 'text';
$dbo->cols['sf_seq']->option->editMethod = 'text';
$dbo->cols['sg_id'] = new DBO_COL('sg_id', 'LONG', '11', '0');
$dbo->cols['sg_id']->inputTypeDefault = 'text';
$dbo->cols['sg_id']->capContClassDefault = array();
$dbo->cols['sg_id']->valContClassDefault = array();
$dbo->cols['sg_id']->option->defaultMethod = 'text';
$dbo->cols['sg_id']->option->searchMethod = 'text';
$dbo->cols['sg_id']->option->listMethod = 'text';
$dbo->cols['sg_id']->option->detailMethod = 'text';
$dbo->cols['sg_id']->option->newMethod = 'text';
$dbo->cols['sg_id']->option->editMethod = 'text';
$dbo->cols['sg_code'] = new DBO_COL('sg_code', 'VAR_STRING', '30', '0');
$dbo->cols['sg_code']->inputTypeDefault = 'text';
$dbo->cols['sg_code']->capContClassDefault = array();
$dbo->cols['sg_code']->valContClassDefault = array();
$dbo->cols['sg_code']->option->defaultMethod = 'text';
$dbo->cols['sg_code']->option->searchMethod = 'text';
$dbo->cols['sg_code']->option->listMethod = 'text';
$dbo->cols['sg_code']->option->detailMethod = 'text';
$dbo->cols['sg_code']->option->newMethod = 'text';
$dbo->cols['sg_code']->option->editMethod = 'text';
$dbo->cols['sg_groupname'] = new DBO_COL('sg_groupname', 'VAR_STRING', '600', '0');
$dbo->cols['sg_groupname']->inputTypeDefault = 'text';
$dbo->cols['sg_groupname']->capContClassDefault = array();
$dbo->cols['sg_groupname']->valContClassDefault = array();
$dbo->cols['sg_groupname']->option->defaultMethod = 'text';
$dbo->cols['sg_groupname']->option->searchMethod = 'text';
$dbo->cols['sg_groupname']->option->listMethod = 'text';
$dbo->cols['sg_groupname']->option->detailMethod = 'text';
$dbo->cols['sg_groupname']->option->newMethod = 'text';
$dbo->cols['sg_groupname']->option->editMethod = 'text';
$dbo->cols['sg_seq'] = new DBO_COL('sg_seq', 'LONG', '11', '0');
$dbo->cols['sg_seq']->inputTypeDefault = 'text';
$dbo->cols['sg_seq']->capContClassDefault = array();
$dbo->cols['sg_seq']->valContClassDefault = array();
$dbo->cols['sg_seq']->option->defaultMethod = 'text';
$dbo->cols['sg_seq']->option->searchMethod = 'text';
$dbo->cols['sg_seq']->option->listMethod = 'text';
$dbo->cols['sg_seq']->option->detailMethod = 'text';
$dbo->cols['sg_seq']->option->newMethod = 'text';
$dbo->cols['sg_seq']->option->editMethod = 'text';
$dbo->cols['ps_id'] = new DBO_COL('ps_id', 'LONG', '11', '0');
$dbo->cols['ps_id']->inputTypeDefault = 'text';
$dbo->cols['ps_id']->searchMode = 'exact';
$dbo->cols['ps_id']->capContClassDefault = array();
$dbo->cols['ps_id']->valContClassDefault = array();
$dbo->cols['ps_id']->option->defaultMethod = 'text';
$dbo->cols['ps_id']->option->searchMethod = 'text';
$dbo->cols['ps_id']->option->listMethod = 'text';
$dbo->cols['ps_id']->option->detailMethod = 'text';
$dbo->cols['ps_id']->option->newMethod = 'text';
$dbo->cols['ps_id']->option->editMethod = 'text';
$dbo->cols['ps_sfid'] = new DBO_COL('ps_sfid', 'LONG', '11', '0');
$dbo->cols['ps_sfid']->inputTypeDefault = 'text';
$dbo->cols['ps_sfid']->capContClassDefault = array();
$dbo->cols['ps_sfid']->valContClassDefault = array();
$dbo->cols['ps_sfid']->option->defaultMethod = 'text';
$dbo->cols['ps_sfid']->option->searchMethod = 'text';
$dbo->cols['ps_sfid']->option->listMethod = 'text';
$dbo->cols['ps_sfid']->option->detailMethod = 'text';
$dbo->cols['ps_sfid']->option->newMethod = 'text';
$dbo->cols['ps_sfid']->option->editMethod = 'text';
$dbo->cols['ps_slotno'] = new DBO_COL('ps_slotno', 'VAR_STRING', '60', '0');
$dbo->cols['ps_slotno']->inputTypeDefault = 'text';
$dbo->cols['ps_slotno']->capContClassDefault = array();
$dbo->cols['ps_slotno']->valContClassDefault = array();
$dbo->cols['ps_slotno']->option->defaultMethod = 'text';
$dbo->cols['ps_slotno']->option->searchMethod = 'text';
$dbo->cols['ps_slotno']->option->listMethod = 'text';
$dbo->cols['ps_slotno']->option->detailMethod = 'text';
$dbo->cols['ps_slotno']->option->newMethod = 'text';
$dbo->cols['ps_slotno']->option->editMethod = 'text';
$dbo->cols['ps_code'] = new DBO_COL('ps_code', 'VAR_STRING', '150', '0');
$dbo->cols['ps_code']->inputTypeDefault = 'text';
$dbo->cols['ps_code']->searchMode = 'exact';
$dbo->cols['ps_code']->capContClassDefault = array();
$dbo->cols['ps_code']->valContClassDefault = array();
$dbo->cols['ps_code']->option->defaultMethod = 'text';
$dbo->cols['ps_code']->option->searchMethod = 'text';
$dbo->cols['ps_code']->option->listMethod = 'text';
$dbo->cols['ps_code']->option->detailMethod = 'text';
$dbo->cols['ps_code']->option->newMethod = 'text';
$dbo->cols['ps_code']->option->editMethod = 'text';
$dbo->cols['ps_available'] = new DBO_COL('ps_available', 'VAR_STRING', '6', '0');
$dbo->cols['ps_available']->inputTypeDefault = 'text';
$dbo->cols['ps_available']->capContClassDefault = array();
$dbo->cols['ps_available']->valContClassDefault = array();
$dbo->cols['ps_available']->option->defaultMethod = 'text';
$dbo->cols['ps_available']->option->searchMethod = 'text';
$dbo->cols['ps_available']->option->listMethod = 'text';
$dbo->cols['ps_available']->option->detailMethod = 'text';
$dbo->cols['ps_available']->option->newMethod = 'text';
$dbo->cols['ps_available']->option->editMethod = 'text';

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
$dbo->newModifier = 'platelist_custom_new';
function platelist_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'platelist_custom_edit';
function platelist_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'platelist_custom_search';
function platelist_custom_search(&$search){
}

$dbo->deleteModifier = 'platelist_custom_delete';
function platelist_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function platelist_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>