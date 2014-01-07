$input = {
  msearch   : $('#msearch'),
  barcode   : $('#barcode'),
  printqty  : $('#printqty'),
  remark    : $('#remark')
};
$span = {
  custname          : $('#custname'),
  lastprintdate     : $('#lastprintdate'),
  platename         : $('#platename'),
  platecreateddate  : $('#platecreateddate'),
  pibarcode         : $('#pibarcode'),
  printednotime     : $('#printedtime'),
  shelf             : $('#shelf'),
  printedqty        : $('#printedqty')
};
$div = {
  plateinfo : $('#plateinfo')
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
  $span.platename.text('');
  $span.platecreateddate.text('');
  $span.pibarcode.text('');
  $span.printednotime.text('');
  $span.shelf.text('');
  $span.printedqty.text('');
  $div.plateinfo.slideUp( "slow" );
}
function populatePlateInfo(plateinfo, platesumm){
  $span.custname.text(plateinfo.cus_name);
  $span.lastprintdate.text(platesumm.lastprinteddate);
  $span.platename.text(plateinfo.sp_platename);
  $span.platecreateddate.text(plateinfo.createddate);
  $span.pibarcode.text(plateinfo.ps_code);
  $span.printednotime.text(platesumm.totalprint);
  $span.shelf.text(plateinfo.sf_desc);
  $span.printedqty.text(platesumm.totalqty);
}
function getFormInfo(){
  var retArr = {
     'plateid'  : $input.msearch.data('plateid'),
     'printqty' : $input.printqty.val(),
     'remark'   : $input.remark.val()
  }

  return retArr;
}
$( document ).ready(function() {
  $btn.btnclear.click(function(){
    clearPlateInfo();
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
      $input.msearch.data('plateid', ui.item.plateid);
      // get plate info...
      $.ajax({
            url: "selectPlateInfo",
            data: {plateid :ui.item.plateid },
            dataType: "json",
            type: 'post',
            success: function( data ) {
              // populate the plate info table
              populatePlateInfo(data.plateinfo[0],data.tranSumm[0]);     
              // show the div
              console.log($div.plateinfo);
              $div.plateinfo.slideDown( "slow");
              console.log('after show');
            }
        });
    }
  }); 
});  