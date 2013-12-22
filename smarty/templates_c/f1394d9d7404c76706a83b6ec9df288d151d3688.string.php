<?php /* Smarty version Smarty-3.1.13, created on 2013-12-22 15:23:00
         compiled from "f1394d9d7404c76706a83b6ec9df288d151d3688" */ ?>
<?php /*%%SmartyHeaderCode:1379752b69354cd3134-46614700%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f1394d9d7404c76706a83b6ec9df288d151d3688' => 
    array (
      0 => 'f1394d9d7404c76706a83b6ec9df288d151d3688',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '1379752b69354cd3134-46614700',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_org_parentid' => 0,
    'value_org_parentid' => 0,
    'caption_org_name' => 0,
    'value_org_name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b69354d05db3_29854648',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b69354d05db3_29854648')) {function content_52b69354d05db3_29854648($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_org_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_parentid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_parentid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_org_name']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_org_name']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>