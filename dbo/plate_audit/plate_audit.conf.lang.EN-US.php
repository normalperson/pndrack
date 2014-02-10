<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['dba_id']->caption->set('default', 'dba_id', 'text');
$dbo->cols['dba_created']->caption->set('default', 'Date', 'text');
$dbo->cols['dba_userid']->caption->set('default', 'Userid', 'text');
$dbo->cols['dba_table']->caption->set('default', 'dba_table', 'text');
$dbo->cols['dba_column']->caption->set('default', 'dba_column', 'text');
$dbo->cols['dba_oldvalue']->caption->set('default', 'Old Value', 'text');
$dbo->cols['dba_newvalue']->caption->set('default', 'New Value', 'text');
$dbo->cols['dba_keys']->caption->set('default', 'dba_keys', 'text');
$dbo->cols['dba_key1']->caption->set('default', 'dba_key1', 'text');
$dbo->cols['dba_key2']->caption->set('default', 'dba_key2', 'text');
$dbo->cols['dba_key3']->caption->set('default', 'dba_key3', 'text');
$dbo->cols['dba_key4']->caption->set('default', 'dba_key4', 'text');
$dbo->cols['dba_key5']->caption->set('default', 'dba_key5', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->text->defaultMessageAfterNew = 'Record created.';
$dbo->text->defaultMessageAfterEdit = 'Record updated.';
$dbo->text->defaultMessageAfterDelete = 'Record deleted.';

?>