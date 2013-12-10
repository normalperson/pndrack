<?php /* Smarty version Smarty-3.1.13, created on 2013-09-29 10:22:50
         compiled from "f34633632221e94be33ef160c0ae66dc587a6888" */ ?>
<?php /*%%SmartyHeaderCode:2554452478efa4d4318-18969347%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f34633632221e94be33ef160c0ae66dc587a6888' => 
    array (
      0 => 'f34633632221e94be33ef160c0ae66dc587a6888',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2554452478efa4d4318-18969347',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hmc_receiptdt_byday' => 0,
    'value_hmc_receiptdt_byday' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52478efa4f5e94_72487862',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52478efa4f5e94_72487862')) {function content_52478efa4f5e94_72487862($_smarty_tpl) {?><fieldset><legend>Search Charge Type Revenue</legend><table class="dbo_search" id="dbo_rpt_revenue_bychargetype_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hmc_receiptdt_byday']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hmc_receiptdt_byday']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>