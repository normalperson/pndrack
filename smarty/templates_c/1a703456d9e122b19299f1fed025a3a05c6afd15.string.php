<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 18:53:28
         compiled from "1a703456d9e122b19299f1fed025a3a05c6afd15" */ ?>
<?php /*%%SmartyHeaderCode:6653524e9e28720441-11678105%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1a703456d9e122b19299f1fed025a3a05c6afd15' => 
    array (
      0 => '1a703456d9e122b19299f1fed025a3a05c6afd15',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '6653524e9e28720441-11678105',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_hrt_code' => 0,
    'value_hrt_code' => 0,
    'caption_hrt_desc' => 0,
    'value_hrt_desc' => 0,
    'caption_gender' => 0,
    'value_gender' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e9e289ae112_39402633',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e9e289ae112_39402633')) {function content_524e9e289ae112_39402633($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_roomtype_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_code']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_code']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_desc']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_desc']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_gender']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_gender']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>