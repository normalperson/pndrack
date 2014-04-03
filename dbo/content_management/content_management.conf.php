<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'content_management';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smcontent';
$dbo->key = array('ct_id');
$dbo->sql = 'select * from smcontent order by ct_id desc';
$dbo->col = array('ct_id', 'ct_type', 'ct_title', 'ct_content', 'ct_created_date', 'ct_created_by', 'ct_last_modified_date', 'ct_last_modified_by', 'ct_status', 'ct_last_status_date', 'ct_imagelocation');
$dbo->colList = array('ct_type', 'ct_title', 'ct_created_date', 'ct_created_by', 'ct_last_modified_by', 'ct_status');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('ct_id', 'ct_type', 'ct_title', 'ct_content', 'ct_created_date', 'ct_created_by', 'ct_last_modified_date', 'ct_last_modified_by', 'ct_status', 'ct_last_status_date');
$dbo->colNew = array('ct_type', 'ct_title', 'ct_content', 'ct_imagelocation', 'ct_status');
$dbo->colEdit = array('ct_type', 'ct_title', 'ct_content', 'ct_imagelocation', 'ct_status');
$dbo->colSearch = array('ct_id', 'ct_type', 'ct_title', 'ct_content', 'ct_created_date', 'ct_created_by', 'ct_last_modified_date', 'ct_last_modified_by', 'ct_status', 'ct_last_status_date');
$dbo->colExport = array('ct_id', 'ct_type', 'ct_title', 'ct_content', 'ct_created_date', 'ct_created_by', 'ct_last_modified_date', 'ct_last_modified_by', 'ct_status', 'ct_last_status_date');
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
$dbo->titleList = 'Content Management';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Post';
$dbo->titleEdit = 'Edit Post';
$dbo->titleSearch = 'Search Post';
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

