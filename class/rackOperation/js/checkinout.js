$input = {
  msearch   : $('#msearch'),
  barcode   : $('#barcode'),
  printqty  : $('#printqty'),
  remark    : $('#remark')
};
$span = {
  custname          : $('#custname'),
  lastprintdate     : $('#lastprintdate'),
  platecreateddate  : $('#platecreateddate'),
  pibarcode         : $('#pibarcode'),
  printednotime     : $('#printedtime'),
  shelf             : $('#shelf'),
  printedqty        : $('#printedqty'),
  advsearch         : $('#advsearch')
};
$p = {
  plateinfo : $('#plateinfodet')
};
$atag = {
  platename : $('#platename')
};
$div = {
  plateinfo   : $('#plateinfo'),
  mdplateinfo : $('#mdplateinfo')
};
$btn = {
  btnclear : $('#btnclear'),
  btnsave  : $('#btnsave')
}
/*$btn = {
  'checkinout' : $('#checkbtn')
};
$div = {
  'checkindiv'   : $('#checkindiv'),
  'checkoutdiv'  : $('#checkoutdiv')
};*/
function clearPlateInfo(){
  $input.barcode.val('');
  $input.msearch.val('');
  $span.custname.text('');
  $span.lastprintdate.text('');
  $atag.platename.text('');
  $span.platecreateddate.text('');
  $span.pibarcode.text('');
  $span.printednotime.text('');
  $span.shelf.text('');
  $span.printedqty.text('');
  $p.plateinfo.text('');
  $div.plateinfo.slideUp( "slow" );
}
function populatePlateInfo(plateinfo, platesumm){
  $input.barcode.val(plateinfo.ps_code);
  $input.msearch.data('plateid', plateinfo.sp_id);
  $input.msearch.val(plateinfo.sp_platename);
  $span.custname.text(plateinfo.cus_name);
  $span.lastprintdate.text(platesumm.lastprinteddate);
  $atag.platename.text(plateinfo.sp_platename);
  $span.platecreateddate.text(plateinfo.createddate);
  $span.pibarcode.text(plateinfo.ps_code);
  $span.printednotime.text(platesumm.totalprint);
  $span.shelf.text(plateinfo.sf_desc);
  $span.printedqty.text(platesumm.totalqty);
  $p.plateinfo.text(plateinfo.sp_plateinfo);
}
function getFormInfo(){
  var retArr = {
     'plateid'  : $input.msearch.data('plateid'),
     'printqty' : $input.printqty.val(),
     'remark'   : $input.remark.val()
  }

  return retArr;
}
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
function selectplateinfo(plateid){
  $.ajax({
      url: "selectPlateInfo",
      data: {plateid :plateid },
      dataType: "json",
      type: 'post',
      success: function( data ) {
        // populate the plate info table
        populatePlateInfo(data.plateinfo[0],data.tranSumm[0]);     
        // show the div
        //console.log($div.plateinfo);
        $div.plateinfo.slideDown( "slow");
        //console.log('after show');
      }
  });
}
$( document ).ready(function() {
  $atag.platename.click(function(event ){
    event.stopPropagation();
    $div.mdplateinfo.modal('show');
  });
  $btn.btnclear.click(function(){
    clearPlateInfo();
  });
  $span.advsearch.click(function(){
     if(window.location.href.indexOf("?") > 0) url = window.location.href.substring(0,window.location.href.indexOf("?"))+'/../../Main/searchplate';
     else url = window.location.href  +'/../../Main/searchplate';
     document.location = url;
  });
  $btn.btnsave.click(function(){
    console.log('save button');
     $.ajax({
          url: "addTransaction",
          data: getFormInfo(),
          type: 'post',
          success: function( data ) {
            console.log(data);
          }
      });
      clearPlateInfo();
  });
  if(getParameterByName('psid') != ''){
    var plateid = getParameterByName('psid');
    selectplateinfo(plateid);
  }
  $input.barcode.keypress(function(e){
    if(e.which == 13) {
       $.ajax({
          url: "barcodescan",
          data: {barcode :$(this).val() },
          type: 'post',
          success: function( data ) {
            // return plateid
            selectplateinfo(data);
          }
      });
    }
  });
  // search by company name or busines registration number
  $input.msearch.autocomplete({
    minLength: 2,
    source: function( request, response ) {
        $.ajax({
            url: "getPlateInfo",
            data: {term: request.term},
            dataType: "json",
            type: 'post',
            success: function( data ) {
              console.log(data);
                response( $.map( data, function( item ) {
                    return {
                        label       : item.sp_platename,
                        plateid     : item.sp_id,
                    }
                }));
            }
        });
    },
    select: function( event, ui ) {
      console.log('selected id = '+ui.item.plateid)
      
      // get plate info...
      selectplateinfo(ui.item.plateid);
      
    }
  }); 
});  