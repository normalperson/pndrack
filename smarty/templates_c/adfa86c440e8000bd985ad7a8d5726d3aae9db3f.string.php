<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 09:59:29
         compiled from "adfa86c440e8000bd985ad7a8d5726d3aae9db3f" */ ?>
<?php /*%%SmartyHeaderCode:11878524e2101503ea6-37710253%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'adfa86c440e8000bd985ad7a8d5726d3aae9db3f' => 
    array (
      0 => 'adfa86c440e8000bd985ad7a8d5726d3aae9db3f',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '11878524e2101503ea6-37710253',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hrm_roomno' => 0,
    'value_hrm_roomno' => 0,
    'caption_hrm_hrtid' => 0,
    'value_hrm_hrtid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e21015453a1_97864788',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e21015453a1_97864788')) {function content_524e21015453a1_97864788($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_roomno_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrm_roomno']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrm_roomno']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrm_hrtid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrm_hrtid']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>