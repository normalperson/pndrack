<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 16:20:35
         compiled from "931bab8060f45d9a0196655426b1b78dbac60aea" */ ?>
<?php /*%%SmartyHeaderCode:1278052b6a0d3278fa3-00577925%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '931bab8060f45d9a0196655426b1b78dbac60aea' => 
    array (
      0 => '931bab8060f45d9a0196655426b1b78dbac60aea',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1278052b6a0d3278fa3-00577925',
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
    'caption_usr_name' => 0,
    'value_usr_name' => 0,
    'caption_usr_email' => 0,
    'value_usr_email' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b6a0d32fdcc1_67014846',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6a0d32fdcc1_67014846')) {function content_52b6a0d32fdcc1_67014846($_smarty_tpl) {?><fieldset><legend>Edit Record</legend><table class="dbo_edit" id="dbo_profile_edittable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_usr_email']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_usr_email']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>