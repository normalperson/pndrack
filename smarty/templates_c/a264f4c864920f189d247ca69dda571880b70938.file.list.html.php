<?php /* Smarty version Smarty-3.1.13, created on 2013-10-04 10:03:17
         compiled from "C:\Zend\Apache2\fcore\inc\DBO\theme\darksky\list.html" */ ?>
<?php /*%%SmartyHeaderCode:12646524e21e552e3f0-83768244%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a264f4c864920f189d247ca69dda571880b70938' => 
    array (
      0 => 'C:\\Zend\\Apache2\\fcore\\inc\\DBO\\theme\\darksky\\list.html',
      1 => 1380358492,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12646524e21e552e3f0-83768244',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'dbo' => 0,
    'pagingHTML' => 0,
    'search_link_html' => 0,
    'new_link_html' => 0,
    'multiple_delete_html' => 0,
    'export_html' => 0,
    'checkbox' => 0,
    'col' => 0,
    'caption' => 0,
    'bodys' => 0,
    'body' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_524e21e5612328_88526637',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_524e21e5612328_88526637')) {function content_524e21e5612328_88526637($_smarty_tpl) {?><fieldset>
<?php if (strlen($_smarty_tpl->tpl_vars['dbo']->value->titleList)){?><legend><?php echo $_smarty_tpl->tpl_vars['dbo']->value->getStateCaption('list');?>
</legend><?php }?>
<table class="dbo_list" id="dbo_<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
_listtable">
	<thead>
		<tr>
			<td colspan="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->columnCount;?>
">
				<?php if ($_smarty_tpl->tpl_vars['pagingHTML']->value){?>
				<div class="paging_container"><?php echo $_smarty_tpl->tpl_vars['pagingHTML']->value;?>
</div>
				<?php }?>
				<div class="tool">
					<?php echo $_smarty_tpl->tpl_vars['search_link_html']->value;?>

					<?php echo $_smarty_tpl->tpl_vars['new_link_html']->value;?>

					<?php echo $_smarty_tpl->tpl_vars['multiple_delete_html']->value;?>

					<?php echo $_smarty_tpl->tpl_vars['export_html']->value;?>

				</div>
			</td>
		</tr>
		<tr class="title">
			<th class="recordnum"><?php echo $_smarty_tpl->tpl_vars['checkbox']->value->toggle_html;?>
#</th>
			<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->colList; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
			<th class="caption"><?php echo $_smarty_tpl->tpl_vars['caption']->value[$_smarty_tpl->tpl_vars['col']->value];?>
</th>
			<?php } ?>
			<?php if ($_smarty_tpl->tpl_vars['dbo']->value->key&&($_smarty_tpl->tpl_vars['dbo']->value->canEdit||$_smarty_tpl->tpl_vars['dbo']->value->canDelete||($_smarty_tpl->tpl_vars['dbo']->value->colDetail&&$_smarty_tpl->tpl_vars['dbo']->value->canDetail))){?>
			<th>&nbsp;</th>
			<?php }?>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->columnCount;?>
">
				<?php if ($_smarty_tpl->tpl_vars['pagingHTML']->value){?>
				<div class="paging_container"><?php echo $_smarty_tpl->tpl_vars['pagingHTML']->value;?>
</div>
				<?php }?>
			</td>
		</tr>
	</tfoot>
	<tbody>
		<?php  $_smarty_tpl->tpl_vars['body'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['body']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['bodys']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['body']->key => $_smarty_tpl->tpl_vars['body']->value){
$_smarty_tpl->tpl_vars['body']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['body']->key;
?>
		<tr>
			<td class="recordnum"><?php echo $_smarty_tpl->tpl_vars['body']->value['record_number_html'];?>
</td>
			<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->colList; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
			<td class="value"><?php echo $_smarty_tpl->tpl_vars['body']->value[$_smarty_tpl->tpl_vars['col']->value];?>
</td>
			<?php } ?>
			<?php if ($_smarty_tpl->tpl_vars['dbo']->value->key&&($_smarty_tpl->tpl_vars['dbo']->value->canEdit||$_smarty_tpl->tpl_vars['dbo']->value->canDelete||($_smarty_tpl->tpl_vars['dbo']->value->colDetail&&$_smarty_tpl->tpl_vars['dbo']->value->canDetail))){?>
			<td class="tool" onclick="event.cancelBubble=true;">
				<?php if ($_smarty_tpl->tpl_vars['dbo']->value->colDetail&&$_smarty_tpl->tpl_vars['dbo']->value->canDetail){?>
					<?php echo $_smarty_tpl->tpl_vars['body']->value['detail_link_html'];?>

				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canEdit){?>
					<?php echo $_smarty_tpl->tpl_vars['body']->value['edit_link_html'];?>

				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canDelete){?>
					<?php echo $_smarty_tpl->tpl_vars['body']->value['delete_link_html'];?>

				<?php }?>
			</td>
			<?php }?>
		</tr>
		<?php } ?>
	</tbody>
</table>
</fieldset><?php }} ?>