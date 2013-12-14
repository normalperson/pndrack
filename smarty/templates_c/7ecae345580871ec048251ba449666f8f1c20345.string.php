<?php /* Smarty version Smarty-3.1.13, created on 2013-12-14 15:07:30
         compiled from "7ecae345580871ec048251ba449666f8f1c20345" */ ?>
<?php /*%%SmartyHeaderCode:2283852ac03b258f2f1-21686469%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7ecae345580871ec048251ba449666f8f1c20345' => 
    array (
      0 => '7ecae345580871ec048251ba449666f8f1c20345',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2283852ac03b258f2f1-21686469',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_cus_name' => 0,
    'value_cus_name' => 0,
    'caption_cus_regno' => 0,
    'value_cus_regno' => 0,
    'caption_cus_masterid' => 0,
    'value_cus_masterid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ac03b25bdee0_67524278',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ac03b25bdee0_67524278')) {function content_52ac03b25bdee0_67524278($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_customer_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_name']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_regno']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_regno']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_cus_masterid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_cus_masterid']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>