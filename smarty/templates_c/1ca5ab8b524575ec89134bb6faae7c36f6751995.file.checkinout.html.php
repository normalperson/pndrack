<?php /* Smarty version Smarty-3.1.13, created on 2013-11-14 10:30:17
         compiled from "C:\Zend\Apache2\htdocs\pflexdemo\smarty\templates\checkinout.html" */ ?>
<?php /*%%SmartyHeaderCode:11000528422ea524a28-54137739%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1ca5ab8b524575ec89134bb6faae7c36f6751995' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pflexdemo\\smarty\\templates\\checkinout.html',
      1 => 1384396213,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11000528422ea524a28-54137739',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_528422ea530d30_67621427',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_528422ea530d30_67621427')) {function content_528422ea530d30_67621427($_smarty_tpl) {?><div id="content" class="content dbo_container dbo_theme_skyblue">
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