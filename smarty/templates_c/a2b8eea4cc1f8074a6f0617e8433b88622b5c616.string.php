<?php /* Smarty version Smarty-3.1.13, created on 2013-11-01 11:15:30
         compiled from "a2b8eea4cc1f8074a6f0617e8433b88622b5c616" */ ?>
<?php /*%%SmartyHeaderCode:2971152731cd2036265-12161759%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a2b8eea4cc1f8074a6f0617e8433b88622b5c616' => 
    array (
      0 => 'a2b8eea4cc1f8074a6f0617e8433b88622b5c616',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2971152731cd2036265-12161759',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sg_groupname' => 0,
    'value_sg_groupname' => 0,
    'caption_sg_seq' => 0,
    'value_sg_seq' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52731cd20a0876_36243542',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52731cd20a0876_36243542')) {function content_52731cd20a0876_36243542($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_shelfgroup_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_groupname']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_groupname']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_seq']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_seq']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>