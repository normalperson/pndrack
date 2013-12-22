<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'fonginput';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fonginput';
$dbo->key = array();
$dbo->sql = 'select * from fonginput';
$dbo->col = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colList = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select');
$dbo->colDetail = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colNew = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colEdit = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colSearch = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colExport = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colSort = array();
$dbo->canSearch = false;
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
$dbo->exportFormat = array();
$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->theme = 'blacktie';
$dbo->layout = 'One';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 10;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'EN-US';
$dbo->render = array();
$dbo->searchCancel = 'Reset';
$dbo->searchSubmit = 'Search';
$dbo->detailBack = 'Back';
$dbo->editCancel = 'Cancel';
$dbo->editSubmit = 'Submit';
$dbo->listEditSubmit = 'Submit';
$dbo->newCancel = 'Cancel';
$dbo->newSubmit = 'Submit';

$dbo->cols['fi_id'] = new DBO_COL('fi_id', 'LONG', '11', '0');
$dbo->cols['fi_id']->capContClassDefault = array();
$dbo->cols['fi_id']->valContClassDefault = array();
$dbo->cols['fi_created'] = new DBO_COL('fi_created', 'TIMESTAMP', '19', '0');
$dbo->cols['fi_created']->capContClassDefault = array();
$dbo->cols['fi_created']->valContClassDefault = array();
$dbo->cols['fi_text'] = new DBO_COL('fi_text', 'VAR_STRING', '600', '0');
$dbo->cols['fi_text']->capContClassDefault = array();
$dbo->cols['fi_text']->valContClassDefault = array();
$dbo->cols['fi_textarea'] = new DBO_COL('fi_textarea', 'BLOB', '196605', '0');
$dbo->cols['fi_textarea']->capContClassDefault = array();
$dbo->cols['fi_textarea']->valContClassDefault = array();
$dbo->cols['fi_select'] = new DBO_COL('fi_select', 'VAR_STRING', '300', '0');
$dbo->cols['fi_select']->capContClassDefault = array();
$dbo->cols['fi_select']->valContClassDefault = array();
$dbo->cols['fi_multiselect'] = new DBO_COL('fi_multiselect', 'VAR_STRING', '3000', '0');
$dbo->cols['fi_multiselect']->capContClassDefault = array();
$dbo->cols['fi_multiselect']->valContClassDefault = array();
$dbo->cols['fi_checkbox'] = new DBO_COL('fi_checkbox', 'VAR_STRING', '3000', '0');
$dbo->cols['fi_checkbox']->capContClassDefault = array();
$dbo->cols['fi_checkbox']->valContClassDefault = array();
$dbo->cols['fi_radio'] = new DBO_COL('fi_radio', 'VAR_STRING', '150', '0');
$dbo->cols['fi_radio']->capContClassDefault = array();
$dbo->cols['fi_radio']->valContClassDefault = array();
$dbo->cols['fi_date'] = new DBO_COL('fi_date', 'TIMESTAMP', '19', '0');
$dbo->cols['fi_date']->capContClassDefault = array();
$dbo->cols['fi_date']->valContClassDefault = array();
$dbo->cols['fi_integer'] = new DBO_COL('fi_integer', 'LONG', '11', '0');
$dbo->cols['fi_integer']->capContClassDefault = array();
$dbo->cols['fi_integer']->valContClassDefault = array();
$dbo->cols['fi_html'] = new DBO_COL('fi_html', 'BLOB', '196605', '0');
$dbo->cols['fi_html']->capContClassDefault = array();
$dbo->cols['fi_html']->valContClassDefault = array();

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
$dbo->newModifier = 'fonginput_custom_new';
function fonginput_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'fonginput_custom_edit';
function fonginput_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'fonginput_custom_search';
function fonginput_custom_search(&$search){
}

$dbo->deleteModifier = 'fonginput_custom_delete';
function fonginput_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function fonginput_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>