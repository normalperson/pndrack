<?php /* Smarty version Smarty-3.1.13, created on 2013-12-11 22:34:38
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\createplate.html" */ ?>
<?php /*%%SmartyHeaderCode:3162152a71038621239-04427987%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a5a4de6df3aae25bb337074bbf184693a1893ac0' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\createplate.html',
      1 => 1386769154,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3162152a71038621239-04427987',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52a71038656b08_73754533',
  'variables' => 
  array (
    'shelf' => 0,
    'sf' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52a71038656b08_73754533')) {function content_52a71038656b08_73754533($_smarty_tpl) {?><div class="container">
  <div class="row">
    <form class="form-horizontal" role="form" id="frmnewplate">
      <div class="form-group">
        <div class="col-lg-12">        
          <label for="custname">Customer Name</label>
          <div id="searchdiv" class="input-group" style="padding-bottom:5px;width:100%">  
            <span class="input-group-addon glyphicon glyphicon-new-window" id="newcust" 
            data-toggle="tooltip" data-placement="bottom" data-original-title="Click here to create new customer"></span>
            <input type="text" class="form-control" id="custname" name="custname" data-cusid="" placeholder="Enter customer name" data-required="true">     
          </div>
          <span class="help-block">Note......</span>       
        </div>
      </div>      
      <div class="form-group">
        <div class="col-lg-6">
          <label for="mastercardid">Master Card ID</label>
          <input type="text" class="form-control" id="mastercardid" name="mastercardid" placeholder="Enter Master Card ID" disabled>
        </div><!-- /col-lg-6 -->
        <div class="col-lg-6">
          <label for="shelf">Shelf</label>
          <select  class="form-control" id="shelf" name="shelf">
            <option value="default">--Select Shelf--</option>
            <?php  $_smarty_tpl->tpl_vars["sf"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["sf"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['shelf']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["sf"]->key => $_smarty_tpl->tpl_vars["sf"]->value){
$_smarty_tpl->tpl_vars["sf"]->_loop = true;
?>
              <option value="<?php echo $_smarty_tpl->tpl_vars['sf']->value['sf_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['sf']->value['sf_desc'];?>
</option>
            <?php } ?>
          </select>
        </div><!-- /col-lg-6 -->
      </div>  
      <div class="form-group">
        <div class="col-lg-12">        
          <label for="platename">Plate Name(Optional)</label>
          <input type="text" class="form-control" id="platename" name="platename" placeholder="Enter plate name">     
        </div>    
      </div>      
      <div class="col col-lg-12" style="margin-top:50px">
        <button type="button" class="btn btn-lg btn-primary" id="clearplateform">Clear</button>
        <button type="submit" class="btn btn-lg  btn-primary" id="savenewplate">Save</button>
      </div>
    </form>  
  </div><!-- /row -->
</div><!-- /container -->
<!-- new cust modal start -->
<div class="modal fade" id="mdnewcust">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">New Customer</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form" id="frmnewcust">
        <div class="form-group">
          <div class="col-lg-10">      
            <label for="companyname">Company Name</label>
            <input type="text" class="form-control" id="companyname" name="companyname" placeholder="Enter company name">       
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-10">      
            <label for="compregno">Company Registration No</label>
            <input type="text" class="form-control" id="compregno" name="compregno" placeholder="Enter company registration no">       
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-10">      
            <label for="mdmasterid">Master ID</label>
            <input type="text" class="form-control" id="mdmasterid" name="mdmasterid" placeholder="Enter master id">       
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-10">      
            <label for="contactno">Contact No</label>
            <input type="text" class="form-control" id="contactno" name="contactno" placeholder="Enter company contact no">       
          </div>
        </div>
        </form>  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="savenewcust">Save & Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- end of new cust modal -->
<?php }} ?>