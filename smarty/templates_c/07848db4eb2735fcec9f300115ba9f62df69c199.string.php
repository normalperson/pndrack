<?php /* Smarty version Smarty-3.1.13, created on 2013-09-26 13:25:28
         compiled from "07848db4eb2735fcec9f300115ba9f62df69c199" */ ?>
<?php /*%%SmartyHeaderCode:89255243c54841e253-32226982%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '07848db4eb2735fcec9f300115ba9f62df69c199' => 
    array (
      0 => '07848db4eb2735fcec9f300115ba9f62df69c199',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '89255243c54841e253-32226982',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hrm_roomno' => 0,
    'value_hrm_roomno' => 0,
    'caption_hrm_hrtid' => 0,
    'value_hrm_hrtid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5243c548460106_54085981',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5243c548460106_54085981')) {function content_5243c548460106_54085981($_smarty_tpl) {?><fieldset><legend>New Room </legend><table class="dbo_new" id="dbo_setup_roomno_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrm_roomno']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrm_roomno']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrm_hrtid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrm_hrtid']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>