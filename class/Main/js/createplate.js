$span = {
  newcust: $('#newcust'),
  npcustname : $('#npcustname'),
  npcreatdby : $('#npcreatdby'),
  nplocation : $('#nplocation'),
  print      : $('#printlocation')
};
$div = {
  mdcust : $('#mdnewcust'),
  mdplatelocation : $('#mdplatelocation'),
  npbarcode : $('#npbarcode'),
  pcontent  : $('#mdplatelocation .modal-body')
};
$btn = {
  savenewcust    : $('#savenewcust'),
  savenewplate   : $('#savenewplate'),
  clearplateform : $('#clearplateform')
};
$select = {
  shelf : $('#shelf')
};
$input = {
  companyname  : $('#companyname'),
  compregno    : $('#compregno'),
  custname     : $('#custname'),
  contactno    : $('#contactno'),
  mastercardid : $('#mastercardid'),
  platename    : $('#platename'),
  platemodel   : $('#platemodel'),
  mdmasterid   : $('#mdmasterid')

};
function clearForm(){
  // clear all the input
  $input.custname.val('');
  $input.mastercardid.val('');
  $input.platename.val('');
  $input.platemodel.val('');
  // make the select the first option
  $select.shelf.val('default');
}
function clearNCmodal(){
  $input.companyname.val('');
  $input.compregno.val('');
  $input.mdmasterid.val('');
  $input.contactno.val('');
}
function getModalVal(){
  var formArr = {
    'companyname' : $input.companyname.val(),
    'companyregno' : $input.compregno.val(),
    'contactno'    : $input.contactno.val(),
    'masterid'     : $input.mdmasterid.val()
  };

  return formArr;            
}
function getPlateInfo(){
  var formArr = {
    'custid'    : $('#custname').data('cusid'),
    'shelfid'   : $('#shelf').val(),
    'platename' : $('#platename').val(),
    'platemodel': $('#platemodel').val()
  };

  console.log(formArr.custid);
  console.log(parseFloat(formArr.custid));

  return formArr;
}
 function Popup(data) 
{
    var mywindow = window.open('', 'my div', 'height=400,width=600');
    mywindow.document.write('<html><head><title>my div</title>');
    /*optional stylesheet*/ //mywindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
    mywindow.document.write('</head><body >');
    mywindow.document.write(data);
    mywindow.document.write('</body></html>');

    mywindow.print();
    mywindow.close();

    return true;
}
$( document ).ready(function() {
  
  $span.newcust.tooltip('hide');
  $span.newcust.click(function(){
    clearNCmodal();
    $div.mdcust.modal('show');
  });
  // print button click
  $span.print.click(function(){
    Popup($div.pcontent.html());
  });
  $btn.savenewcust.click(function(){
    // get the value and save into database
    $.ajax({
      url: "newcustomer",
      type: "post",
      async:false,
      data: getModalVal(),
      success: function (data,textStatus,jqXHR) {
        // get the name and cus_id and assign back to input box        
        $input.custname.val($input.companyname.val());
        $input.mastercardid.val($input.mdmasterid.val());
        $input.custname.data('cusid',data);

        // close the modal
        $div.mdcust.modal('hide');
      },
      error: function (){
        showAlert('Error in creating new customer');
      }
    });  
  });
  // make auto complete and search by customer name

  // clean form
  $btn.clearplateform.click(function(){
    clearForm();
  });

  $btn.savenewplate.click(function(){
    // save into database
     $.ajax({
      url: "newplate",
      type: "post",
      async:false,
      dataType:'json',
      data: getPlateInfo(),
      success: function (data,textStatus,jqXHR) {
        // show modal on the location
        $span.nplocation.text(data.location);
        $span.npcreatdby.text(data.createdby);
        $span.npcustname.text($input.custname.val());
        //$div.npbarcode.text(data.location);
        console.log(DrawCode39Barcode(data.location,1));
        $div.npbarcode.html(DrawCode39Barcode(data.location,1));
        //get_object("inputdata").innerHTML=DrawCode39Barcode(get_object("inputdata").innerHTML,1);
        $div.mdplatelocation.modal('show');

        clearForm();
      },
      error: function (){
        showAlert('Error in creating new customer');
      }
    }); 
  });

  // search by company name or busines registration number
  $input.custname.autocomplete({
    minLength: 2,
    source: function( request, response ) {
        $.ajax({
            url: "getCustInfo",
            data: {term: request.term},
            dataType: "json",
            type: 'post',
            success: function( data ) {
                response( $.map( data, function( item ) {
                    return {
                        label     : item.cus_name,
                        cus_id    : item.cus_id,
                        msid      : item.cus_masterid

                    }
                }));
            }
        });
    },
    select: function( event, ui ) {
      $input.custname.val(ui.item.label);
      $input.custname.data('cusid',ui.item.cus_id);
      $input.mastercardid.val(ui.item.msid);

      //console.log($input.custname.data('cusid'));
    }
  }); 

});
