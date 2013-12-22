<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 18:03:06
         compiled from "7ed6eba7b13185690276ea620b3c3de5907ba309" */ ?>
<?php /*%%SmartyHeaderCode:2459152b6b8daca5e24-98511727%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7ed6eba7b13185690276ea620b3c3de5907ba309' => 
    array (
      0 => '7ed6eba7b13185690276ea620b3c3de5907ba309',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2459152b6b8daca5e24-98511727',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_org_code' => 0,
    'value_org_code' => 0,
    'caption_org_name' => 0,
    'value_org_name' => 0,
    'caption_org_parentid' => 0,
    'value_org_parentid' => 0,
    'caption_org_primaryid' => 0,
    'value_org_primaryid' => 0,
    'caption_org_address' => 0,
    'value_org_address' => 0,
    'caption_org_contactno' => 0,
    'value_org_contactno' => 0,
    'caption_org_status' => 0,
    'value_org_status' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b6b8dad9fe53_03949167',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6b8dad9fe53_03949167')) {function content_52b6b8dad9fe53_03949167($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_org_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_parentid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_parentid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_primaryid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_primaryid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_address']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_address']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_contactno']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_contactno']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_status']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>