<?php /* Smarty version Smarty-3.1.13, created on 2013-12-14 15:06:22
         compiled from "a8415fe93cb4070a395fec66e944c3a112c59761" */ ?>
<?php /*%%SmartyHeaderCode:553852ac036e7b3691-82167468%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a8415fe93cb4070a395fec66e944c3a112c59761' => 
    array (
      0 => 'a8415fe93cb4070a395fec66e944c3a112c59761',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '553852ac036e7b3691-82167468',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sf_sgid' => 0,
    'value_sf_sgid' => 0,
    'caption_sf_code' => 0,
    'value_sf_code' => 0,
    'caption_sf_desc' => 0,
    'value_sf_desc' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ac036e7da605_24679489',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ac036e7da605_24679489')) {function content_52ac036e7da605_24679489($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_shelf_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_sgid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_sgid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sf_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sf_desc']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>