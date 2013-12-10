<?php
require(dirname(__FILE__).DIRECTORY_SEPARATOR.'setup_board.conf.php');

# customization
function setup_board_customize(&$dbo){
}

function generatebarcode ($shelfgroup, $shelf){
	global $DB;

	$groupcode = $DB->GetOne("select sg_code from smshelfgroup where sg_id = :0",array($shelfgroup));
	$shelfcode = $DB->GetOne("select sf_code from smshelfsetting where sf_id = :0",array($shelf));
	$seq = $DB->GetOne("select lpad(cast(nextval('boardbarcode') as text), 8, '0')");

	#$barcode = $groupcode.'-'.$shelfcode.'-'.$seq;
	$barcode = $shelfcode.'-'.$seq;

	return $barcode;

}

$dbo->newModifier = 'setup_board_custom_new';
function setup_board_custom_new($table, $cols){
	global $DB;
	$ret = array();
	// get the 
	//vd($cols); die();
	// get the customer id manually
	$cusid = $DB->GetOne("select cus_id from smcustomer where cus_name = :0",array($cols['sb_cusid']));
	$cols['sb_cusid'] = $cusid;
	$cols['sb_barcode'] = generatebarcode($cols['sb_sgid'],$cols['sb_slfid']);
	$ok = $DB->doInsert($table, $cols);
	if(!$ok){
		$ret[] = $DB->lastError;
	}
	return $ret;
}


# final rendering
$dbo->render();
?>
<script type="text/javascript">
// create new hidden element
$('<input>').attr({ type: 'hidden', id: 'cusid', name: 'cusid'}).appendTo('#dbo_setup_board_newform');

var $input = {
	'newcust' : $('#dbo_setup_board_new_sb_cusid'),
	'cusid'   : $('#cusid')
};

$(function(){
	$input.newcust.autocomplete({
		minLength: 1,
		source: function( request, response ) {			
		    $.ajax({
		        url: "getCustInfo",
		        data: {term: request.term},
		        dataType: "json",
		        type: 'post',
		        success: function (data,textStatus,jqXHR) {
		        	console.log(data);
		  		    response( $.map( data, function( item ) {
		                return {
		                	label   : item.cus_name,
		                	cusid   : item.cus_id,
		                	cusname : item.cus_name
		                }
		            }));
		        },
		        error: function( jqXHR, textStatus,errorThrown ){
		        	console.log('inside Error');
		        }
		    });
		},
		select: function( event, ui ) {
			$input.cusid.val(ui.item.cusid);
		}
	});	
});

</script>