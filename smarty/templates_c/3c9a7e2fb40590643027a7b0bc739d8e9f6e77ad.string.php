<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 18:12:48
         compiled from "3c9a7e2fb40590643027a7b0bc739d8e9f6e77ad" */ ?>
<?php /*%%SmartyHeaderCode:1689152b6bb2060eaa3-75198170%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3c9a7e2fb40590643027a7b0bc739d8e9f6e77ad' => 
    array (
      0 => '3c9a7e2fb40590643027a7b0bc739d8e9f6e77ad',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1689152b6bb2060eaa3-75198170',
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
  'unifunc' => 'content_52b6bb2063a929_68705253',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b6bb2063a929_68705253')) {function content_52b6bb2063a929_68705253($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_shelfgroup_searchtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
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