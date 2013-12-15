<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 16:56:32
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\checkinout.html" */ ?>
<?php /*%%SmartyHeaderCode:2592852ac033072e0c8-75221511%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6698c292e3e68905c00ca0bebff845ce3e098de4' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\checkinout.html',
      1 => 1386769154,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2592852ac033072e0c8-75221511',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ac03307374a7_99832578',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ac03307374a7_99832578')) {function content_52ac03307374a7_99832578($_smarty_tpl) {?><div id="content" class="content dbo_container dbo_theme_skyblue">
<div class="container-fluid">
  <div class="row-fluid">

  <div>&nbsp;</div>

    <div class="span2">
      <button class="btn btn-primary" id="checkbtn" data-state="checkin">Check In</button>
    </div>

    <div class="control-group span4">
      <label class="control-label" for="search">Manual Search</label>
      <div class="controls">
        <div class="input-prepend">
          <span class="add-on"><i class="icon-search" ></i></span>
          <input id="search"  name="search" type="text" placeholder="search">
        </div>
      </div>
    </div>

    <div class="control-group span4">
      <label class="control-label" for="barcode">Barcode</label>
      <div class="controls">
        <div class="input-prepend">
          <span class="add-on"><i class="icon-barcode" ></i></span>
          <input id="barcode"  name="barcode" type="text" placeholder="barcode">
        </div>
      </div>
    </div>

    <div id="checkindiv" class="span10">
      <fieldset>
      <legend>Check In Info</legend>
      <table width="100%" style="border:2px solid #006dcc">
        <tr>
          <td>Customer Name:</td>
          <td>Sony</td>
          <td>Last printed date:</td>
          <td>14-Nov-2013</td>
        </tr>
        <tr>
          <td>Board Barcode:</td>
          <td>1650-A2-00000005</td>
          <td>Board Created Date:</td>
          <td>13-Nov-2013</td>
        </tr>
        <tr>
          <td>Shelf Group:</td>
          <td>1650</td>
          <td>Printed Time:</td>
          <td>1</td>
        </tr>
        <tr>
          <td>Shelf:</td>
          <td>A2</td>
          <td>Printed Quantity:</td>
          <td>1000</td>
        </tr>
      </table>
      <br>

      <table width="100%">
        <tr>
          <td>Print Quantity:</td>
          <td><input type="text"> </td>
        </tr>
        <tr>
          <td>Remark:</td>
          <td><textarea rows="4" cols="100">
          </textarea>
          </td>
        </tr>
        <tfoot>
          <tr>
            <td colspan="2">
              <button class="btn btn-primary">Save</button>
              <button class="btn btn-primary">Clear</button>
            </td>
          </tr>
        </tfoot>
      </table>
      </fieldset>
    </div>

     <div id="checkoutdiv" class="span10 hide">
      <fieldset>
      <legend>Check Out Info</legend>      
      <table width="100%" style="border:2px solid #006dcc">
        <tr>
          <td>Customer Name:</td>
          <td>Sony</td>
          <td>Last printed date:</td>
          <td>14-Nov-2013</td>
        </tr>
        <tr>
          <td>Board Barcode:</td>
          <td>1650-A2-00000005</td>
          <td>Board Created Date:</td>
          <td>13-Nov-2013</td>
        </tr>
        <tr>
          <td>Shelf Group:</td>
          <td>1650</td>
          <td>Printed Time:</td>
          <td>1</td>
        </tr>
        <tr>
          <td>Shelf:</td>
          <td>A2</td>
          <td>Printed Quantity:</td>
          <td>1000</td>
        </tr>
      </table>
      </fieldset>
    </div>
</div><!-- end of row-fluid -->
</div><!-- end of container-fluid -->

</div><!-- end of container-fluid -->
<script type="text/javascript">
$btn = {
  'checkinout' : $('#checkbtn')
};
$div = {
  'checkindiv'   : $('#checkindiv'),
  'checkoutdiv'  : $('#checkoutdiv')
};

$btn.checkinout.click(function(){
  $this = $(this);
  $state = $this.data('state');

  if($state == 'checkin'){
    $div.checkoutdiv.hide();
    $div.checkindiv.show();
    $this.data('state','checkout');
    $this.html('Check Out');
  }else{
    $div.checkoutdiv.show();
    $div.checkindiv.hide();
    $this.data('state','checkin');
    $this.html('Check In');
  }
});
</script><?php }} ?>