<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 11:02:48
         compiled from "4aae22e6d2e2c92a72018b15d4345465974cd859" */ ?>
<?php /*%%SmartyHeaderCode:1732852ad1bd86ee057-82665963%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4aae22e6d2e2c92a72018b15d4345465974cd859' => 
    array (
      0 => '4aae22e6d2e2c92a72018b15d4345465974cd859',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1732852ad1bd86ee057-82665963',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_rol_code' => 0,
    'value_rol_code' => 0,
    'caption_rol_desc' => 0,
    'value_rol_desc' => 0,
    'caption_rol_status' => 0,
    'value_rol_status' => 0,
    'caption_rol_permission' => 0,
    'value_rol_permission' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad1bd871b986_63274734',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad1bd871b986_63274734')) {function content_52ad1bd871b986_63274734($_smarty_tpl) {?><fieldset><legend>Edit Role</legend><table class="dbo_edit" id="dbo_role_edittable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['edit_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['edit_submit_html']->value;?>
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_status']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_rol_permission']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_rol_permission']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>