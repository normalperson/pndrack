<?php /* Smarty version Smarty-3.1.13, created on 2013-11-13 09:41:54
         compiled from "1e2e074fc49312acadac994ada93fa589bd04989" */ ?>
<?php /*%%SmartyHeaderCode:2245282d8e2ad3f90-06682084%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1e2e074fc49312acadac994ada93fa589bd04989' => 
    array (
      0 => '1e2e074fc49312acadac994ada93fa589bd04989',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2245282d8e2ad3f90-06682084',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5282d8e2aee6d5_25496142',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5282d8e2aee6d5_25496142')) {function content_5282d8e2aee6d5_25496142($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_customer_newtable">
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
	</tfoot><tbody><tr><th class="caption">&nbsp;</th><td class="value">&nbsp;</td></tr></tbody></table></fieldset><?php }} ?>