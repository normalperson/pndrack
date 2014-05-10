<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'platelist.conf.php');

function checkin($colname,$colval,$rowinfo){
	//$rowinfo['hmc_receiptdt']
	return "<a href='../rackOperation/checkinout?psid=".$rowinfo['sp_id']."'>$colval</a>";
}
function history($colname,$colval,$rowinfo){
	//$rowinfo['hmc_receiptdt']
	return "<a href='#' class='history' data-spid='".$rowinfo['sp_id']."' data-platename='".$rowinfo['sp_platename']."'>$colval</a>";
}

function dbo_platelist_custom_edit($table, $cols, $wheres){
	//print 'inside custom edit';
	global $DB;
	$ret = array();

	// original plate id
	// get exitisting slot code
	$sql = "select * from smplate join smplateslot on sp_psid = ps_id
			where sp_id = :0";
	$plateInfo = $DB->GetRow($sql,array($wheres['sp_id']));

	$newpscode = $cols['ps_code'];
	$newshelf  = $cols['sp_sfid'];
	
	// check existing location and new location are different (different shelf or different slot)
	if($plateInfo['ps_code'] != $newpscode || $plateInfo['sp_sfid'] != $newshelf ){
		$sql = "select count(*) from smplateslot where ps_sfid = :0 and ps_code =:1 and ps_available=:2";
		$cnt = $DB->GetOne($sql,array($newshelf,$newpscode,'Y'));
		// no slot available
		if($cnt ==0){
			$ret = 'This slot is not available, please select another slot';
			return $ret;
		}else{
			// update new slot to N
		    $sql = 'update smplateslot set ps_available = :0 where ps_sfid = :1 and ps_code = :2';
		    $ok = $DB->Execute($sql,array('N',$newshelf,$newpscode));
		    // get the slot id
		    $slotid = $DB->GetOne("select ps_id from smplateslot where ps_code = :0 and ps_sfid = :1",array($newpscode,$newshelf));
		    $sql = "update smplate set sp_psid = :0 where sp_id = :1";
		    $ok = $DB->Execute($sql,array($slotid,$plateInfo['sp_id']));

		    // update existing slot to Y
		    $sql = 'update smplateslot set ps_available = :0 where ps_id = :1';
		    $ok = $DB->Execute($sql,array('Y',$plateInfo['ps_id']));
		}
		// change location, need to check location available 
		// not available return error

		// update location...

	}
	unset($cols['ps_code']); // does not update slot info
	// update plate info
	$ok = $DB->doUpdateAudit($table, $cols, $wheres, array('sp_plateinfo'));
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	
	return $ret;
}

# customization
/*function platelist_customize(&$dbo){
	print 'inside here'; 
	$dbo->editModifier = 'dbo_platelist_custom_edit';
}*/
$dbo->editModifier = 'dbo_platelist_custom_edit';
global $USER;
if($USER->userid != 'admin' && $USER->userid != 'pndadmin'){
	$dbo->whereSQL = "sp_orgid = '".$USER->orgid."'";
	$dbo->cols['sp_sfid']->option->default = "select sf_id,sf_desc from smshelfsetting where sf_orgid = ".$USER->orgid." order by sf_seq";
	$dbo->cols['sp_cusid']->option->default = 'select cus_id, cus_name from smcustomer where cus_orgid = '.$USER->orgid.' order by cus_name';
}



# final rendering
$dbo->render();
#if($dbo->state == 'list') echo '<input type="button" id="printbarcode" class="btn btn-primary" value="Print Barcode" />';
?>

<!-- new cust modal start -->
<div class="modal fade modal-large" id="mdplatehistory">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
$div = {
	location  : $('#dbo_platelist_edit_cont_ps_code'),
	paging    : $('.paging_container'),
	history   : $('#mdplatehistory'),
	hisbody   : $('#mdplatehistory .modal-body'),
	histitle  : $('#mdplatehistory .modal-title')
};
$tbl = {
	plateedit : $('#dbo_platelist_edittable tfoot .form_button')
};
$btn = {
	barcode : $('<input type="button" id="printbarcode" class="btn btn-primary btn-xs" value="Print Barcode" />')
};
$atag = {
	history : $('.history')
};
/*$textarea = {
	plateinfo : $('#dbo_platelist_edit_sp_plateinfo')
};*/

$(document).ready(function(){
	//$textarea.plateinfo.attr('rows',4);
	$btnLoadSlot = $('<a href="#" id="loadslot">Load Slot</a>');
	// append hyperlink
	$div.location.append($btnLoadSlot);
	// append beside paging
	$div.paging.append($btn.barcode);

	$atag.history.click(function(){
		$spid = $(this).data('spid');
		$platename = $(this).data('platename');
		$('#iframewithdbo').remove();
  		$newiframe = $('<iframe id="iframewithdbo" src="showPlateHistory?spid='+$spid+'" style="zoom:0.60" width="99.6%" height="600px" frameborder="0"></iframe>');
  		$div.histitle.text('Plate History : '+$platename);
  		$div.hisbody.append($newiframe);
		$div.history.modal('show');
	});
});

$('#loadslot').click(function(){
	// if location is different with the selected, then get available slot
	var location = $('#dbo_platelist_edit_ps_code').val().substring(0,$('#dbo_platelist_edit_ps_code').val().length-5);
	if(location != $('#dbo_platelist_edit_sp_sfid option:selected').text()){
		// ajax request
		$.ajax({
	      url: "getslot",
	      type: "post",
	      async:false,
	      data: {shelfid : $('#dbo_platelist_edit_sp_sfid option:selected').val()},
	      success: function (data,textStatus,jqXHR) {	        
	        console.log(data);     
	        $('#dbo_platelist_edit_ps_code').val(data);
	      },
	      error: function (){
	        showAlert('Error in creating new customer');
	      }
	    });  
	}
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
$('#printbarcode').click(function(){
	var plidarr = [], count=0;

	$("input:checkbox:checked").each(function(){
		if($(this).attr('id') != 'dboform_platelist_list_cb_toggle'){
			plidarr.push($(this).val().split('=')[1]);
		}
		count++;
	});
/*	console.log('count = '+count);
	console.log(plidarr);*/

	if(count>0){
		if(window.location.href.indexOf("?") > 0) url = window.location.href.substring(0,window.location.href.indexOf("?"))+'/../printBarcode?plidarr='+plidarr;
		else url = window.location.href  +'/../printBarcode?plidarr='+plidarr;
		

		fullScreenPopUp(url);
	}else{
		alert('Please select at least one plate');
	}

});
</script>