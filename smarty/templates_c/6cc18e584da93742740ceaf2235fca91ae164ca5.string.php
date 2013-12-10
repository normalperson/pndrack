<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:04:00
         compiled from "6cc18e584da93742740ceaf2235fca91ae164ca5" */ ?>
<?php /*%%SmartyHeaderCode:29639524e2210b0ace7-15739313%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6cc18e584da93742740ceaf2235fca91ae164ca5' => 
    array (
      0 => '6cc18e584da93742740ceaf2235fca91ae164ca5',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '29639524e2210b0ace7-15739313',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hh_holidaystart' => 0,
    'value_hh_holidaystart' => 0,
    'caption_hh_holidayend' => 0,
    'value_hh_holidayend' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e2210b5b237_57401982',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e2210b5b237_57401982')) {function content_524e2210b5b237_57401982($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_publicholiday_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hh_holidaystart']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hh_holidaystart']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hh_holidayend']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hh_holidayend']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>