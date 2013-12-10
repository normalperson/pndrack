<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 09:54:41
         compiled from "e662b272ab0b78862bb00671456b4cae9e0c5d36" */ ?>
<?php /*%%SmartyHeaderCode:27094524e1fe1b41284-76694826%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e662b272ab0b78862bb00671456b4cae9e0c5d36' => 
    array (
      0 => 'e662b272ab0b78862bb00671456b4cae9e0c5d36',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '27094524e1fe1b41284-76694826',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_cus_name' => 0,
    'value_cus_name' => 0,
    'caption_hmc_receiptdt_byday' => 0,
    'value_hmc_receiptdt_byday' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e1fe232b425_73111891',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e1fe232b425_73111891')) {function content_524e1fe232b425_73111891($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_rpt_revenue_daily_searchtable">
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
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['search_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['search_submit_html']->value;?>
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hmc_receiptdt_byday']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hmc_receiptdt_byday']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>