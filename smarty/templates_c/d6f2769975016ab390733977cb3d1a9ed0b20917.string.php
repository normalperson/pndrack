<?php /* Smarty version Smarty-3.1.13, created on 2013-09-26 21:58:34
         compiled from "d6f2769975016ab390733977cb3d1a9ed0b20917" */ ?>
<?php /*%%SmartyHeaderCode:1585852443d8a9aa908-31388732%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd6f2769975016ab390733977cb3d1a9ed0b20917' => 
    array (
      0 => 'd6f2769975016ab390733977cb3d1a9ed0b20917',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1585852443d8a9aa908-31388732',
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
    'caption_gender' => 0,
    'value_gender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52443d8a9f8853_27672469',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52443d8a9f8853_27672469')) {function content_52443d8a9f8853_27672469($_smarty_tpl) {?><fieldset><legend>Search Room</legend><table class="dbo_search" id="dbo_setup_roomno_searchtable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_gender']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_gender']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>