<?php /* Smarty version Smarty-3.1.13, created on 2013-12-14 21:15:52
         compiled from "C:\Zend\Apache2\htdocs\pndrack\smarty\templates\gensetting.html" */ ?>
<?php /*%%SmartyHeaderCode:1788352ac5a0832b145-99086507%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0185820efa1a308c4c11fccabd0c0a3697fef5c1' => 
    array (
      0 => 'C:\\Zend\\Apache2\\htdocs\\pndrack\\smarty\\templates\\gensetting.html',
      1 => 1386739810,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1788352ac5a0832b145-99086507',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'themeoption' => 0,
    'theme' => 0,
    'themeselected' => 0,
    'langoption' => 0,
    'lang' => 0,
    'langselected' => 0,
    'sessiontime' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ac5a0840a740_67724334',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ac5a0840a740_67724334')) {function content_52ac5a0840a740_67724334($_smarty_tpl) {?><div id="container" >
<div>&nbsp;&nbsp;&nbsp;</div>	
<div id="gensettingdiv">
	<h3><?php echo tl('General Setting',false);?>
</h3>
	<div>					
		<table style='text-align:left' >
			<tr>
				<td><label for='theme'><?php echo tl('Theme',true);?>
</label></td>
				<td>
					<select class="selectrequired" name="theme" id="theme">
					<?php  $_smarty_tpl->tpl_vars['theme'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['theme']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['themeoption']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['theme']->key => $_smarty_tpl->tpl_vars['theme']->value){
$_smarty_tpl->tpl_vars['theme']->_loop = true;
?>							
						<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['theme']->value['lu_code'];?>
<?php $_tmp1=ob_get_clean();?><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['themeselected']->value;?>
<?php $_tmp2=ob_get_clean();?><?php if ($_tmp1==$_tmp2){?>					
							<option value="<?php echo $_smarty_tpl->tpl_vars['theme']->value['lu_code'];?>
" selected="selected"><?php echo $_smarty_tpl->tpl_vars['theme']->value['lu_title'];?>
</option>
							<?php }else{ ?>
							<option value="<?php echo $_smarty_tpl->tpl_vars['theme']->value['lu_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['theme']->value['lu_title'];?>
</option>
						<?php }?>
					<?php } ?>					
					</select>	
				</td>
			</tr>
			<tr>
				<td><label for='language'><?php echo tl('Language',true);?>
</label></td>
				<td>
					<select class="selectrequired" name="language" id="language">
					<?php  $_smarty_tpl->tpl_vars['lang'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['lang']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['langoption']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['lang']->key => $_smarty_tpl->tpl_vars['lang']->value){
$_smarty_tpl->tpl_vars['lang']->_loop = true;
?>							
						<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['lang']->value['lang_code'];?>
<?php $_tmp3=ob_get_clean();?><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['langselected']->value;?>
<?php $_tmp4=ob_get_clean();?><?php if ($_tmp3==$_tmp4){?>					
							<option value="<?php echo $_smarty_tpl->tpl_vars['lang']->value['lang_code'];?>
" selected="selected"><?php echo $_smarty_tpl->tpl_vars['lang']->value['lang_name'];?>
</option>
							<?php }else{ ?>
							<option value="<?php echo $_smarty_tpl->tpl_vars['lang']->value['lang_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['lang']->value['lang_name'];?>
</option>
						<?php }?>
					<?php } ?>					
					</select>	
				</td>
			</tr>
		</table>
	</div>	
	<h3><?php echo tl('Time Setting',false);?>
</h3>
	<div>					
		<table style='text-align:left' border="0">
			<tr>
				<td><label for='sessiontime'><?php echo tl('Session Timeout',true);?>
 </label></td>
				<td><input type="text" id="sessiontime" name="sessiontime" style="border: 0; color: #f6931f; font-weight: bold; width:50px" readonly/>(<?php echo tl('min',true);?>
)</td>				
			</tr>
			<tr>
				<td colspan="2"><div id="slider-sessiontime" ></div></td>
			</tr>

			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>			
		</table>
	</div>	
</div>
<div id="buttonlist" style="float:left;margin-top:50px;">
<input type="button" class="btn btn-primary" id="resetdefault" value="<?php echo tl('Reset to default',false);?>
" />	
<input type="button" class="btn btn-primary" id="save" value="<?php echo tl('Save',false);?>
" />	
</div>
</form>	
</div><!-- End of Main container -->
<script type="text/javascript">
var def = {
	'sessiontime' :<?php echo $_smarty_tpl->tpl_vars['sessiontime']->value;?>

};
</script>
<?php }} ?>