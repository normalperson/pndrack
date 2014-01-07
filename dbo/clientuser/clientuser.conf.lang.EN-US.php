<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['usr_userid']->caption->set('default', 'usr_userid', 'text');
$dbo->cols['usr_password']->caption->set('default', 'usr_password', 'text');
$dbo->cols['usr_created']->caption->set('default', 'usr_created', 'text');
$dbo->cols['usr_name']->caption->set('default', 'usr_name', 'text');
$dbo->cols['usr_email']->caption->set('default', 'usr_email', 'text');
$dbo->cols['usr_last_active']->caption->set('default', 'usr_last_active', 'text');
$dbo->cols['usr_last_success_login']->caption->set('default', 'usr_last_success_login', 'text');
$dbo->cols['usr_last_fail_login']->caption->set('default', 'usr_last_fail_login', 'text');
$dbo->cols['usr_group']->caption->set('default', 'usr_group', 'text');
$dbo->cols['usr_sessiondata']->caption->set('default', 'usr_sessiondata', 'text');
$dbo->cols['usr_langid']->caption->set('default', 'usr_langid', 'text');
$dbo->cols['usr_status']->caption->set('default', 'usr_status', 'text');
$dbo->cols['password2']->caption->set('default', 'password2', 'text');
$dbo->cols['password1']->caption->set('default', 'password1', 'text');
$dbo->cols['orgid']->caption->set('default', 'orgid', 'text');
$dbo->cols['userRole']->caption->set('default', 'userRole', 'text');
$dbo->cols['currpassword']->caption->set('default', 'currpassword', 'text');

$dbo->titleList = 'List Record';
$dbo->titleDetail = 'Detail';
$dbo->titleNew = 'New Record';
$dbo->titleEdit = 'Edit Record';
$dbo->titleSearch = 'Search Record';
$dbo->text->searchCancel = 'Reset';
$dbo->text->searchSubmit = 'Search';
$dbo->text->editCancel = 'Cancel';
$dbo->text->editSubmit = 'Edit';
$dbo->text->newCancel = 'Cancel';
$dbo->text->newSubmit = 'Submit';
$dbo->text->listNewEditSubmit = 'Save';
$dbo->text->detailCancel = 'Back';

?>