<?php /* Smarty version Smarty-3.1.13, created on 2013-11-15 21:42:46
         compiled from "4b3a637f2b14d622ee59cb76b2133c763cccdb3f" */ ?>
<?php /*%%SmartyHeaderCode:24704528624d6adb725-98658709%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4b3a637f2b14d622ee59cb76b2133c763cccdb3f' => 
    array (
      0 => '4b3a637f2b14d622ee59cb76b2133c763cccdb3f',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '24704528624d6adb725-98658709',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_d_name' => 0,
    'value_d_name' => 0,
    'caption_d_gender' => 0,
    'value_d_gender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_528624d6b04232_15635164',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_528624d6b04232_15635164')) {function content_528624d6b04232_15635164($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_daniel_newtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot>
		<tr>
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['new_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['new_submit_html']->value;?>
</td>
		</tr>
		<?php if ($_smarty_tpl->tpl_vars['footerHTML']->value){?>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['footerHTML']->value;?>
</td>
		</tr>
		<?php }?>
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_d_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_d_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_d_gender']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_d_gender']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>