<?php /* Smarty version Smarty-3.1.13, created on 2013-09-29 10:22:22
         compiled from "6c4c0ebe0fe937abaef081619b0b03694776b9dc" */ ?>
<?php /*%%SmartyHeaderCode:228552478ede3d0ad8-28542655%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6c4c0ebe0fe937abaef081619b0b03694776b9dc' => 
    array (
      0 => '6c4c0ebe0fe937abaef081619b0b03694776b9dc',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '228552478ede3d0ad8-28542655',
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
    'caption_startdt' => 0,
    'value_startdt' => 0,
    'caption_enddt' => 0,
    'value_enddt' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52478ede3fa7c0_78231608',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52478ede3fa7c0_78231608')) {function content_52478ede3fa7c0_78231608($_smarty_tpl) {?><fieldset><legend>Search Monthly Revenue</legend><table class="dbo_search" id="dbo_rpt_revenue_monthly_searchtable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_startdt']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_startdt']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_enddt']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_enddt']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>