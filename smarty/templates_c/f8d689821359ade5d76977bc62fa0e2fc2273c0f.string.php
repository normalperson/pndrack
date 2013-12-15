<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 11:02:24
         compiled from "f8d689821359ade5d76977bc62fa0e2fc2273c0f" */ ?>
<?php /*%%SmartyHeaderCode:2028352ad1bc032d613-82187567%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f8d689821359ade5d76977bc62fa0e2fc2273c0f' => 
    array (
      0 => 'f8d689821359ade5d76977bc62fa0e2fc2273c0f',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2028352ad1bc032d613-82187567',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_pms_code' => 0,
    'value_pms_code' => 0,
    'caption_pms_desc' => 0,
    'value_pms_desc' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad1bc03565c6_52483475',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad1bc03565c6_52483475')) {function content_52ad1bc03565c6_52483475($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_permission_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pms_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pms_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_pms_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_pms_desc']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>