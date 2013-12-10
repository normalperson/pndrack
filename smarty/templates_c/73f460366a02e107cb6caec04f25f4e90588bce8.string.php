<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 09:54:56
         compiled from "73f460366a02e107cb6caec04f25f4e90588bce8" */ ?>
<?php /*%%SmartyHeaderCode:9745524e1ff04290a8-31423727%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '73f460366a02e107cb6caec04f25f4e90588bce8' => 
    array (
      0 => '73f460366a02e107cb6caec04f25f4e90588bce8',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '9745524e1ff04290a8-31423727',
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
    'caption_hrt_defaultrate' => 0,
    'value_hrt_defaultrate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e1ff04a33e9_48742433',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e1ff04a33e9_48742433')) {function content_524e1ff04a33e9_48742433($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_roomtype_searchtable">
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
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_hrt_defaultrate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_hrt_defaultrate']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>