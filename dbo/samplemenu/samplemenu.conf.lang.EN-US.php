<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['mn_id']->caption->set('default', 'mn_id', 'text');
$dbo->cols['mn_code']->caption->set('default', 'mn_code', 'text');
$dbo->cols['mn_parentid']->caption->set('default', 'Parent ID', 'text');
$dbo->cols['mn_title']->caption->set('default', 'Title', 'text');
$dbo->cols['mn_status']->caption->set('default', 'Status', 'text');
$dbo->cols['mn_order']->caption->set('default', 'Order', 'text');
$dbo->cols['mn_group']->caption->set('default', 'Group', 'text');
$dbo->cols['mn_url']->caption->set('default', 'mn_url', 'text');
$dbo->cols['mn_webflag']->caption->set('default', 'mn_webflag', 'text');
$dbo->cols['mn_class']->caption->set('default', 'mn_class', 'text');
$dbo->cols['mn_classlist']->caption->set('default', 'mn_classlist', 'text');
$dbo->cols['mn_func']->caption->set('default', 'mn_func', 'text');
$dbo->cols['mn_funclist']->caption->set('default', 'mn_funclist', 'text');
$dbo->cols['mn_param']->caption->set('default', 'mn_param', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->text->searchCancel = 'Cancel';
$dbo->text->searchSubmit = 'Search';
$dbo->text->editCancel = 'Cancel';
$dbo->text->editSubmit = 'Save';
$dbo->text->newCancel = 'Cancel';
$dbo->text->newSubmit = 'Save';
$dbo->text->detailCancel = 'Back';

?>