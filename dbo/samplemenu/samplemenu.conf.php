<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'samplemenu';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fcmenu';
$dbo->key = array('mn_id');
$dbo->sql = 'select * from fcmenu';
$dbo->col = array('mn_id', 'mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_order', 'mn_group', 'mn_url', 'mn_webflag', 'mn_class', 'mn_classlist', 'mn_func', 'mn_funclist', 'mn_param');
$dbo->colList = array('mn_id', 'mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_class', 'mn_func');
$dbo->colDetail = array('mn_id', 'mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_order', 'mn_group', 'mn_url', 'mn_webflag', 'mn_class', 'mn_classlist', 'mn_func', 'mn_funclist', 'mn_param');
$dbo->colNew = array('mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_order');
$dbo->colEdit = array('mn_id', 'mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_order', 'mn_group', 'mn_url', 'mn_webflag', 'mn_class', 'mn_classlist', 'mn_func', 'mn_funclist', 'mn_param');
$dbo->colSearch = array('mn_id', 'mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_order', 'mn_group', 'mn_url', 'mn_webflag', 'mn_class', 'mn_classlist', 'mn_func', 'mn_funclist', 'mn_param');
$dbo->colExport = array('mn_id', 'mn_code', 'mn_parentid', 'mn_title', 'mn_status', 'mn_order', 'mn_group', 'mn_url', 'mn_webflag', 'mn_class', 'mn_classlist', 'mn_func', 'mn_funclist', 'mn_param');
$dbo->colSort = array();
$dbo->canSearch = false;
$dbo->canNew = true;
$dbo->canEdit = false;
$dbo->canDelete = false;
$dbo->canDetail = false;
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
$dbo->recordPerPage = 30;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'EN-US';
$dbo->detailBack = 'Back';

