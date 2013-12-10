<?php /* Smarty version Smarty-3.1.13, created on 2013-11-13 10:50:08
         compiled from "C:\Zend\Apache2\htdocs\pflexdemo\smarty\templates\shelf.html" */ ?>
<?php /*%%SmartyHeaderCode:273185276f5cd4987e9-45690371%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '09cc789791ab98a1ee0a6a1ba250a60c1ec3f6c5' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pflexdemo\\smarty\\templates\\shelf.html',
      1 => 1384311005,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '273185276f5cd4987e9-45690371',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5276f5cd704f74_89425856',
  'variables' => 
  array (
    'shelfsize' => 0,
    'row' => 0,
    'col' => 0,
    'shelf' => 0,
    'shelfgroup' => 0,
    'sg' => 0,
    'sl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5276f5cd704f74_89425856')) {function content_5276f5cd704f74_89425856($_smarty_tpl) {?><div id="content" class="content dbo_container dbo_theme_skyblue">

  <div id="shelfcontainer" class="content-withleftsidebar">
    <div>&nbsp;&nbsp;&nbsp;</div>


    <table>
        <tr>
          <td class="dbo_container_search">
            <fieldset>
              <legend><?php echo tl('Search',true,'');?>
 </legend>
              <table class="dbo_search" cellpadding="5px">
              <tbody>
              <tr>
                <th class="caption"><?php echo tl('Barcode',true,'');?>
 </th>
                <td class="value"><input id="barcode" name="barcode" class="text" value="" /> </td>                
                <th class="caption"><?php echo tl('Created Date',true,'');?>
</th>
                <td class="value"> <input id="createddate" name="createddate" class="text" value="" /> </td>
              </tr>
              </tbody>
              <tfoot>
                <tr>
                    <td colspan="4" class="form_button">
                      <button class="btn btn-primary"><?php echo tl('Search Button',false,'');?>
</button>
                      <button class="btn btn-primary"><?php echo tl('Clear Button',false,'');?>
</button>
                    </td>
                </tr>
              <tfoot>
            </table>  
            </fieldset>    
          </td>
        </tr>
      </table>
      
<!-- 
    <span class="ui-icon ui-icon-arrowthick-1-n"></span>
    <span class="ui-icon ui-icon-carat-1-ne"></span>
    <span class="ui-icon ui-icon-carat-1-e"></span>
    <div class="dbo-icon dbo-icon-search"></div>
    <div class="dbo-icon dbo-icon-edit"></div>
    <div class="dbo-icon dbo-icon-new"></div>
    <div class="dbo-icon dbo-icon-delete"></div>
    <div class="dbo-icon dbo-icon-prev"></div>
    <div class="dbo-icon dbo-icon-next"></div>
    <div class="dbo-icon dbo-icon-setting"></div> -->
      <div>&nbsp;&nbsp;&nbsp;</div>

      <?php if (count($_smarty_tpl->tpl_vars['shelfsize']->value)>0){?>
      <table id="tblshelf" class="tblshelf">
         <caption ><?php echo $_smarty_tpl->tpl_vars['shelfsize']->value['sf_code'];?>
</caption>
        <?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->value = 0;
  if ($_smarty_tpl->tpl_vars['row']->value<=$_smarty_tpl->tpl_vars['shelfsize']->value['sf_row']){ for ($_foo=true;$_smarty_tpl->tpl_vars['row']->value<=$_smarty_tpl->tpl_vars['shelfsize']->value['sf_row']; $_smarty_tpl->tpl_vars['row']->value++){
?>          
            <?php if ($_smarty_tpl->tpl_vars['row']->value==0){?>
            <tr>
                <?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->value = 0;
  if ($_smarty_tpl->tpl_vars['col']->value<=$_smarty_tpl->tpl_vars['shelfsize']->value['sf_col']){ for ($_foo=true;$_smarty_tpl->tpl_vars['col']->value<=$_smarty_tpl->tpl_vars['shelfsize']->value['sf_col']; $_smarty_tpl->tpl_vars['col']->value++){
?>
                <?php if ($_smarty_tpl->tpl_vars['col']->value==0){?>
                <td></td>            
                <?php }else{ ?>
                <td class="title"><?php echo tl('Col',true,'');?>
 <?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>            
                <?php }?>
                <?php }} ?>
            </tr>
            <?php }else{ ?>
            <tr>            
                <?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->value = 0;
  if ($_smarty_tpl->tpl_vars['col']->value<=$_smarty_tpl->tpl_vars['shelfsize']->value['sf_col']){ for ($_foo=true;$_smarty_tpl->tpl_vars['col']->value<=$_smarty_tpl->tpl_vars['shelfsize']->value['sf_col']; $_smarty_tpl->tpl_vars['col']->value++){
?>
                <?php if ($_smarty_tpl->tpl_vars['col']->value==0){?>
                  <td class="title"><?php echo tl('Row',true,'');?>
  <?php echo $_smarty_tpl->tpl_vars['row']->value;?>
</td>            
                <?php }else{ ?>
                  <td class="shelfdata"><div class="column"><?php echo $_smarty_tpl->tpl_vars['shelf']->value['ID'][$_smarty_tpl->tpl_vars['row']->value][$_smarty_tpl->tpl_vars['col']->value];?>
</div></td>    
                <?php }?>
                <?php }} ?>
            </tr>
          <?php }?>
          
        <?php }} ?>
      </table>
      <?php }?>
     
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
                  <div id="shelflink" class="accordion-inner-small">
                    <ul class="simplelink">
                      <?php  $_smarty_tpl->tpl_vars["sl"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["sl"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sg']->value['shelflist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["sl"]->key => $_smarty_tpl->tpl_vars["sl"]->value){
$_smarty_tpl->tpl_vars["sl"]->_loop = true;
?>
                        <li><a href="?shelfid=<?php echo $_smarty_tpl->tpl_vars['sl']->value['sf_id'];?>
" data-shelfid="<?php echo $_smarty_tpl->tpl_vars['sl']->value['sf_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['sl']->value['sf_code'];?>
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