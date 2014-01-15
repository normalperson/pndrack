<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'packagesetup';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'smpackage';
$dbo->key = array('pk_id');
$dbo->sql = 'select * from smpackage';
$dbo->col = array('pk_id', 'pk_description', 'pk_price', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg');
$dbo->colList = array('pk_description', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg', 'pk_price');
$dbo->colListEdit = array('pk_price', 'pk_maxorg');
$dbo->colListNew = array('pk_description');
$dbo->colListGlobalInput = array('pk_minplate', 'pk_maxplate');
$dbo->colDetail = array('pk_description', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg', 'pk_price');
$dbo->colNew = array('pk_description', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg', 'pk_price');
$dbo->colEdit = array('pk_description', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg', 'pk_price');
$dbo->colSearch = array('pk_description', 'pk_price', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg', 'pk_id');
$dbo->colExport = array('pk_description', 'pk_minplate', 'pk_maxplate', 'pk_maxuser', 'pk_maxorg', 'pk_price');
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

$dbo->cols['pk_id'] = new DBO_COL('pk_id', 'LONG', '11', '0');
$dbo->cols['pk_id']->inputTypeDefault = 'text';
$dbo->cols['pk_id']->searchMode = 'exact';
$dbo->cols['pk_id']->capContClassDefault = array();
$dbo->cols['pk_id']->valContClassDefault = array();
$dbo->cols['pk_id']->option->defaultMethod = 'text';
$dbo->cols['pk_id']->option->searchMethod = 'text';
$dbo->cols['pk_id']->option->listMethod = 'text';
$dbo->cols['pk_id']->option->detailMethod = 'text';
$dbo->cols['pk_id']->option->newMethod = 'text';
$dbo->cols['pk_id']->option->editMethod = 'text';
$dbo->cols['pk_description'] = new DBO_COL('pk_description', 'VAR_STRING', '600', '0');
$dbo->cols['pk_description']->inputTypeDefault = 'text';
$dbo->cols['pk_description']->searchMode = 'exact';
$dbo->cols['pk_description']->capContClassDefault = array();
$dbo->cols['pk_description']->valContClassDefault = array();
$dbo->cols['pk_description']->option->defaultMethod = 'text';
$dbo->cols['pk_description']->option->searchMethod = 'text';
$dbo->cols['pk_description']->option->listMethod = 'text';
$dbo->cols['pk_description']->option->detailMethod = 'text';
$dbo->cols['pk_description']->option->newMethod = 'text';
$dbo->cols['pk_description']->option->editMethod = 'text';
$dbo->cols['pk_price'] = new DBO_COL('pk_price', 'NEWDECIMAL', '12', '2');
$dbo->cols['pk_price']->inputTypeDefault = 'text';
$dbo->cols['pk_price']->searchMode = 'exact';
$dbo->cols['pk_price']->capContClassDefault = array();
$dbo->cols['pk_price']->valContClassDefault = array();
$dbo->cols['pk_price']->option->defaultMethod = 'text';
$dbo->cols['pk_price']->option->searchMethod = 'text';
$dbo->cols['pk_price']->option->listMethod = 'text';
$dbo->cols['pk_price']->option->detailMethod = 'text';
$dbo->cols['pk_price']->option->newMethod = 'text';
$dbo->cols['pk_price']->option->editMethod = 'text';
$dbo->cols['pk_minplate'] = new DBO_COL('pk_minplate', 'LONG', '11', '0');
$dbo->cols['pk_minplate']->inputTypeDefault = 'text';
$dbo->cols['pk_minplate']->searchMode = 'exact';
$dbo->cols['pk_minplate']->capContClassDefault = array();
$dbo->cols['pk_minplate']->valContClassDefault = array();
$dbo->cols['pk_minplate']->option->defaultMethod = 'text';
$dbo->cols['pk_minplate']->option->searchMethod = 'text';
$dbo->cols['pk_minplate']->option->listMethod = 'text';
$dbo->cols['pk_minplate']->option->detailMethod = 'text';
$dbo->cols['pk_minplate']->option->newMethod = 'text';
$dbo->cols['pk_minplate']->option->editMethod = 'text';
$dbo->cols['pk_maxplate'] = new DBO_COL('pk_maxplate', 'LONG', '11', '0');
$dbo->cols['pk_maxplate']->inputTypeDefault = 'text';
$dbo->cols['pk_maxplate']->searchMode = 'exact';
$dbo->cols['pk_maxplate']->capContClassDefault = array();
$dbo->cols['pk_maxplate']->valContClassDefault = array();
$dbo->cols['pk_maxplate']->option->defaultMethod = 'text';
$dbo->cols['pk_maxplate']->option->searchMethod = 'text';
$dbo->cols['pk_maxplate']->option->listMethod = 'text';
$dbo->cols['pk_maxplate']->option->detailMethod = 'text';
$dbo->cols['pk_maxplate']->option->newMethod = 'text';
$dbo->cols['pk_maxplate']->option->editMethod = 'text';
$dbo->cols['pk_maxuser'] = new DBO_COL('pk_maxuser', 'LONG', '11', '0');
$dbo->cols['pk_maxuser']->inputTypeDefault = 'text';
$dbo->cols['pk_maxuser']->searchMode = 'exact';
$dbo->cols['pk_maxuser']->capContClassDefault = array();
$dbo->cols['pk_maxuser']->valContClassDefault = array();
$dbo->cols['pk_maxuser']->option->defaultMethod = 'text';
$dbo->cols['pk_maxuser']->option->searchMethod = 'text';
$dbo->cols['pk_maxuser']->option->listMethod = 'text';
$dbo->cols['pk_maxuser']->option->detailMethod = 'text';
$dbo->cols['pk_maxuser']->option->newMethod = 'text';
$dbo->cols['pk_maxuser']->option->editMethod = 'text';
$dbo->cols['pk_maxorg'] = new DBO_COL('pk_maxorg', 'LONG', '11', '0');
$dbo->cols['pk_maxorg']->inputTypeDefault = 'text';
$dbo->cols['pk_maxorg']->searchMode = 'exact';
$dbo->cols['pk_maxorg']->capContClassDefault = array();
$dbo->cols['pk_maxorg']->valContClassDefault = array();
$dbo->cols['pk_maxorg']->option->defaultMethod = 'text';
$dbo->cols['pk_maxorg']->option->searchMethod = 'text';
$dbo->cols['pk_maxorg']->option->listMethod = 'text';
$dbo->cols['pk_maxorg']->option->detailMethod = 'text';
$dbo->cols['pk_maxorg']->option->newMethod = 'text';
$dbo->cols['pk_maxorg']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_packagesetup_custom_new';
function dbo_packagesetup_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_packagesetup_custom_edit';
function dbo_packagesetup_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_packagesetup_custom_search';
function dbo_packagesetup_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_packagesetup_custom_delete';
function dbo_packagesetup_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_packagesetup_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>