<?php /* Smarty version Smarty-3.1.13, created on 2013-11-15 21:32:27
         compiled from "52447c7ccd42238da027611398df257dc3bb2fe2" */ ?>
<?php /*%%SmartyHeaderCode:84505286226bb4f2e6-12912374%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52447c7ccd42238da027611398df257dc3bb2fe2' => 
    array (
      0 => '52447c7ccd42238da027611398df257dc3bb2fe2',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '84505286226bb4f2e6-12912374',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
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
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5286226bb87161_62042246',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5286226bb87161_62042246')) {function content_5286226bb87161_62042246($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_samplemenu_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_parentid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_parentid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_title']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_title']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_status']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_mn_order']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_mn_order']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>