$dbo->cols['mn_id'] = new DBO_COL('mn_id', 'int4', '4', '-1');
$dbo->cols['mn_id']->inputTypeDefault = 'text';
$dbo->cols['mn_id']->searchMode = 'exact';
$dbo->cols['mn_id']->capContClassDefault = array();
$dbo->cols['mn_id']->valContClassDefault = array();
$dbo->cols['mn_id']->option->defaultMethod = 'text';
$dbo->cols['mn_id']->option->searchMethod = 'text';
$dbo->cols['mn_id']->option->listMethod = 'text';
$dbo->cols['mn_id']->option->detailMethod = 'text';
$dbo->cols['mn_id']->option->newMethod = 'text';
$dbo->cols['mn_id']->option->editMethod = 'text';
$dbo->cols['mn_code'] = new DBO_COL('mn_code', 'varchar', '-1', '36');
$dbo->cols['mn_code']->inputTypeDefault = 'text';
$dbo->cols['mn_code']->searchMode = 'exact';
$dbo->cols['mn_code']->capContClassDefault = array();
$dbo->cols['mn_code']->valContClassDefault = array();
$dbo->cols['mn_code']->option->defaultMethod = 'text';
$dbo->cols['mn_code']->option->searchMethod = 'text';
$dbo->cols['mn_code']->option->listMethod = 'text';
$dbo->cols['mn_code']->option->detailMethod = 'text';
$dbo->cols['mn_code']->option->newMethod = 'text';
$dbo->cols['mn_code']->option->editMethod = 'text';
$dbo->cols['mn_parentid'] = new DBO_COL('mn_parentid', 'int4', '4', '-1');
$dbo->cols['mn_parentid']->inputTypeDefault = 'text';
$dbo->cols['mn_parentid']->searchMode = 'exact';
$dbo->cols['mn_parentid']->capContClassDefault = array();
$dbo->cols['mn_parentid']->valContClassDefault = array();
$dbo->cols['mn_parentid']->option->defaultMethod = 'text';
$dbo->cols['mn_parentid']->option->searchMethod = 'text';
$dbo->cols['mn_parentid']->option->listMethod = 'text';
$dbo->cols['mn_parentid']->option->detailMethod = 'text';
$dbo->cols['mn_parentid']->option->newMethod = 'text';
$dbo->cols['mn_parentid']->option->editMethod = 'text';
$dbo->cols['mn_title'] = new DBO_COL('mn_title', 'varchar', '-1', '54');
$dbo->cols['mn_title']->inputTypeDefault = 'text';
$dbo->cols['mn_title']->searchMode = 'exact';
$dbo->cols['mn_title']->capContClassDefault = array();
$dbo->cols['mn_title']->valContClassDefault = array();
$dbo->cols['mn_title']->option->defaultMethod = 'text';
$dbo->cols['mn_title']->option->searchMethod = 'text';
$dbo->cols['mn_title']->option->listMethod = 'text';
$dbo->cols['mn_title']->option->detailMethod = 'text';
$dbo->cols['mn_title']->option->newMethod = 'text';
$dbo->cols['mn_title']->option->editMethod = 'text';
$dbo->cols['mn_status'] = new DBO_COL('mn_status', 'varchar', '-1', '16');
$dbo->cols['mn_status']->inputTypeDefault = 'select';
$dbo->cols['mn_status']->searchMode = 'exact';
$dbo->cols['mn_status']->capContClassDefault = array();
$dbo->cols['mn_status']->valContClassDefault = array();
$dbo->cols['mn_status']->option->default = 'ACTIVE
INACTIVE';
$dbo->cols['mn_status']->option->defaultMethod = 'text';
$dbo->cols['mn_status']->option->searchMethod = 'text';
$dbo->cols['mn_status']->option->listMethod = 'text';
$dbo->cols['mn_status']->option->detailMethod = 'text';
$dbo->cols['mn_status']->option->newMethod = 'text';
$dbo->cols['mn_status']->option->editMethod = 'text';
$dbo->cols['mn_order'] = new DBO_COL('mn_order', 'int4', '4', '-1');
$dbo->cols['mn_order']->inputTypeDefault = 'text';
$dbo->cols['mn_order']->searchMode = 'exact';
$dbo->cols['mn_order']->capContClassDefault = array();
$dbo->cols['mn_order']->valContClassDefault = array();
$dbo->cols['mn_order']->option->defaultMethod = 'text';
$dbo->cols['mn_order']->option->searchMethod = 'text';
$dbo->cols['mn_order']->option->listMethod = 'text';
$dbo->cols['mn_order']->option->detailMethod = 'text';
$dbo->cols['mn_order']->option->newMethod = 'text';
$dbo->cols['mn_order']->option->editMethod = 'text';
$dbo->cols['mn_group'] = new DBO_COL('mn_group', 'varchar', '-1', '1004');
$dbo->cols['mn_group']->inputTypeDefault = 'text';
$dbo->cols['mn_group']->searchMode = 'exact';
$dbo->cols['mn_group']->capContClassDefault = array();
$dbo->cols['mn_group']->valContClassDefault = array();
$dbo->cols['mn_group']->option->defaultMethod = 'text';
$dbo->cols['mn_group']->option->searchMethod = 'text';
$dbo->cols['mn_group']->option->listMethod = 'text';
$dbo->cols['mn_group']->option->detailMethod = 'text';
$dbo->cols['mn_group']->option->newMethod = 'text';
$dbo->cols['mn_group']->option->editMethod = 'text';
$dbo->cols['mn_url'] = new DBO_COL('mn_url', 'varchar', '-1', '104');
$dbo->cols['mn_url']->inputTypeDefault = 'text';
$dbo->cols['mn_url']->searchMode = 'exact';
$dbo->cols['mn_url']->capContClassDefault = array();
$dbo->cols['mn_url']->valContClassDefault = array();
$dbo->cols['mn_url']->option->defaultMethod = 'text';
$dbo->cols['mn_url']->option->searchMethod = 'text';
$dbo->cols['mn_url']->option->listMethod = 'text';
$dbo->cols['mn_url']->option->detailMethod = 'text';
$dbo->cols['mn_url']->option->newMethod = 'text';
$dbo->cols['mn_url']->option->editMethod = 'text';
$dbo->cols['mn_webflag'] = new DBO_COL('mn_webflag', 'varchar', '-1', '16');
$dbo->cols['mn_webflag']->inputTypeDefault = 'text';
$dbo->cols['mn_webflag']->searchMode = 'exact';
$dbo->cols['mn_webflag']->capContClassDefault = array();
$dbo->cols['mn_webflag']->valContClassDefault = array();
$dbo->cols['mn_webflag']->option->defaultMethod = 'text';
$dbo->cols['mn_webflag']->option->searchMethod = 'text';
$dbo->cols['mn_webflag']->option->listMethod = 'text';
$dbo->cols['mn_webflag']->option->detailMethod = 'text';
$dbo->cols['mn_webflag']->option->newMethod = 'text';
$dbo->cols['mn_webflag']->option->editMethod = 'text';
$dbo->cols['mn_class'] = new DBO_COL('mn_class', 'varchar', '-1', '54');
$dbo->cols['mn_class']->inputTypeDefault = 'text';
$dbo->cols['mn_class']->searchMode = 'exact';
$dbo->cols['mn_class']->capContClassDefault = array();
$dbo->cols['mn_class']->valContClassDefault = array();
$dbo->cols['mn_class']->option->defaultMethod = 'text';
$dbo->cols['mn_class']->option->searchMethod = 'text';
$dbo->cols['mn_class']->option->listMethod = 'text';
$dbo->cols['mn_class']->option->detailMethod = 'text';
$dbo->cols['mn_class']->option->newMethod = 'text';
$dbo->cols['mn_class']->option->editMethod = 'text';
$dbo->cols['mn_classlist'] = new DBO_COL('mn_classlist', 'varchar', '-1', '1004');
$dbo->cols['mn_classlist']->inputTypeDefault = 'text';
$dbo->cols['mn_classlist']->searchMode = 'exact';
$dbo->cols['mn_classlist']->capContClassDefault = array();
$dbo->cols['mn_classlist']->valContClassDefault = array();
$dbo->cols['mn_classlist']->option->defaultMethod = 'text';
$dbo->cols['mn_classlist']->option->searchMethod = 'text';
$dbo->cols['mn_classlist']->option->listMethod = 'text';
$dbo->cols['mn_classlist']->option->detailMethod = 'text';
$dbo->cols['mn_classlist']->option->newMethod = 'text';
$dbo->cols['mn_classlist']->option->editMethod = 'text';
$dbo->cols['mn_func'] = new DBO_COL('mn_func', 'varchar', '-1', '54');
$dbo->cols['mn_func']->inputTypeDefault = 'text';
$dbo->cols['mn_func']->searchMode = 'exact';
$dbo->cols['mn_func']->capContClassDefault = array();
$dbo->cols['mn_func']->valContClassDefault = array();
$dbo->cols['mn_func']->option->defaultMethod = 'text';
$dbo->cols['mn_func']->option->searchMethod = 'text';
$dbo->cols['mn_func']->option->listMethod = 'text';
$dbo->cols['mn_func']->option->detailMethod = 'text';
$dbo->cols['mn_func']->option->newMethod = 'text';
$dbo->cols['mn_func']->option->editMethod = 'text';
$dbo->cols['mn_funclist'] = new DBO_COL('mn_funclist', 'varchar', '-1', '1004');
$dbo->cols['mn_funclist']->inputTypeDefault = 'text';
$dbo->cols['mn_funclist']->searchMode = 'exact';
$dbo->cols['mn_funclist']->capContClassDefault = array();
$dbo->cols['mn_funclist']->valContClassDefault = array();
$dbo->cols['mn_funclist']->option->defaultMethod = 'text';
$dbo->cols['mn_funclist']->option->searchMethod = 'text';
$dbo->cols['mn_funclist']->option->listMethod = 'text';
$dbo->cols['mn_funclist']->option->detailMethod = 'text';
$dbo->cols['mn_funclist']->option->newMethod = 'text';
$dbo->cols['mn_funclist']->option->editMethod = 'text';
$dbo->cols['mn_param'] = new DBO_COL('mn_param', 'varchar', '-1', '504');
$dbo->cols['mn_param']->inputTypeDefault = 'text';
$dbo->cols['mn_param']->searchMode = 'exact';
$dbo->cols['mn_param']->capContClassDefault = array();
$dbo->cols['mn_param']->valContClassDefault = array();
$dbo->cols['mn_param']->option->defaultMethod = 'text';
$dbo->cols['mn_param']->option->searchMethod = 'text';
$dbo->cols['mn_param']->option->listMethod = 'text';
$dbo->cols['mn_param']->option->detailMethod = 'text';
$dbo->cols['mn_param']->option->newMethod = 'text';
$dbo->cols['mn_param']->option->editMethod = 'text';

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
$dbo->newModifier = 'samplemenu_custom_new';
function samplemenu_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'samplemenu_custom_edit';
function samplemenu_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'samplemenu_custom_search';
function samplemenu_custom_search(&$search){
}

$dbo->deleteModifier = 'samplemenu_custom_delete';
function samplemenu_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}
*/
?>