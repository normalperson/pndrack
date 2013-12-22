<?php /* Smarty version Smarty-3.1.13, created on 2013-12-23 01:04:38
         compiled from "64a5d9397fe18c6acfbe5462dc77cf5f427ddd57" */ ?>
<?php /*%%SmartyHeaderCode:2259652b71ba6f09b63-80020314%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '64a5d9397fe18c6acfbe5462dc77cf5f427ddd57' => 
    array (
      0 => '64a5d9397fe18c6acfbe5462dc77cf5f427ddd57',
      1 => 0,
      2 => 'string',
    ),
  ),
  'nocache_hash' => '2259652b71ba6f09b63-80020314',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'headerHTML' => 0,
    'new_cancel_html' => 0,
    'new_submit_html' => 0,
    'footerHTML' => 0,
    'caption_op_id' => 0,
    'value_op_id' => 0,
    'caption_op_orgid' => 0,
    'value_op_orgid' => 0,
    'caption_op_packageid' => 0,
    'value_op_packageid' => 0,
    'caption_op_created' => 0,
    'value_op_created' => 0,
    'caption_op_createby' => 0,
    'value_op_createby' => 0,
    'caption_op_status' => 0,
    'value_op_status' => 0,
    'caption_op_startdate' => 0,
    'value_op_startdate' => 0,
    'caption_op_enddate' => 0,
    'value_op_enddate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52b71ba70a6226_18142358',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52b71ba70a6226_18142358')) {function content_52b71ba70a6226_18142358($_smarty_tpl) {?><fieldset><legend>New Record</legend><table class="dbo_new" id="dbo_orgpackage_newtable">
	<?php if ($_smarty_tpl->tpl_vars['headerHTML']->value){?>
	<thead>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['headerHTML']->value;?>
</td>
		</tr>
	</thead>
	<?php }?>
	<tfoot><tr>
			<td colspan="2" class="form_button"><?php echo $_smarty_tpl->tpl_vars['new_cancel_html']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['new_submit_html']->value;?>
</td>
		</tr>
		<?php if ($_smarty_tpl->tpl_vars['footerHTML']->value){?>
		<tr>
			<td colspan="2"><?php echo $_smarty_tpl->tpl_vars['footerHTML']->value;?>
</td>
		</tr>
		<?php }?>
	</tfoot><tbody><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_id']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_id']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_orgid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_orgid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_packageid']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_packageid']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_created']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_created']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_createby']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_createby']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_status']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_status']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_startdate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_startdate']->value;?>
</td></tr><tr><th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption_op_enddate']->value;?>
</th><td class="value"><?php echo $_smarty_tpl->tpl_vars['value_op_enddate']->value;?>
</td></tr></tbody></table></fieldset><?php }} ?>