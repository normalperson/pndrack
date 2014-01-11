<?php
require_once(dirname(__FILE__).DIRECTORY_SEPARATOR.'..'.DIRECTORY_SEPARATOR.'init.inc.php');

$dbo->cols['sp_id']->caption->set('default', 'sp_id', 'text');
$dbo->cols['sp_cusid']->caption->set('default', 'sp_cusid', 'text');
$dbo->cols['sp_sfid']->caption->set('default', 'sp_sfid', 'text');
$dbo->cols['sp_parentid']->caption->set('default', 'sp_parentid', 'text');
$dbo->cols['sp_psid']->caption->set('default', 'sp_psid', 'text');
$dbo->cols['sp_masterid']->caption->set('default', 'sp_masterid', 'text');
$dbo->cols['sp_platename']->caption->set('default', 'Plate Name', 'text');
$dbo->cols['sp_platemodel']->caption->set('default', 'Plate Model', 'text');
$dbo->cols['sp_createddate']->caption->set('default', 'sp_createddate', 'text');
$dbo->cols['sp_createdby']->caption->set('default', 'sp_createdby', 'text');
$dbo->cols['cus_id']->caption->set('default', 'Customer', 'text');
$dbo->cols['cus_name']->caption->set('default', 'Customer Name', 'text');
$dbo->cols['cus_regno']->caption->set('default', 'cus_regno', 'text');
$dbo->cols['cus_masterid']->caption->set('default', 'MasterID', 'text');
$dbo->cols['cus_contactno']->caption->set('default', 'cus_contactno', 'text');
$dbo->cols['sf_id']->caption->set('default', 'Shelf', 'text');
$dbo->cols['sf_sgid']->caption->set('default', 'sf_sgid', 'text');
$dbo->cols['sf_code']->caption->set('default', 'sf_code', 'text');
$dbo->cols['sf_desc']->caption->set('default', 'sf_desc', 'text');
$dbo->cols['sf_totalplate']->caption->set('default', 'sf_totalplate', 'text');
$dbo->cols['sf_seq']->caption->set('default', 'sf_seq', 'text');
$dbo->cols['sg_id']->caption->set('default', 'sg_id', 'text');
$dbo->cols['sg_code']->caption->set('default', 'sg_code', 'text');
$dbo->cols['sg_groupname']->caption->set('default', 'sg_groupname', 'text');
$dbo->cols['sg_seq']->caption->set('default', 'sg_seq', 'text');
$dbo->cols['ps_id']->caption->set('default', 'ps_id', 'text');
$dbo->cols['ps_sfid']->caption->set('default', 'ps_sfid', 'text');
$dbo->cols['ps_slotno']->caption->set('default', 'ps_slotno', 'text');
$dbo->cols['ps_code']->caption->set('default', 'Location', 'text');
$dbo->cols['ps_available']->caption->set('default', 'ps_available', 'text');
$dbo->cols['sp_orgid']->caption->set('default', 'sp_orgid', 'text');

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

?>