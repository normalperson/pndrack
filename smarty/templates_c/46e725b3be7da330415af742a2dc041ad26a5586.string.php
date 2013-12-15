<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 17:08:38
         compiled from "46e725b3be7da330415af742a2dc041ad26a5586" */ ?>
<?php /*%%SmartyHeaderCode:516552ad7196e25e34-39384749%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '46e725b3be7da330415af742a2dc041ad26a5586' => 
    array (
      0 => '46e725b3be7da330415af742a2dc041ad26a5586',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '516552ad7196e25e34-39384749',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_usr_userid' => 0,
    'value_usr_userid' => 0,
    'caption_usr_password' => 0,
    'value_usr_password' => 0,
    'caption_usr_name' => 0,
    'value_usr_name' => 0,
    'caption_usr_email' => 0,
    'value_usr_email' => 0,
    'caption_usr_status' => 0,
    'value_usr_status' => 0,
    'caption_userRole' => 0,
    'value_userRole' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad7196e5c946_86498402',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad7196e5c946_86498402')) {function content_52ad7196e5c946_86498402($_smarty_tpl) {?><fieldset><legend>Edit User</legend><table class="dbo_edit" id="dbo_user_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_userid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_userid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_password']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_password']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_email']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_email']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_status']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_userRole']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_userRole']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>