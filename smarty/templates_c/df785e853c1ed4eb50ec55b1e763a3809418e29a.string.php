<?php /* Smarty version Smarty-3.1.13, created on 2013-11-15 21:36:02
         compiled from "df785e853c1ed4eb50ec55b1e763a3809418e29a" */ ?>
<?php /*%%SmartyHeaderCode:1205852862342b9ab08-16598282%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'df785e853c1ed4eb50ec55b1e763a3809418e29a' => 
    array (
      0 => 'df785e853c1ed4eb50ec55b1e763a3809418e29a',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1205852862342b9ab08-16598282',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sf_sgid' => 0,
    'value_sf_sgid' => 0,
    'caption_sf_code' => 0,
    'value_sf_code' => 0,
    'caption_sf_desc' => 0,
    'value_sf_desc' => 0,
    'caption_sf_seq' => 0,
    'value_sf_seq' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52862342bcd1a5_73792603',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52862342bcd1a5_73792603')) {function content_52862342bcd1a5_73792603($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_shelf_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_sgid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_sgid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_desc']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_seq']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_seq']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>