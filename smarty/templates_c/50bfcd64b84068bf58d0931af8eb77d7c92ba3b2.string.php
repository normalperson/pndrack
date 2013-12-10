<?php /* Smarty version Smarty-3.1.13, created on 2013-11-15 21:31:44
         compiled from "50bfcd64b84068bf58d0931af8eb77d7c92ba3b2" */ ?>
<?php /*%%SmartyHeaderCode:4730528622402e62b0-76424681%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '50bfcd64b84068bf58d0931af8eb77d7c92ba3b2' => 
    array (
      0 => '50bfcd64b84068bf58d0931af8eb77d7c92ba3b2',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '4730528622402e62b0-76424681',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_mn_id' => 0,
    'value_mn_id' => 0,
    'caption_mn_code' => 0,
    'value_mn_code' => 0,
    'caption_mn_parentid' => 0,
    'value_mn_parentid' => 0,
    'caption_mn_title' => 0,
    'value_mn_title' => 0,
    'caption_mn_status' => 0,
    'value_mn_status' => 0,
    'caption_mn_order' => 0,
    'value_mn_order' => 0,
    'caption_mn_group' => 0,
    'value_mn_group' => 0,
    'caption_mn_url' => 0,
    'value_mn_url' => 0,
    'caption_mn_webflag' => 0,
    'value_mn_webflag' => 0,
    'caption_mn_class' => 0,
    'value_mn_class' => 0,
    'caption_mn_classlist' => 0,
    'value_mn_classlist' => 0,
    'caption_mn_func' => 0,
    'value_mn_func' => 0,
    'caption_mn_funclist' => 0,
    'value_mn_funclist' => 0,
    'caption_mn_param' => 0,
    'value_mn_param' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52862240352d41_42856821',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52862240352d41_42856821')) {function content_52862240352d41_42856821($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_samplemenu_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_id']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_id']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_parentid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_parentid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_title']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_title']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_status']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_order']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_order']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_group']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_group']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_url']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_url']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_webflag']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_webflag']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_class']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_class']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_classlist']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_classlist']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_func']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_func']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_funclist']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_funclist']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_param']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_param']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>