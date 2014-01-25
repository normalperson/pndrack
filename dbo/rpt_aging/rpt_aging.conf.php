<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'rpt_aging';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smplate';
$dbo->key = array();
$dbo->sql = 'select sp_id,cus_masterid, cus_name, sp_platename, sp_platemodel, ps_code,sf_id,sp_orgid,maxdate,
DATEDIFF(curdate(),maxdate) as daydiff, maxdate as lastprintdate
from smplate 
join vw_agingtransaction on sp_id = smb_spid
join smplateslot on sp_psid = ps_id
join smcustomer on sp_cusid = cus_id
join smshelfsetting on sp_sfid = sf_id
join smshelfgroup on sf_sgid = sg_id';
$dbo->col = array('sp_id', 'cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code', 'sf_id', 'sp_orgid', 'maxdate', 'daydiff', 'lastprintdate');
$dbo->colList = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code', 'lastprintdate', 'daydiff');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colNew = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colEdit = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colSearch = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
$dbo->colExport = array('cus_masterid', 'cus_name', 'sp_platename', 'sp_platemodel', 'ps_code');
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
$dbo->titleList = '记录列表';
$dbo->titleDetail = '细节';
$dbo->titleNew = '新增记录';
$dbo->titleEdit = '更改记录';
$dbo->titleSearch = '寻找记录';
$dbo->layoutSearch = '1|1';
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
$dbo->cols['cus_masterid'] = new DBO_COL('cus_masterid', 'VAR_STRING', '300', '0');
$dbo->cols['cus_masterid']->inputTypeDefault = 'text';
$dbo->cols['cus_masterid']->searchMode = 'matchfront';
$dbo->cols['cus_masterid']->capContClassDefault = array();
$dbo->cols['cus_masterid']->valContClassDefault = array();
$dbo->cols['cus_masterid']->option->defaultMethod = 'text';
$dbo->cols['cus_masterid']->option->searchMethod = 'text';
$dbo->cols['cus_masterid']->option->listMethod = 'text';
$dbo->cols['cus_masterid']->option->detailMethod = 'text';
$dbo->cols['cus_masterid']->option->newMethod = 'text';
$dbo->cols['cus_masterid']->option->editMethod = 'text';
$dbo->cols['cus_name'] = new DBO_COL('cus_name', 'VAR_STRING', '600', '0');
$dbo->cols['cus_name']->inputTypeDefault = 'text';
$dbo->cols['cus_name']->searchMode = 'matchfront';
$dbo->cols['cus_name']->capContClassDefault = array();
$dbo->cols['cus_name']->valContClassDefault = array();
$dbo->cols['cus_name']->option->defaultMethod = 'text';
$dbo->cols['cus_name']->option->searchMethod = 'text';
$dbo->cols['cus_name']->option->listMethod = 'text';
$dbo->cols['cus_name']->option->detailMethod = 'text';
$dbo->cols['cus_name']->option->newMethod = 'text';
$dbo->cols['cus_name']->option->editMethod = 'text';
$dbo->cols['sp_platename'] = new DBO_COL('sp_platename', 'VAR_STRING', '300', '0');
$dbo->cols['sp_platename']->inputTypeDefault = 'text';
$dbo->cols['sp_platename']->searchMode = 'matchfront';
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
$dbo->cols['sp_platemodel']->searchMode = 'matchfront';
$dbo->cols['sp_platemodel']->capContClassDefault = array();
$dbo->cols['sp_platemodel']->valContClassDefault = array();
$dbo->cols['sp_platemodel']->option->defaultMethod = 'text';
$dbo->cols['sp_platemodel']->option->searchMethod = 'text';
$dbo->cols['sp_platemodel']->option->listMethod = 'text';
$dbo->cols['sp_platemodel']->option->detailMethod = 'text';
$dbo->cols['sp_platemodel']->option->newMethod = 'text';
$dbo->cols['sp_platemodel']->option->editMethod = 'text';
$dbo->cols['ps_code'] = new DBO_COL('ps_code', 'VAR_STRING', '150', '0');
$dbo->cols['ps_code']->inputTypeDefault = 'text';
$dbo->cols['ps_code']->searchMode = 'matchfront';
$dbo->cols['ps_code']->capContClassDefault = array();
$dbo->cols['ps_code']->valContClassDefault = array();
$dbo->cols['ps_code']->option->defaultMethod = 'text';
$dbo->cols['ps_code']->option->searchMethod = 'text';
$dbo->cols['ps_code']->option->listMethod = 'text';
$dbo->cols['ps_code']->option->detailMethod = 'text';
$dbo->cols['ps_code']->option->newMethod = 'text';
$dbo->cols['ps_code']->option->editMethod = 'text';
$dbo->cols['sf_id'] = new DBO_COL('sf_id', 'LONG', '11', '0');
$dbo->cols['sf_id']->inputTypeDefault = 'text';
$dbo->cols['sf_id']->searchMode = 'exact';
$dbo->cols['sf_id']->capContClassDefault = array();
$dbo->cols['sf_id']->valContClassDefault = array();
$dbo->cols['sf_id']->option->defaultMethod = 'text';
$dbo->cols['sf_id']->option->searchMethod = 'text';
$dbo->cols['sf_id']->option->listMethod = 'text';
$dbo->cols['sf_id']->option->detailMethod = 'text';
$dbo->cols['sf_id']->option->newMethod = 'text';
$dbo->cols['sf_id']->option->editMethod = 'text';
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
$dbo->cols['maxdate'] = new DBO_COL('maxdate', 'TIMESTAMP', '19', '0');
$dbo->cols['maxdate']->inputTypeDefault = 'text';
$dbo->cols['maxdate']->searchMode = 'exact';
$dbo->cols['maxdate']->capContClassDefault = array();
$dbo->cols['maxdate']->valContClassDefault = array();
$dbo->cols['maxdate']->option->defaultMethod = 'text';
$dbo->cols['maxdate']->option->searchMethod = 'text';
$dbo->cols['maxdate']->option->listMethod = 'text';
$dbo->cols['maxdate']->option->detailMethod = 'text';
$dbo->cols['maxdate']->option->newMethod = 'text';
$dbo->cols['maxdate']->option->editMethod = 'text';
$dbo->cols['daydiff'] = new DBO_COL('daydiff', 'LONG', '7', '0');
$dbo->cols['daydiff']->inputTypeDefault = 'text';
$dbo->cols['daydiff']->searchMode = 'exact';
$dbo->cols['daydiff']->capContClassDefault = array();
$dbo->cols['daydiff']->valContClassDefault = array();
$dbo->cols['daydiff']->option->defaultMethod = 'text';
$dbo->cols['daydiff']->option->searchMethod = 'text';
$dbo->cols['daydiff']->option->listMethod = 'text';
$dbo->cols['daydiff']->option->detailMethod = 'text';
$dbo->cols['daydiff']->option->newMethod = 'text';
$dbo->cols['daydiff']->option->editMethod = 'text';
$dbo->cols['lastprintdate'] = new DBO_COL('lastprintdate', 'TIMESTAMP', '19', '0');
$dbo->cols['lastprintdate']->inputTypeDefault = 'text';
$dbo->cols['lastprintdate']->searchMode = 'exact';
$dbo->cols['lastprintdate']->capContClassDefault = array();
$dbo->cols['lastprintdate']->valContClassDefault = array();
$dbo->cols['lastprintdate']->option->defaultMethod = 'text';
$dbo->cols['lastprintdate']->option->searchMethod = 'text';
$dbo->cols['lastprintdate']->option->listMethod = 'text';
$dbo->cols['lastprintdate']->option->detailMethod = 'text';
$dbo->cols['lastprintdate']->option->newMethod = 'text';
$dbo->cols['lastprintdate']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_rpt_aging_custom_new';
function dbo_rpt_aging_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_rpt_aging_custom_edit';
function dbo_rpt_aging_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_rpt_aging_custom_search';
function dbo_rpt_aging_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_rpt_aging_custom_delete';
function dbo_rpt_aging_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_rpt_aging_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>