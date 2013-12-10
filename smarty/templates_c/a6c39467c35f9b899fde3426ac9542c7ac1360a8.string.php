<?php /* Smarty version Smarty-3.1.13, created on 2013-11-13 20:39:35
         compiled from "a6c39467c35f9b899fde3426ac9542c7ac1360a8" */ ?>
<?php /*%%SmartyHeaderCode:31715283730763eb01-61967837%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a6c39467c35f9b899fde3426ac9542c7ac1360a8' => 
    array (
      0 => 'a6c39467c35f9b899fde3426ac9542c7ac1360a8',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '31715283730763eb01-61967837',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sb_cusid' => 0,
    'value_sb_cusid' => 0,
    'caption_sb_sgid' => 0,
    'value_sb_sgid' => 0,
    'caption_sb_slfid' => 0,
    'value_sb_slfid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5283730768fe46_38387809',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5283730768fe46_38387809')) {function content_5283730768fe46_38387809($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_board_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sb_cusid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sb_cusid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sb_sgid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sb_sgid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sb_slfid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sb_slfid']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>