$dbo->cols['ct_id'] = new DBO_COL('ct_id', 'LONG', '11', '0');
$dbo->cols['ct_id']->inputTypeDefault = 'text';
$dbo->cols['ct_id']->searchMode = 'exact';
$dbo->cols['ct_id']->capContClassDefault = array();
$dbo->cols['ct_id']->valContClassDefault = array();
$dbo->cols['ct_id']->option->defaultMethod = 'text';
$dbo->cols['ct_id']->option->searchMethod = 'text';
$dbo->cols['ct_id']->option->listMethod = 'text';
$dbo->cols['ct_id']->option->detailMethod = 'text';
$dbo->cols['ct_id']->option->newMethod = 'text';
$dbo->cols['ct_id']->option->editMethod = 'text';
$dbo->cols['ct_type'] = new DBO_COL('ct_type', 'VAR_STRING', '60', '0');
$dbo->cols['ct_type']->inputTypeDefault = 'select';
$dbo->cols['ct_type']->mandatoryDefault = 1;
$dbo->cols['ct_type']->searchMode = 'exact';
$dbo->cols['ct_type']->capContClassDefault = array();
$dbo->cols['ct_type']->valContClassDefault = array();
$dbo->cols['ct_type']->option->default = 'NEWS/NEWS
FAQ/FAQ';
$dbo->cols['ct_type']->option->defaultMethod = 'text';
$dbo->cols['ct_type']->option->searchMethod = 'text';
$dbo->cols['ct_type']->option->listMethod = 'text';
$dbo->cols['ct_type']->option->detailMethod = 'text';
$dbo->cols['ct_type']->option->newMethod = 'text';
$dbo->cols['ct_type']->option->editMethod = 'text';
$dbo->cols['ct_title'] = new DBO_COL('ct_title', 'VAR_STRING', '600', '0');
$dbo->cols['ct_title']->inputTypeDefault = 'text';
$dbo->cols['ct_title']->mandatoryDefault = 1;
$dbo->cols['ct_title']->searchMode = 'exact';
$dbo->cols['ct_title']->capContClassDefault = array();
$dbo->cols['ct_title']->valContClassDefault = array();
$dbo->cols['ct_title']->option->defaultMethod = 'text';
$dbo->cols['ct_title']->option->searchMethod = 'text';
$dbo->cols['ct_title']->option->listMethod = 'text';
$dbo->cols['ct_title']->option->detailMethod = 'text';
$dbo->cols['ct_title']->option->newMethod = 'text';
$dbo->cols['ct_title']->option->editMethod = 'text';
$dbo->cols['ct_content'] = new DBO_COL('ct_content', 'BLOB', '65535', '0');
$dbo->cols['ct_content']->inputTypeDefault = 'html';
$dbo->cols['ct_content']->searchMode = 'exact';
$dbo->cols['ct_content']->capContClassDefault = array();
$dbo->cols['ct_content']->valContClassDefault = array();
$dbo->cols['ct_content']->option->defaultMethod = 'text';
$dbo->cols['ct_content']->option->searchMethod = 'text';
$dbo->cols['ct_content']->option->listMethod = 'text';
$dbo->cols['ct_content']->option->detailMethod = 'text';
$dbo->cols['ct_content']->option->newMethod = 'text';
$dbo->cols['ct_content']->option->editMethod = 'text';
$dbo->cols['ct_created_date'] = new DBO_COL('ct_created_date', 'TIMESTAMP', '19', '0');
$dbo->cols['ct_created_date']->displayDataType = 'datetime';
$dbo->cols['ct_created_date']->inputTypeDefault = 'text';
$dbo->cols['ct_created_date']->searchMode = 'exact';
$dbo->cols['ct_created_date']->capContClassDefault = array();
$dbo->cols['ct_created_date']->valContClassDefault = array();
$dbo->cols['ct_created_date']->option->defaultMethod = 'text';
$dbo->cols['ct_created_date']->option->searchMethod = 'text';
$dbo->cols['ct_created_date']->option->listMethod = 'text';
$dbo->cols['ct_created_date']->option->detailMethod = 'text';
$dbo->cols['ct_created_date']->option->newMethod = 'text';
$dbo->cols['ct_created_date']->option->editMethod = 'text';
$dbo->cols['ct_created_by'] = new DBO_COL('ct_created_by', 'VAR_STRING', '60', '0');
$dbo->cols['ct_created_by']->inputTypeDefault = 'text';
$dbo->cols['ct_created_by']->searchMode = 'exact';
$dbo->cols['ct_created_by']->capContClassDefault = array();
$dbo->cols['ct_created_by']->valContClassDefault = array();
$dbo->cols['ct_created_by']->option->defaultMethod = 'text';
$dbo->cols['ct_created_by']->option->searchMethod = 'text';
$dbo->cols['ct_created_by']->option->listMethod = 'text';
$dbo->cols['ct_created_by']->option->detailMethod = 'text';
$dbo->cols['ct_created_by']->option->newMethod = 'text';
$dbo->cols['ct_created_by']->option->editMethod = 'text';
$dbo->cols['ct_last_modified_date'] = new DBO_COL('ct_last_modified_date', 'TIMESTAMP', '19', '0');
$dbo->cols['ct_last_modified_date']->displayDataType = 'datetime';
$dbo->cols['ct_last_modified_date']->inputTypeDefault = 'text';
$dbo->cols['ct_last_modified_date']->searchMode = 'exact';
$dbo->cols['ct_last_modified_date']->capContClassDefault = array();
$dbo->cols['ct_last_modified_date']->valContClassDefault = array();
$dbo->cols['ct_last_modified_date']->option->defaultMethod = 'text';
$dbo->cols['ct_last_modified_date']->option->searchMethod = 'text';
$dbo->cols['ct_last_modified_date']->option->listMethod = 'text';
$dbo->cols['ct_last_modified_date']->option->detailMethod = 'text';
$dbo->cols['ct_last_modified_date']->option->newMethod = 'text';
$dbo->cols['ct_last_modified_date']->option->editMethod = 'text';
$dbo->cols['ct_last_modified_by'] = new DBO_COL('ct_last_modified_by', 'VAR_STRING', '150', '0');
$dbo->cols['ct_last_modified_by']->inputTypeDefault = 'text';
$dbo->cols['ct_last_modified_by']->searchMode = 'exact';
$dbo->cols['ct_last_modified_by']->capContClassDefault = array();
$dbo->cols['ct_last_modified_by']->valContClassDefault = array();
$dbo->cols['ct_last_modified_by']->option->defaultMethod = 'text';
$dbo->cols['ct_last_modified_by']->option->searchMethod = 'text';
$dbo->cols['ct_last_modified_by']->option->listMethod = 'text';
$dbo->cols['ct_last_modified_by']->option->detailMethod = 'text';
$dbo->cols['ct_last_modified_by']->option->newMethod = 'text';
$dbo->cols['ct_last_modified_by']->option->editMethod = 'text';
$dbo->cols['ct_status'] = new DBO_COL('ct_status', 'VAR_STRING', '60', '0');
$dbo->cols['ct_status']->inputTypeDefault = 'select';
$dbo->cols['ct_status']->mandatoryDefault = 1;
$dbo->cols['ct_status']->searchMode = 'exact';
$dbo->cols['ct_status']->capContClassDefault = array();
$dbo->cols['ct_status']->valContClassDefault = array();
$dbo->cols['ct_status']->option->default = 'ACTIVE/ACTIVE
INACTIVE/INACTIVE';
$dbo->cols['ct_status']->option->defaultMethod = 'text';
$dbo->cols['ct_status']->option->searchMethod = 'text';
$dbo->cols['ct_status']->option->listMethod = 'text';
$dbo->cols['ct_status']->option->detailMethod = 'text';
$dbo->cols['ct_status']->option->newMethod = 'text';
$dbo->cols['ct_status']->option->editMethod = 'text';
$dbo->cols['ct_last_status_date'] = new DBO_COL('ct_last_status_date', 'TIMESTAMP', '19', '0');
$dbo->cols['ct_last_status_date']->displayDataType = 'datetime';
$dbo->cols['ct_last_status_date']->inputTypeDefault = 'text';
$dbo->cols['ct_last_status_date']->searchMode = 'exact';
$dbo->cols['ct_last_status_date']->capContClassDefault = array();
$dbo->cols['ct_last_status_date']->valContClassDefault = array();
$dbo->cols['ct_last_status_date']->option->defaultMethod = 'text';
$dbo->cols['ct_last_status_date']->option->searchMethod = 'text';
$dbo->cols['ct_last_status_date']->option->listMethod = 'text';
$dbo->cols['ct_last_status_date']->option->detailMethod = 'text';
$dbo->cols['ct_last_status_date']->option->newMethod = 'text';
$dbo->cols['ct_last_status_date']->option->editMethod = 'text';
$dbo->cols['ct_approval_status'] = new DBO_COL('ct_approval_status', 'varchar', '-1', '16');
$dbo->cols['ct_approval_status']->inputTypeDefault = 'select';
$dbo->cols['ct_approval_status']->searchMode = 'exact';
$dbo->cols['ct_approval_status']->capContClassDefault = array();
$dbo->cols['ct_approval_status']->valContClassDefault = array();
$dbo->cols['ct_approval_status']->option->default = 'APPROVE/APPROVE
REJECT/REJECT';
$dbo->cols['ct_approval_status']->option->defaultMethod = 'text';
$dbo->cols['ct_approval_status']->option->searchMethod = 'text';
$dbo->cols['ct_approval_status']->option->listMethod = 'text';
$dbo->cols['ct_approval_status']->option->detailMethod = 'text';
$dbo->cols['ct_approval_status']->option->newMethod = 'text';
$dbo->cols['ct_approval_status']->option->editMethod = 'text';
$dbo->cols['ct_approval_date'] = new DBO_COL('ct_approval_date', 'varchar', '-1', '16');
$dbo->cols['ct_approval_date']->inputTypeDefault = 'text';
$dbo->cols['ct_approval_date']->searchMode = 'exact';
$dbo->cols['ct_approval_date']->capContClassDefault = array();
$dbo->cols['ct_approval_date']->valContClassDefault = array();
$dbo->cols['ct_approval_date']->option->defaultMethod = 'text';
$dbo->cols['ct_approval_date']->option->searchMethod = 'text';
$dbo->cols['ct_approval_date']->option->listMethod = 'text';
$dbo->cols['ct_approval_date']->option->detailMethod = 'text';
$dbo->cols['ct_approval_date']->option->newMethod = 'text';
$dbo->cols['ct_approval_date']->option->editMethod = 'text';
$dbo->cols['ct_approval_by'] = new DBO_COL('ct_approval_by', 'varchar', '-1', '54');
$dbo->cols['ct_approval_by']->inputTypeDefault = 'text';
$dbo->cols['ct_approval_by']->searchMode = 'exact';
$dbo->cols['ct_approval_by']->capContClassDefault = array();
$dbo->cols['ct_approval_by']->valContClassDefault = array();
$dbo->cols['ct_approval_by']->option->defaultMethod = 'text';
$dbo->cols['ct_approval_by']->option->searchMethod = 'text';
$dbo->cols['ct_approval_by']->option->listMethod = 'text';
$dbo->cols['ct_approval_by']->option->detailMethod = 'text';
$dbo->cols['ct_approval_by']->option->newMethod = 'text';
$dbo->cols['ct_approval_by']->option->editMethod = 'text';
$dbo->cols['ct_imagelocation'] = new DBO_COL('ct_imagelocation', 'VAR_STRING', '300', '0');
$dbo->cols['ct_imagelocation']->inputTypeDefault = 'file';
$dbo->cols['ct_imagelocation']->searchMode = 'exact';
$dbo->cols['ct_imagelocation']->capContClassDefault = array();
$dbo->cols['ct_imagelocation']->valContClassDefault = array();
$dbo->cols['ct_imagelocation']->option->defaultMethod = 'text';
$dbo->cols['ct_imagelocation']->option->searchMethod = 'text';
$dbo->cols['ct_imagelocation']->option->listMethod = 'text';
$dbo->cols['ct_imagelocation']->option->detailMethod = 'text';
$dbo->cols['ct_imagelocation']->option->newMethod = 'text';
$dbo->cols['ct_imagelocation']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_content_management_custom_new';
function dbo_content_management_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_content_management_custom_edit';
function dbo_content_management_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_content_management_custom_search';
function dbo_content_management_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_content_management_custom_delete';
function dbo_content_management_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_content_management_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>