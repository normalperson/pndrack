<?php /* Smarty version Smarty-3.1.13, created on 2013-11-13 10:32:28
         compiled from "d2ca41291164a094588b27eda8260262b1e9ee2b" */ ?>
<?php /*%%SmartyHeaderCode:138185282e4bc9874e5-47329875%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd2ca41291164a094588b27eda8260262b1e9ee2b' => 
    array (
      0 => 'd2ca41291164a094588b27eda8260262b1e9ee2b',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '138185282e4bc9874e5-47329875',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sg_code' => 0,
    'value_sg_code' => 0,
    'caption_sg_groupname' => 0,
    'value_sg_groupname' => 0,
    'caption_sg_seq' => 0,
    'value_sg_seq' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5282e4bc9afab7_32196175',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5282e4bc9afab7_32196175')) {function content_5282e4bc9afab7_32196175($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_setup_shelfgroup_newtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_groupname']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_groupname']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_seq']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_seq']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>