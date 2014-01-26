<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dboID = 'fonginput';
$dbo = DBO_init($dboID);
$dbo->id = $dboID;
$dbo->table = 'fonginput';
$dbo->key = array('fi_id');
$dbo->sql = 'select * from fonginput';
$dbo->col = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colList = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select');
$dbo->colListEdit = array();
$dbo->colListNew = array();
$dbo->colListGlobalInput = array();
$dbo->colDetail = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colNew = array('fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colEdit = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colSearch = array('fi_created', 'fi_text', 'fi_multiselect');
$dbo->colExport = array('fi_id', 'fi_created', 'fi_text', 'fi_textarea', 'fi_select', 'fi_multiselect', 'fi_checkbox', 'fi_radio', 'fi_date', 'fi_integer', 'fi_html');
$dbo->colSort = array();
$dbo->canSearch = true;
$dbo->canNew = true;
$dbo->canEdit = true;
$dbo->canDelete = true;
$dbo->canDetail = true;
$dbo->canListEdit = true;
$dbo->canListNew = true;
$dbo->canNewGroup = array();
$dbo->canEditGroup = array();
$dbo->canDeleteGroup = array();
$dbo->showSearch = true;
$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->layoutNew = '1|1|1';
$dbo->theme = 'skyblue';
$dbo->layout = 'One';
$dbo->width = '100%';
$dbo->pageLinkCount = 7;
$dbo->recordPerPage = 10;
$dbo->defaultState = 'list';
$dbo->maxSortCount = 9;
$dbo->lang = 'EN-US';
$dbo->render = array();
$dbo->detailBack = 'Back';
$dbo->listEditSubmit = 'Submit';

$dbo->cols['fi_id'] = new DBO_COL('fi_id', 'LONG', '11', '0');
$dbo->cols['fi_id']->inputTypeDefault = 'text';
$dbo->cols['fi_id']->searchMode = 'exact';
$dbo->cols['fi_id']->capContClassDefault = array();
$dbo->cols['fi_id']->valContClassDefault = array();
$dbo->cols['fi_id']->option->defaultMethod = 'text';
$dbo->cols['fi_id']->option->searchMethod = 'text';
$dbo->cols['fi_id']->option->listMethod = 'text';
$dbo->cols['fi_id']->option->detailMethod = 'text';
$dbo->cols['fi_id']->option->newMethod = 'text';
$dbo->cols['fi_id']->option->editMethod = 'text';
$dbo->cols['fi_created'] = new DBO_COL('fi_created', 'TIMESTAMP', '19', '0');
$dbo->cols['fi_created']->displayDataType = 'datetime';
$dbo->cols['fi_created']->inputTypeDefault = 'text';
$dbo->cols['fi_created']->searchMode = 'exact';
$dbo->cols['fi_created']->capContClassDefault = array();
$dbo->cols['fi_created']->valContClassDefault = array();
$dbo->cols['fi_created']->option->defaultMethod = 'text';
$dbo->cols['fi_created']->option->searchMethod = 'text';
$dbo->cols['fi_created']->option->listMethod = 'text';
$dbo->cols['fi_created']->option->detailMethod = 'text';
$dbo->cols['fi_created']->option->newMethod = 'text';
$dbo->cols['fi_created']->option->editMethod = 'text';
$dbo->cols['fi_text'] = new DBO_COL('fi_text', 'VAR_STRING', '600', '0');
$dbo->cols['fi_text']->inputTypeDefault = 'text';
$dbo->cols['fi_text']->searchMode = 'exact';
$dbo->cols['fi_text']->capContClassDefault = array();
$dbo->cols['fi_text']->valContClassDefault = array();
$dbo->cols['fi_text']->option->defaultMethod = 'text';
$dbo->cols['fi_text']->option->searchMethod = 'text';
$dbo->cols['fi_text']->option->listMethod = 'text';
$dbo->cols['fi_text']->option->detailMethod = 'text';
$dbo->cols['fi_text']->option->newMethod = 'text';
$dbo->cols['fi_text']->option->editMethod = 'text';
$dbo->cols['fi_textarea'] = new DBO_COL('fi_textarea', 'BLOB', '196605', '0');
$dbo->cols['fi_textarea']->inputTypeDefault = 'textarea';
$dbo->cols['fi_textarea']->searchMode = 'exact';
$dbo->cols['fi_textarea']->capContClassDefault = array();
$dbo->cols['fi_textarea']->valContClassDefault = array();
$dbo->cols['fi_textarea']->option->defaultMethod = 'text';
$dbo->cols['fi_textarea']->option->searchMethod = 'text';
$dbo->cols['fi_textarea']->option->listMethod = 'text';
$dbo->cols['fi_textarea']->option->detailMethod = 'text';
$dbo->cols['fi_textarea']->option->newMethod = 'text';
$dbo->cols['fi_textarea']->option->editMethod = 'text';
$dbo->cols['fi_select'] = new DBO_COL('fi_select', 'VAR_STRING', '300', '0');
$dbo->cols['fi_select']->inputTypeDefault = 'select';
$dbo->cols['fi_select']->searchMode = 'exact';
$dbo->cols['fi_select']->capContClassDefault = array();
$dbo->cols['fi_select']->valContClassDefault = array();
$dbo->cols['fi_select']->option->default = 'select fi_id, fi_text from fonginput where substr(fi_text, 1, 1) in ({fi_multiselect})';
$dbo->cols['fi_select']->option->defaultMethod = 'sql';
$dbo->cols['fi_select']->option->searchMethod = 'text';
$dbo->cols['fi_select']->option->listMethod = 'text';
$dbo->cols['fi_select']->option->detailMethod = 'text';
$dbo->cols['fi_select']->option->newMethod = 'text';
$dbo->cols['fi_select']->option->editMethod = 'text';
$dbo->cols['fi_multiselect'] = new DBO_COL('fi_multiselect', 'VAR_STRING', '3000', '0');
$dbo->cols['fi_multiselect']->inputTypeDefault = 'multiselect';
$dbo->cols['fi_multiselect']->searchMode = 'exact';
$dbo->cols['fi_multiselect']->capContClassDefault = array();
$dbo->cols['fi_multiselect']->valContClassDefault = array();
$dbo->cols['fi_multiselect']->option->default = 'A
B
C
D
E
F
G';
$dbo->cols['fi_multiselect']->option->defaultMethod = 'text';
$dbo->cols['fi_multiselect']->option->searchMethod = 'text';
$dbo->cols['fi_multiselect']->option->listMethod = 'text';
$dbo->cols['fi_multiselect']->option->detailMethod = 'text';
$dbo->cols['fi_multiselect']->option->newMethod = 'text';
$dbo->cols['fi_multiselect']->option->editMethod = 'text';
$dbo->cols['fi_checkbox'] = new DBO_COL('fi_checkbox', 'VAR_STRING', '3000', '0');
$dbo->cols['fi_checkbox']->inputTypeDefault = 'checkbox';
$dbo->cols['fi_checkbox']->size = 5;
$dbo->cols['fi_checkbox']->searchMode = 'exact';
$dbo->cols['fi_checkbox']->capContClassDefault = array();
$dbo->cols['fi_checkbox']->valContClassDefault = array();
$dbo->cols['fi_checkbox']->option->default = 'select fi_id, fi_text from fonginput where fi_text like \'{fi_text}%\'';
$dbo->cols['fi_checkbox']->option->defaultMethod = 'sql';
$dbo->cols['fi_checkbox']->option->searchMethod = 'text';
$dbo->cols['fi_checkbox']->option->listMethod = 'text';
$dbo->cols['fi_checkbox']->option->detailMethod = 'text';
$dbo->cols['fi_checkbox']->option->newMethod = 'text';
$dbo->cols['fi_checkbox']->option->editMethod = 'text';
$dbo->cols['fi_radio'] = new DBO_COL('fi_radio', 'VAR_STRING', '150', '0');
$dbo->cols['fi_radio']->inputTypeDefault = 'radio';
$dbo->cols['fi_radio']->size = 5;
$dbo->cols['fi_radio']->searchMode = 'exact';
$dbo->cols['fi_radio']->capContClassDefault = array();
$dbo->cols['fi_radio']->valContClassDefault = array();
$dbo->cols['fi_radio']->option->default = '1/One
2/Two
3/Three
4/Four
5/Five';
$dbo->cols['fi_radio']->option->defaultMethod = 'text';
$dbo->cols['fi_radio']->option->searchMethod = 'text';
$dbo->cols['fi_radio']->option->listMethod = 'text';
$dbo->cols['fi_radio']->option->detailMethod = 'text';
$dbo->cols['fi_radio']->option->newMethod = 'text';
$dbo->cols['fi_radio']->option->editMethod = 'text';
$dbo->cols['fi_date'] = new DBO_COL('fi_date', 'TIMESTAMP', '19', '0');
$dbo->cols['fi_date']->displayDataType = 'date';
$dbo->cols['fi_date']->inputTypeDefault = 'text';
$dbo->cols['fi_date']->searchMode = 'exact';
$dbo->cols['fi_date']->capContClassDefault = array();
$dbo->cols['fi_date']->valContClassDefault = array();
$dbo->cols['fi_date']->option->defaultMethod = 'text';
$dbo->cols['fi_date']->option->searchMethod = 'text';
$dbo->cols['fi_date']->option->listMethod = 'text';
$dbo->cols['fi_date']->option->detailMethod = 'text';
$dbo->cols['fi_date']->option->newMethod = 'text';
$dbo->cols['fi_date']->option->editMethod = 'text';
$dbo->cols['fi_integer'] = new DBO_COL('fi_integer', 'LONG', '11', '0');
$dbo->cols['fi_integer']->displayDataType = 'int';
$dbo->cols['fi_integer']->inputTypeDefault = 'text';
$dbo->cols['fi_integer']->searchMode = 'exact';
$dbo->cols['fi_integer']->capContClassDefault = array();
$dbo->cols['fi_integer']->valContClassDefault = array();
$dbo->cols['fi_integer']->option->defaultMethod = 'text';
$dbo->cols['fi_integer']->option->searchMethod = 'text';
$dbo->cols['fi_integer']->option->listMethod = 'text';
$dbo->cols['fi_integer']->option->detailMethod = 'text';
$dbo->cols['fi_integer']->option->newMethod = 'text';
$dbo->cols['fi_integer']->option->editMethod = 'text';
$dbo->cols['fi_html'] = new DBO_COL('fi_html', 'BLOB', '196605', '0');
$dbo->cols['fi_html']->inputTypeDefault = 'html';
$dbo->cols['fi_html']->searchMode = 'exact';
$dbo->cols['fi_html']->capContClassDefault = array();
$dbo->cols['fi_html']->valContClassDefault = array();
$dbo->cols['fi_html']->option->defaultMethod = 'text';
$dbo->cols['fi_html']->option->searchMethod = 'text';
$dbo->cols['fi_html']->option->listMethod = 'text';
$dbo->cols['fi_html']->option->detailMethod = 'text';
$dbo->cols['fi_html']->option->newMethod = 'text';
$dbo->cols['fi_html']->option->editMethod = 'text';

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
$dbo->newModifier = 'dbo_fonginput_custom_new';
function dbo_fonginput_custom_new($table, $cols){
	global $DB;
	$ret = array();
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->editModifier = 'dbo_fonginput_custom_edit';
function dbo_fonginput_custom_edit($table, $cols, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doUpdate($table, $cols, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

$dbo->searchModifier = 'dbo_fonginput_custom_search';
function dbo_fonginput_custom_search(&$search){
}

$dbo->deleteModifier = 'dbo_fonginput_custom_delete';
function dbo_fonginput_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}

function dbo_fonginput_display_modifier($col, $colVal, $data=array(), $html=null){
}
*/
?>