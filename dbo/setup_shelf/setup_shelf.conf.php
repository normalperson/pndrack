<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'setup_shelf';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smshelfsetting';
$dbo->key = array('sf_id');
$dbo->sql = 'select * from smshelfsetting
order by sf_sgid, sf_seq';
$dbo->col = array('sf_id', 'sf_sgid', 'sf_code', 'sf_desc', 'sf_totalplate', 'sf_orgid', 'sf_seq');
$dbo->colList = array('sf_sgid', 'sf_code', 'sf_desc', 'sf_totalplate', 'sf_seq');
$dbo->colDetail = array('sf_sgid', 'sf_code', 'sf_desc');
$dbo->colNew = array('sf_sgid', 'sf_code', 'sf_desc', 'sf_totalplate', 'sf_seq');
$dbo->colEdit = array('sf_sgid', 'sf_code', 'sf_desc', 'sf_seq');
$dbo->colSearch = array('sf_sgid', 'sf_code', 'sf_desc');
$dbo->colExport = array();
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = false;
$dbo->canDelete = true;
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
$dbo->listEdit = false;
$dbo->listNew = false;
$dbo->searchCancel = 'Cancel';
$dbo->searchSubmit = 'Search';
$dbo->detailBack = 'Back';
$dbo->editCancel = 'Cancel';
$dbo->editSubmit = 'Save';
$dbo->newCancel = 'Cancel';
$dbo->newSubmit = 'Save';

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
$dbo->cols['sf_name'] = new DBO_COL('sf_name', 'varchar', '-1', '204');
$dbo->cols['sf_name']->inputTypeDefault = 'text';
$dbo->cols['sf_name']->mandatoryNew = 1;
$dbo->cols['sf_name']->mandatoryEdit = 1;
$dbo->cols['sf_name']->searchMode = 'exact';
$dbo->cols['sf_name']->capContClassDefault = array();
$dbo->cols['sf_name']->valContClassDefault = array();
$dbo->cols['sf_name']->option->defaultMethod = 'text';
$dbo->cols['sf_name']->option->searchMethod = 'text';
$dbo->cols['sf_name']->option->listMethod = 'text';
$dbo->cols['sf_name']->option->detailMethod = 'text';
$dbo->cols['sf_name']->option->newMethod = 'text';
$dbo->cols['sf_name']->option->editMethod = 'text';
$dbo->cols['sf_row'] = new DBO_COL('sf_row', 'int4', '4', '-1');
$dbo->cols['sf_row']->inputTypeDefault = 'text';
$dbo->cols['sf_row']->mandatoryNew = 1;
$dbo->cols['sf_row']->searchMode = 'exact';
$dbo->cols['sf_row']->capContClassDefault = array();
$dbo->cols['sf_row']->valContClassDefault = array();
$dbo->cols['sf_row']->option->defaultMethod = 'text';
$dbo->cols['sf_row']->option->searchMethod = 'text';
$dbo->cols['sf_row']->option->listMethod = 'text';
$dbo->cols['sf_row']->option->detailMethod = 'text';
$dbo->cols['sf_row']->option->newMethod = 'text';
$dbo->cols['sf_row']->option->editMethod = 'text';
$dbo->cols['sf_col'] = new DBO_COL('sf_col', 'int4', '4', '-1');
$dbo->cols['sf_col']->inputTypeDefault = 'text';
$dbo->cols['sf_col']->mandatoryNew = 1;
$dbo->cols['sf_col']->searchMode = 'exact';
$dbo->cols['sf_col']->capContClassDefault = array();
$dbo->cols['sf_col']->valContClassDefault = array();
$dbo->cols['sf_col']->option->defaultMethod = 'text';
$dbo->cols['sf_col']->option->searchMethod = 'text';
$dbo->cols['sf_col']->option->listMethod = 'text';
$dbo->cols['sf_col']->option->detailMethod = 'text';
$dbo->cols['sf_col']->option->newMethod = 'text';
$dbo->cols['sf_col']->option->editMethod = 'text';
$dbo->cols['sf_group'] = new DBO_COL('sf_group', 'int4', '4', '-1');
$dbo->cols['sf_group']->inputTypeDefault = 'select';
$dbo->cols['sf_group']->mandatoryNew = 1;
$dbo->cols['sf_group']->mandatoryEdit = 1;
$dbo->cols['sf_group']->searchMode = 'exact';
$dbo->cols['sf_group']->capContClassDefault = array();
$dbo->cols['sf_group']->valContClassDefault = array();
$dbo->cols['sf_group']->option->default = 'select sg_id,sg_groupname
from smshelfgroup
order by sg_seq';
$dbo->cols['sf_group']->option->defaultMethod = 'sql';
$dbo->cols['sf_group']->option->searchMethod = 'text';
$dbo->cols['sf_group']->option->listMethod = 'text';
$dbo->cols['sf_group']->option->detailMethod = 'text';
$dbo->cols['sf_group']->option->newMethod = 'text';
$dbo->cols['sf_group']->option->editMethod = 'text';
$dbo->cols['sf_sgid'] = new DBO_COL('sf_sgid', 'LONG', '11', '0');
$dbo->cols['sf_sgid']->inputTypeDefault = 'select';
$dbo->cols['sf_sgid']->searchMode = 'exact';
$dbo->cols['sf_sgid']->capContClassDefault = array();
$dbo->cols['sf_sgid']->valContClassDefault = array();
$dbo->cols['sf_sgid']->option->defaultMethod = 'sql';
$dbo->cols['sf_sgid']->option->searchMethod = 'text';
$dbo->cols['sf_sgid']->option->listMethod = 'text';
$dbo->cols['sf_sgid']->option->detailMethod = 'text';
$dbo->cols['sf_sgid']->option->newMethod = 'text';
$dbo->cols['sf_sgid']->option->editMethod = 'text';
$dbo->cols['sf_code'] = new DBO_COL('sf_code', 'VAR_STRING', '30', '0');
$dbo->cols['sf_code']->inputTypeDefault = 'text';
$dbo->cols['sf_code']->searchMode = 'exact';
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
$dbo->cols['sf_desc']->searchMode = 'exact';
$dbo->cols['sf_desc']->capContClassDefault = array();
$dbo->cols['sf_desc']->valContClassDefault = array();
$dbo->cols['sf_desc']->option->defaultMethod = 'text';
$dbo->cols['sf_desc']->option->searchMethod = 'text';
$dbo->cols['sf_desc']->option->listMethod = 'text';
$dbo->cols['sf_desc']->option->detailMethod = 'text';
$dbo->cols['sf_desc']->option->newMethod = 'text';
$dbo->cols['sf_desc']->option->editMethod = 'text';
$dbo->cols['sf_seq'] = new DBO_COL('sf_seq', 'LONG', '11', '0');
$dbo->cols['sf_seq']->inputTypeDefault = 'text';
$dbo->cols['sf_seq']->searchMode = 'exact';
$dbo->cols['sf_seq']->capContClassDefault = array();
$dbo->cols['sf_seq']->valContClassDefault = array();
$dbo->cols['sf_seq']->option->defaultMethod = 'text';
$dbo->cols['sf_seq']->option->searchMethod = 'text';
$dbo->cols['sf_seq']->option->listMethod = 'text';
$dbo->cols['sf_seq']->option->detailMethod = 'text';
$dbo->cols['sf_seq']->option->newMethod = 'text';
$dbo->cols['sf_seq']->option->editMethod = 'text';
$dbo->cols['sf_totalplate'] = new DBO_COL('sf_totalplate', 'LONG', '11', '0');
$dbo->cols['sf_totalplate']->inputTypeDefault = 'text';
$dbo->cols['sf_totalplate']->searchMode = 'exact';
$dbo->cols['sf_totalplate']->capContClassDefault = array();
$dbo->cols['sf_totalplate']->valContClassDefault = array();
$dbo->cols['sf_totalplate']->option->defaultMethod = 'text';
$dbo->cols['sf_totalplate']->option->searchMethod = 'text';
$dbo->cols['sf_totalplate']->option->listMethod = 'text';
$dbo->cols['sf_totalplate']->option->detailMethod = 'text';
$dbo->cols['sf_totalplate']->option->newMethod = 'text';
$dbo->cols['sf_totalplate']->option->editMethod = 'text';
$dbo->cols['sf_orgid'] = new DBO_COL('sf_orgid', 'LONG', '11', '0');
$dbo->cols['sf_orgid']->inputTypeDefault = 'text';
$dbo->cols['sf_orgid']->searchMode = 'exact';
$dbo->cols['sf_orgid']->capContClassDefault = array();
$dbo->cols['sf_orgid']->valContClassDefault = array();
$dbo->cols['sf_orgid']->option->defaultMethod = 'text';
$dbo->cols['sf_orgid']->option->searchMethod = 'text';
$dbo->cols['sf_orgid']->option->listMethod = 'text';
$dbo->cols['sf_orgid']->option->detailMethod = 'text';
$dbo->cols['sf_orgid']->option->newMethod = 'text';
$dbo->cols['sf_orgid']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_setup_shelf_custom_new';
function dbo_setup_shelf_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_setup_shelf_custom_edit';
function dbo_setup_shelf_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_setup_shelf_custom_search';
function dbo_setup_shelf_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_setup_shelf_custom_delete';
function dbo_setup_shelf_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_setup_shelf_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>