<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'setup_org';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fcorg';
$dbo->key = array('org_id');
$dbo->sql = 'select fcorg.*, 0 as packageid, 0 as months, now() as startdate from fcorg';
$dbo->col = array('org_id', 'org_code', 'org_name', 'org_parentid', 'org_primaryid', 'org_address', 'org_contactno', 'org_status', 'packageid', 'months', 'startdate');
$dbo->colList = array('org_code', 'org_name', 'org_parentid');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('org_code', 'org_name', 'org_parentid', 'org_address', 'org_contactno', 'org_status');
$dbo->colNew = array('org_code', 'org_name', 'org_parentid', 'org_address', 'org_contactno', 'org_status', 'packageid', 'startdate', 'months');
$dbo->colEdit = array('org_name', 'org_parentid', 'org_address', 'org_contactno', 'org_status');
$dbo->colSearch = array('org_parentid', 'org_name');
$dbo->colExport = array('org_id', 'org_code', 'org_name', 'org_parentid', 'org_primaryid', 'org_address', 'org_contactno', 'org_status');
$dbo->colSort = array();
$dbo->canSearch = true;
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
$dbo->newModifier = 'dbo_setup_org_custom_new';
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

$dbo->cols['org_id'] = new DBO_COL('org_id', 'LONG', '11', '0');
$dbo->cols['org_id']->inputTypeDefault = 'text';
$dbo->cols['org_id']->searchMode = 'exact';
$dbo->cols['org_id']->capContClassDefault = array();
$dbo->cols['org_id']->valContClassDefault = array();
$dbo->cols['org_id']->option->defaultMethod = 'text';
$dbo->cols['org_id']->option->searchMethod = 'text';
$dbo->cols['org_id']->option->listMethod = 'text';
$dbo->cols['org_id']->option->detailMethod = 'text';
$dbo->cols['org_id']->option->newMethod = 'text';
$dbo->cols['org_id']->option->editMethod = 'text';
$dbo->cols['org_code'] = new DBO_COL('org_code', 'VAR_STRING', '150', '0');
$dbo->cols['org_code']->defaultNewValueMethod = 'phps';
$dbo->cols['org_code']->defaultNewValue = 'dbo_setup_org_uniqueorgcode()';
$dbo->cols['org_code']->inputTypeDefault = 'text';
$dbo->cols['org_code']->mandatoryNew = 1;
$dbo->cols['org_code']->mandatoryEdit = 1;
$dbo->cols['org_code']->searchMode = 'matchany';
$dbo->cols['org_code']->capContClassDefault = array();
$dbo->cols['org_code']->valContClassDefault = array();
$dbo->cols['org_code']->option->defaultMethod = 'text';
$dbo->cols['org_code']->option->searchMethod = 'text';
$dbo->cols['org_code']->option->listMethod = 'text';
$dbo->cols['org_code']->option->detailMethod = 'text';
$dbo->cols['org_code']->option->newMethod = 'text';
$dbo->cols['org_code']->option->editMethod = 'text';
$dbo->cols['org_name'] = new DBO_COL('org_name', 'VAR_STRING', '6000', '0');
$dbo->cols['org_name']->inputTypeDefault = 'text';
$dbo->cols['org_name']->mandatoryNew = 1;
$dbo->cols['org_name']->mandatoryEdit = 1;
$dbo->cols['org_name']->searchMode = 'matchany';
$dbo->cols['org_name']->capContClassDefault = array();
$dbo->cols['org_name']->valContClassDefault = array();
$dbo->cols['org_name']->option->defaultMethod = 'text';
$dbo->cols['org_name']->option->searchMethod = 'text';
$dbo->cols['org_name']->option->listMethod = 'text';
$dbo->cols['org_name']->option->detailMethod = 'text';
$dbo->cols['org_name']->option->newMethod = 'text';
$dbo->cols['org_name']->option->editMethod = 'text';
$dbo->cols['org_parentid'] = new DBO_COL('org_parentid', 'LONG', '11', '0');
$dbo->cols['org_parentid']->inputTypeDefault = 'select';
$dbo->cols['org_parentid']->searchMode = 'exact';
$dbo->cols['org_parentid']->capContClassDefault = array();
$dbo->cols['org_parentid']->valContClassDefault = array();
$dbo->cols['org_parentid']->option->default = 'select org_id, org_name from fcorg where (org_parentid = 0 or org_parentid is null)';
$dbo->cols['org_parentid']->option->defaultMethod = 'sql';
$dbo->cols['org_parentid']->option->searchMethod = 'text';
$dbo->cols['org_parentid']->option->listMethod = 'text';
$dbo->cols['org_parentid']->option->detailMethod = 'text';
$dbo->cols['org_parentid']->option->newMethod = 'text';
$dbo->cols['org_parentid']->option->editMethod = 'text';
$dbo->cols['org_primaryid'] = new DBO_COL('org_primaryid', 'VAR_STRING', '600', '0');
$dbo->cols['org_primaryid']->inputTypeDefault = 'text';
$dbo->cols['org_primaryid']->searchMode = 'exact';
$dbo->cols['org_primaryid']->capContClassDefault = array();
$dbo->cols['org_primaryid']->valContClassDefault = array();
$dbo->cols['org_primaryid']->option->defaultMethod = 'text';
$dbo->cols['org_primaryid']->option->searchMethod = 'text';
$dbo->cols['org_primaryid']->option->listMethod = 'text';
$dbo->cols['org_primaryid']->option->detailMethod = 'text';
$dbo->cols['org_primaryid']->option->newMethod = 'text';
$dbo->cols['org_primaryid']->option->editMethod = 'text';
$dbo->cols['org_address'] = new DBO_COL('org_address', 'VAR_STRING', '12000', '0');
$dbo->cols['org_address']->inputTypeDefault = 'text';
$dbo->cols['org_address']->searchMode = 'matchany';
$dbo->cols['org_address']->capContClassDefault = array();
$dbo->cols['org_address']->valContClassDefault = array();
$dbo->cols['org_address']->option->defaultMethod = 'text';
$dbo->cols['org_address']->option->searchMethod = 'text';
$dbo->cols['org_address']->option->listMethod = 'text';
$dbo->cols['org_address']->option->detailMethod = 'text';
$dbo->cols['org_address']->option->newMethod = 'text';
$dbo->cols['org_address']->option->editMethod = 'text';
$dbo->cols['org_contactno'] = new DBO_COL('org_contactno', 'VAR_STRING', '300', '0');
$dbo->cols['org_contactno']->inputTypeDefault = 'text';
$dbo->cols['org_contactno']->searchMode = 'matchany';
$dbo->cols['org_contactno']->capContClassDefault = array();
$dbo->cols['org_contactno']->valContClassDefault = array();
$dbo->cols['org_contactno']->option->defaultMethod = 'text';
$dbo->cols['org_contactno']->option->searchMethod = 'text';
$dbo->cols['org_contactno']->option->listMethod = 'text';
$dbo->cols['org_contactno']->option->detailMethod = 'text';
$dbo->cols['org_contactno']->option->newMethod = 'text';
$dbo->cols['org_contactno']->option->editMethod = 'text';
$dbo->cols['org_status'] = new DBO_COL('org_status', 'VAR_STRING', '36', '0');
$dbo->cols['org_status']->defaultNewValueMethod = 'text';
$dbo->cols['org_status']->defaultNewValue = 'ACTIVE';
$dbo->cols['org_status']->inputTypeDefault = 'radio';
$dbo->cols['org_status']->size = 2;
$dbo->cols['org_status']->searchMode = 'exact';
$dbo->cols['org_status']->capContClassDefault = array();
$dbo->cols['org_status']->valContClassDefault = array();
$dbo->cols['org_status']->option->default = 'ACTIVE/Active
INACTIVE/Inactive';
$dbo->cols['org_status']->option->defaultMethod = 'text';
$dbo->cols['org_status']->option->searchMethod = 'text';
$dbo->cols['org_status']->option->listMethod = 'text';
$dbo->cols['org_status']->option->detailMethod = 'text';
$dbo->cols['org_status']->option->newMethod = 'text';
$dbo->cols['org_status']->option->editMethod = 'text';
$dbo->cols['packageid'] = new DBO_COL('packageid', 'LONG', '1', '0');
$dbo->cols['packageid']->inputTypeDefault = 'select';
$dbo->cols['packageid']->searchMode = 'exact';
$dbo->cols['packageid']->capContClassDefault = array();
$dbo->cols['packageid']->valContClassDefault = array();
$dbo->cols['packageid']->option->default = 'select pk_id, pk_description from smpackage order by 2 asc';
$dbo->cols['packageid']->option->defaultMethod = 'sql';
$dbo->cols['packageid']->option->searchMethod = 'text';
$dbo->cols['packageid']->option->listMethod = 'text';
$dbo->cols['packageid']->option->detailMethod = 'text';
$dbo->cols['packageid']->option->newMethod = 'text';
$dbo->cols['packageid']->option->editMethod = 'text';
$dbo->cols['month'] = new DBO_COL('month', 'LONG', '1', '0');
$dbo->cols['month']->inputTypeDefault = 'text';
$dbo->cols['month']->searchMode = 'exact';
$dbo->cols['month']->capContClassDefault = array();
$dbo->cols['month']->valContClassDefault = array();
$dbo->cols['month']->option->defaultMethod = 'text';
$dbo->cols['month']->option->searchMethod = 'text';
$dbo->cols['month']->option->listMethod = 'text';
$dbo->cols['month']->option->detailMethod = 'text';
$dbo->cols['month']->option->newMethod = 'text';
$dbo->cols['month']->option->editMethod = 'text';
$dbo->cols['startdate'] = new DBO_COL('startdate', 'DATETIME', '19', '0');
$dbo->cols['startdate']->displayDataType = 'date';
$dbo->cols['startdate']->inputTypeDefault = 'text';
$dbo->cols['startdate']->searchMode = 'exact';
$dbo->cols['startdate']->capContClassDefault = array();
$dbo->cols['startdate']->valContClassDefault = array();
$dbo->cols['startdate']->option->defaultMethod = 'text';
$dbo->cols['startdate']->option->searchMethod = 'text';
$dbo->cols['startdate']->option->listMethod = 'text';
$dbo->cols['startdate']->option->detailMethod = 'text';
$dbo->cols['startdate']->option->newMethod = 'text';
$dbo->cols['startdate']->option->editMethod = 'text';
$dbo->cols['months'] = new DBO_COL('months', 'LONG', '1', '0');
$dbo->cols['months']->inputTypeDefault = 'text';
$dbo->cols['months']->searchMode = 'exact';
$dbo->cols['months']->capContClassDefault = array();
$dbo->cols['months']->valContClassDefault = array();
$dbo->cols['months']->option->defaultMethod = 'text';
$dbo->cols['months']->option->searchMethod = 'text';
$dbo->cols['months']->option->listMethod = 'text';
$dbo->cols['months']->option->detailMethod = 'text';
$dbo->cols['months']->option->newMethod = 'text';
$dbo->cols['months']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_setup_org_custom_new';
function dbo_setup_org_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_setup_org_custom_edit';
function dbo_setup_org_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_setup_org_custom_search';
function dbo_setup_org_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_setup_org_custom_delete';
function dbo_setup_org_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_setup_org_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>