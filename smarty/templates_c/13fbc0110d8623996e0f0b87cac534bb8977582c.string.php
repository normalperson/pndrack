<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:03:17
         compiled from "13fbc0110d8623996e0f0b87cac534bb8977582c" */ ?>
<?php /*%%SmartyHeaderCode:26613524e21e54dc046-79521565%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '13fbc0110d8623996e0f0b87cac534bb8977582c' => 
    array (
      0 => '13fbc0110d8623996e0f0b87cac534bb8977582c',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '26613524e21e54dc046-79521565',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hds_day' => 0,
    'value_hds_day' => 0,
    'caption_hds_enable' => 0,
    'value_hds_enable' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e21e551c9d0_86225344',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e21e551c9d0_86225344')) {function content_524e21e551c9d0_86225344($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_weekday_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hds_day']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hds_day']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hds_enable']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hds_enable']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>