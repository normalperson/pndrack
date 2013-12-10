<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 09:58:31
         compiled from "1ee8dfd223ce2079207100044efe763f040e34bb" */ ?>
<?php /*%%SmartyHeaderCode:16312524e20c70e43c6-94480339%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1ee8dfd223ce2079207100044efe763f040e34bb' => 
    array (
      0 => '1ee8dfd223ce2079207100044efe763f040e34bb',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '16312524e20c70e43c6-94480339',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hdh_hrtid' => 0,
    'value_hdh_hrtid' => 0,
    'caption_hdh_daytype' => 0,
    'value_hdh_daytype' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e20c7133984_34481156',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e20c7133984_34481156')) {function content_524e20c7133984_34481156($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_durationchargebyhour_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_hrtid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_hrtid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hdh_daytype']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hdh_daytype']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>