<?php /* Smarty version Smarty-3.1.13, created on 2013-11-14 12:17:21
         compiled from "7974c4df93e91178e03e9a38a8d503f478812cc0" */ ?>
<?php /*%%SmartyHeaderCode:830852844ed104e016-70732466%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7974c4df93e91178e03e9a38a8d503f478812cc0' => 
    array (
      0 => '7974c4df93e91178e03e9a38a8d503f478812cc0',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '830852844ed104e016-70732466',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'search_cancel_html' => 0,
    'search_submit_html' => 0,
    'footerHTML' => 0,
    'caption_sb_barcode' => 0,
    'value_sb_barcode' => 0,
    'caption_sb_createddate' => 0,
    'value_sb_createddate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52844ed1088394_64642914',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52844ed1088394_64642914')) {function content_52844ed1088394_64642914($_smarty_tpl) {?><fieldset><legend>Search Record</legend><table class="dbo_search" id="dbo_setup_board_searchtable">
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
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sb_barcode']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sb_barcode']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_sb_createddate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_sb_createddate']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>