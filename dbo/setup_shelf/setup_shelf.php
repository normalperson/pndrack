<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_shelf.conf.php');

# customization
function setup_shelf_customize(&$dbo){
}

/*function getShelfGroup(){
	global $DB,$USER;
	$sql = "select sg_id,sg_groupname
		from smshelfgroup
		where sg_orgid = '".$USER->orgid."'
		order by sg_seq";
	
	$result = $DB->GetArray($sql);
	vd($result);
	return $result;		
}*/

$dbo->newModifier = 'setup_shelf_custom_new';
function setup_shelf_custom_new($table, $cols){
	global $DB,$USER;
	$ret = array();
	// validation
	$cnt = $DB->GetOne("select count(*) from smshelfsetting where sf_code = :0 and sf_sgid = :1",array($cols['sf_code'],$cols['sf_sgid']));
	if($cnt > 0){
		echo '<script>alert("You are not allow to have duplicated shelf code in the same group");</script>';
		return;
	}

	// get shelf group code
	$sgname = $DB->GetOne("select sg_groupname from smshelfgroup where sg_id = :0",array($cols['sf_sgid']));
	$totalslot = $cols['sf_totalplate'];
	$shelfcode = $cols['sf_code'];

	$cols['sf_orgid'] =  $USER->orgid;
	$ok = $DB->doInsert($table, $cols);
	// get the last insert id
	$sfid = $DB->lastInsertId();
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		// populate smplateslot
		for ($i = 1;$i<=$totalslot;$i++){
			$slotno = str_pad($i,4,"0",STR_PAD_LEFT);
			$pscode = $sgname.'-'.$shelfcode.'-'.$slotno;
			$data = array( 
				'ps_sfid' => $sfid,
				'ps_slotno' => $slotno,
				'ps_code' => $pscode
				);
			$ok = $DB->doInsert("smplateslot", $data);
		}		
	}
	return $ret;
}
$dbo->deleteModifier = 'setup_shelf_custom_delete';
function setup_shelf_custom_delete($table, $wheres){
	global $DB;
	$ret = array();
	// validate is there anyboard on this shelf... if yes do not allow to delete
	$sql = "select count(*) from smplateslot where ps_sfid = :0 and ps_available = :1";
	$cnt = $DB->GetOne($sql,array($wheres['sf_id'],'N'));

	if($cnt > 0){
		//echo '<script>alert("You are not allow to delete shelf with board");</script>';
		$ret = 'You are not allow to delete shelf with board';
		return $ret;
	}


	$ok = $DB->doDelete($table, $wheres);
	if(!$ok){
		$ret[] = $DB->lastError;
	}else{
		//$sql ="delete from smplateslot where ps_sfid = :0"
	}
	return $ret;
}
global $USER;
/*
vd($USER->userid);
global $DB;
$DB->showsql = true;*/
if($USER->userid != 'admin') $dbo->whereSQL = "sf_orgid = '".$USER->orgid."'";

#$dbo->cols['op_packageid']->option->default = 'select pk_id, pk_description from smpackage where pk_id = 2 order by 2 asc';

$dbo->cols['sf_sgid']->option->default = 'select sg_id,sg_groupname from smshelfgroup where sg_orgid = '.$USER->orgid.' order by sg_seq';
# final rendering
$dbo->render();
echo '<input type="button" id="printlabel" class="btn btn-primary" value="Print Label" />';
?>
<script type="text/javascript">
$btn = {
	printlabel : $('#printlabel')
};
$select = {
	shelfgroup    : $('#dbo_setup_shelf_new_sf_sgid'),
};
$input = {
    shelfcode : $('#dbo_setup_shelf_new_sf_code'),
    shelfdesc : $('#dbo_setup_shelf_new_sf_desc')
};

$select.shelfgroup.on('change',function(){
	var recommendsugg = '';
	recommendsugg = $('#dbo_setup_shelf_new_sf_sgid option:selected').text()+'-'+$input.shelfcode.val();
	$input.shelfdesc.val(recommendsugg);
});
$input.shelfcode.on('keyup',function(){
	var recommendsugg = '';
	recommendsugg = $('#dbo_setup_shelf_new_sf_sgid option:selected').text()+'-'+$(this).val();
	$input.shelfdesc.val(recommendsugg);
});
function fullScreenPopUp(url){
	var params = [
    'height='+screen.height,
    'width='+screen.width,
    'fullscreen=yes' // only works in IE, but here for completeness
	].join(',');

	var popup = window.open(url, 'popup_window', params); 
	popup.moveTo(0,0);
}
$btn.printlabel.click(function(){
	var sfidarr = [], count=0;

	$("input:checkbox:checked").each(function(){
		if($(this).attr('id') != 'dboform_setup_shelf_list_cb_toggle'){
			sfidarr.push($(this).val().split('=')[1]);
		}
		count++;
	});

	if(count>0){
		url = window.location.href  +'/../printShelfLabel?sfiarr='+sfidarr;

		fullScreenPopUp(url);
	}else{
		alert('Please select at least one shelf');
	}

});
</script>