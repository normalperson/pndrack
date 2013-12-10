<?php /* Smarty version Smarty-3.1.13, created on 2013-11-01 11:30:45
         compiled from "737b155d4955f85f92bee8fc5a86720dc2a1fdff" */ ?>
<?php /*%%SmartyHeaderCode:15831527320658a2f55-49117240%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '737b155d4955f85f92bee8fc5a86720dc2a1fdff' => 
    array (
      0 => '737b155d4955f85f92bee8fc5a86720dc2a1fdff',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '15831527320658a2f55-49117240',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sf_name' => 0,
    'value_sf_name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_527320659023d3_35515442',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_527320659023d3_35515442')) {function content_527320659023d3_35515442($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_shelf_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_name']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>