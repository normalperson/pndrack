<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 16:21:16
         compiled from "3912af9018fa9620ee1b92366fba0a1783860fcd" */ ?>
<?php /*%%SmartyHeaderCode:90952b6a0fcaf6530-62414787%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3912af9018fa9620ee1b92366fba0a1783860fcd' => 
    array (
      0 => '3912af9018fa9620ee1b92366fba0a1783860fcd',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '90952b6a0fcaf6530-62414787',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'edit_cancel_html' => 0,
    'edit_submit_html' => 0,
    'footerHTML' => 0,
    'caption_usr_password' => 0,
    'value_usr_password' => 0,
    'caption_usr_password2' => 0,
    'value_usr_password2' => 0,
    'caption_usr_name' => 0,
    'value_usr_name' => 0,
    'caption_usr_email' => 0,
    'value_usr_email' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b6a0fcbc1761_29571800',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6a0fcbc1761_29571800')) {function content_52b6a0fcbc1761_29571800($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_profile_edittable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_password']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_password']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_password2']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_password2']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_email']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_email']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>