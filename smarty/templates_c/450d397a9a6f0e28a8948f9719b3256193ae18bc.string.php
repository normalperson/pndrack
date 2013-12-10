<?php /* Smarty version Smarty-3.1.13, created on 2013-09-26 21:58:38
         compiled from "450d397a9a6f0e28a8948f9719b3256193ae18bc" */ ?>
<?php /*%%SmartyHeaderCode:161552443d8e2ef722-79705783%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '450d397a9a6f0e28a8948f9719b3256193ae18bc' => 
    array (
      0 => '450d397a9a6f0e28a8948f9719b3256193ae18bc',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '161552443d8e2ef722-79705783',
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
    'caption_gender' => 0,
    'value_gender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52443d8e33d127_21668349',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52443d8e33d127_21668349')) {function content_52443d8e33d127_21668349($_smarty_tpl) {?><fieldset><legend>New Room </legend><table class="dbo_new" id="dbo_setup_roomno_newtable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_gender']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_gender']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>