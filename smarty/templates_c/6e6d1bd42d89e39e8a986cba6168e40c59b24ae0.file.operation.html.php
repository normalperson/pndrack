<?php /* Smarty version Smarty-3.1.13, created on 2013-11-02 20:21:08
         compiled from "C:\Zend\Apache2\htdocs\pflexdemo\smarty\templates\operation.html" */ ?>
<?php /*%%SmartyHeaderCode:32245527200894ecb95-10494325%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6e6d1bd42d89e39e8a986cba6168e40c59b24ae0' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pflexdemo\\smarty\\templates\\operation.html',
      1 => 1383394851,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '32245527200894ecb95-10494325',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5272008951bfe0_40870477',
  'variables' => 
  array (
    'i' => 0,
    'j' => 0,
    'shelfgroup' => 0,
    'sg' => 0,
    'sl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5272008951bfe0_40870477')) {function content_5272008951bfe0_40870477($_smarty_tpl) {?><div class="content dbo_container dbo_theme_blacktie">

  <div id="shelfcontainer" class="content-withleftsidebar">
    <div>&nbsp;&nbsp;&nbsp;</div>


    <table>
        <tr>
          <td class="dbo_container_search">
            <fieldset>
              <legend>Search </legend>
              <table class="dbo_search" cellpadding="5px">
              <tbody>
              <tr>
                <th class="caption">Barcode</th>
                <td class="value"><input id="barcode" name="barcode" class="text" value="" /> </td>                
                <th class="caption">Created Date</th>
                <td class="value"> <input id="createddate" name="createddate" class="text" value="" /> </td>
              </tr>
              </tbody>
              <tfoot>
                <tr>
                    <td colspan="4" class="form_button">
                      <button class="btn btn-primary">Search</button>
                      <button class="btn btn-primary">Clear</button>
                    </td>
                </tr>
              <tfoot>
            </table>  
            </fieldset>    
          </td>
        </tr>
      </table>
      
      <div>&nbsp;&nbsp;&nbsp;</div>


      <table class="tblshelf">
         <caption >Thor Shelf</caption>
        <?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 1;
  if ($_smarty_tpl->tpl_vars['i']->value<=12){ for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value<=12; $_smarty_tpl->tpl_vars['i']->value++){
?>
        <tr>
          <?php  $_smarty_tpl->tpl_vars['j'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['j']->value = 1;
  if ($_smarty_tpl->tpl_vars['j']->value<=12){ for ($_foo=true;$_smarty_tpl->tpl_vars['j']->value<=12; $_smarty_tpl->tpl_vars['j']->value++){
?>
            <td style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['i']->value*$_smarty_tpl->tpl_vars['j']->value;?>
</td>
          <?php }} ?>
        </tr>
        <?php }} ?>
      </table>
     
  </div>
  <div id="sidebar" class="sidebar">
      <!--Sidebar content-->
      <div id="sidebar-content">
      <div class="accordion" id="accordianParent">
          <?php  $_smarty_tpl->tpl_vars["sg"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["sg"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['shelfgroup']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["sg"]->key => $_smarty_tpl->tpl_vars["sg"]->value){
$_smarty_tpl->tpl_vars["sg"]->_loop = true;
?>
          <div class="accordion-group">              
              <div class="accordion-heading">
                  <a class="accordion-toggle-small" data-toggle="collapse" data-parent="#accordianParent" href="#<?php echo $_smarty_tpl->tpl_vars['sg']->value['sg_id'];?>
">
                      <?php echo $_smarty_tpl->tpl_vars['sg']->value['sg_groupname'];?>

                      <i class="icon-chevron-down pull-right"></i>
                  </a>                  
              </div>
              <div id="<?php echo $_smarty_tpl->tpl_vars['sg']->value['sg_id'];?>
" class="accordion-body collapse">
                  <div class="accordion-inner-small">
                    <ul class="simplelink">
                      <?php  $_smarty_tpl->tpl_vars["sl"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["sl"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sg']->value['shelflist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["sl"]->key => $_smarty_tpl->tpl_vars["sl"]->value){
$_smarty_tpl->tpl_vars["sl"]->_loop = true;
?>
                        <li><a href="#"><?php echo $_smarty_tpl->tpl_vars['sl']->value['sf_name'];?>
</a></li>
                      <?php } ?>
                    </ul>
                  </div>                
              </div>
          </div>
          <?php } ?>              
      </div>
  </div>
    <a id="toggleSidebar" href="#" class="toggles"><i class="icon-chevron-left"></i></a>
</div><!-- end of container-fluid -->
<?php }} ?>