<?php /* Smarty version Smarty-3.1.13, created on 2013-11-06 11:37:26
         compiled from "d333dec2203acc8aaed9984411037d15f0223a3b" */ ?>
<?php /*%%SmartyHeaderCode:266795279b976d1c3c8-99892761%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd333dec2203acc8aaed9984411037d15f0223a3b' => 
    array (
      0 => 'd333dec2203acc8aaed9984411037d15f0223a3b',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '266795279b976d1c3c8-99892761',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sg_groupname' => 0,
    'value_sg_groupname' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5279b976d4c102_94107781',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5279b976d4c102_94107781')) {function content_5279b976d4c102_94107781($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_shelfgroup_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sg_groupname']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sg_groupname']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>