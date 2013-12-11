$span = {
  newcust: $('#newcust')
};
$div = {
  mdcust : $('#mdnewcust')
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
  mdmasterid   : $('#mdmasterid')

};
function clearForm(){
  // clear all the input
  $input.custname.val('');
  $input.mastercardid.val('');
  $input.platename.val('');
  // make the select the first option
  $select.shelf.val('default');
}
function getModalVal(){
  var formArr = {'companyname' : $input.companyname.val(),
                'companyregno' : $input.compregno.val(),
                'contactno'    : $input.contactno.val(),
                'masterid'     : $input.mdmasterid.val()
            };

  return formArr;            
}
$( document ).ready(function() {
  
  $span.newcust.tooltip('show');
  $span.newcust.click(function(){
    $div.mdcust.modal('show');
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
    console.log('save plate button click');
  });

});
