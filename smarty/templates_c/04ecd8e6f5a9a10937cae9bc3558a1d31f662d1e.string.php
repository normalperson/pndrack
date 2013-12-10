<?php /* Smarty version Smarty-3.1.13, created on 2013-11-11 11:29:20
         compiled from "04ecd8e6f5a9a10937cae9bc3558a1d31f662d1e" */ ?>
<?php /*%%SmartyHeaderCode:1342652804f10d59056-56212151%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '04ecd8e6f5a9a10937cae9bc3558a1d31f662d1e' => 
    array (
      0 => '04ecd8e6f5a9a10937cae9bc3558a1d31f662d1e',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1342652804f10d59056-56212151',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sfi_itemname' => 0,
    'value_sfi_itemname' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52804f10d8d445_22224747',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52804f10d8d445_22224747')) {function content_52804f10d8d445_22224747($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_shelf_input_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sfi_itemname']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sfi_itemname']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>