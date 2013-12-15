<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 11:02:34
         compiled from "121823db6be01fd760e95bb9b743af4650c564a5" */ ?>
<?php /*%%SmartyHeaderCode:1219152ad1bca405ec6-35936055%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '121823db6be01fd760e95bb9b743af4650c564a5' => 
    array (
      0 => '121823db6be01fd760e95bb9b743af4650c564a5',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1219152ad1bca405ec6-35936055',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_rol_code' => 0,
    'value_rol_code' => 0,
    'caption_rol_desc' => 0,
    'value_rol_desc' => 0,
    'caption_rol_permission' => 0,
    'value_rol_permission' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad1bca435237_47226918',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad1bca435237_47226918')) {function content_52ad1bca435237_47226918($_smarty_tpl) {?><fieldset><legend>New Role</legend><table class="dbo_new" id="dbo_role_newtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_desc']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_permission']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_permission']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>