<?php /* Smarty version Smarty-3.1.13, created on 2013-11-21 22:44:40
         compiled from "C:\Zend\Apache2\fcore\inc\DBO\tpl\configForm.html" */ ?>
<?php /*%%SmartyHeaderCode:432552425c0ec8a6d9-79670114%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e21ad44b12cfcca65c5d2061eb1123ddfefff875' => 
    array (
      0 => 'C:\\Zend\\Apache2\\fcore\\inc\\DBO\\tpl\\configForm.html',
      1 => 1385002211,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '432552425c0ec8a6d9-79670114',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52425c0f4a9942_50528764',
  'variables' => 
  array (
    'dbo' => 0,
    'DS' => 0,
    'row' => 0,
    'no' => 0,
    'layout' => 0,
    'theme' => 0,
    'HTML' => 0,
    'col' => 0,
    'tmpstate' => 0,
    'method' => 0,
    'state' => 0,
    'arr' => 0,
    'sort' => 0,
    'inputtype' => 0,
    'code' => 0,
    'text' => 0,
    'smode' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52425c0f4a9942_50528764')) {function content_52425c0f4a9942_50528764($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'C:\\Zend\\Apache2\\fcore\\inc\\Smarty\\libs\\plugins\\modifier.escape.php';
?><style type="text/css">
div.dbo_container{
	color:black;
}
div.dbo_container a:link, div.dbo_container a:visited{
	text-decoration:none;
}
div.dbo_container a:hover{
}
div.dbo_container #multipart_container > table{
	border-width:0px;
	border-spacing:0px;
}
div.dbo_container #multipart_container > table > tbody{
	background-color:transparent;
}
div.dbo_container #multipart_container input.button[type="submit"], #multipart_container input.button[type="button"]{
	background-color:white;
	border:1px solid grey;
	cursor:pointer;
	border-radius:5px;
}
div.dbo_container #multipart_container input.button:hover{
}
div.dbo_container #multipart_container2 > div{
	padding:5px;
	border:1px solid grey;
	display:none;	
	border-top-right-radius:5px;
	border-bottom-left-radius:5px;
	border-bottom-right-radius:5px;
	background-color:white;
}
div.dbo_container #multipart_container2 > div input[type="text"], #multipart_container2 > div textarea, #multipart_container2 > div select{
	border:1px solid grey;
	border-radius:3px;
	padding:2px 3px;
}
div.dbo_container #multipart_container2 > div textarea{
	width:600px;
	height:80px;
}
div.dbo_container #multipart_container2 > div textarea.option{
	width:150px;
	height:50px;
}
div.dbo_container td.configtab_container a{
	display:inline-block;
	padding:2px 10px;
	margin-right:1px;
	border:1px solid grey;
	border-top-left-radius:10px;
	border-top-right-radius:10px;
	position:relative;
	top:3px;
	background-color:#47afec;
	color:white;
	font-weight:bold;
}
div.dbo_container td.configtab_container a.active{
	background-color:#ffffff;
	color:#47afec;
	border-bottom:1px solid transparent;
}
div.dbo_container div.menu2{
	border:1px solid black;
	display:inline-block;
	padding:4px;
	background-color:grey;
}
div.dbo_container div.menu2 > a{
	cursor:pointer;
	color:blue;
	border:1px solid black;
	padding:0px 5px;
	background-color:white;
}
div.dbo_configform_container label:hover{
	background-color:#dddddd;
}
div.checkbox_container_scroll{
	height:100px;
	overflow:auto;
	border:1px solid grey;
}
</style>
<script type="text/javascript">
</script>
<div class="dbo_container" id="dbo_container">
<div class="dbo_configform_container">
	<form name="dbo_configform" id="dbo_configform" method="post">
	<input type="hidden" name="configform" id="configform" value="1"/>
	<input type="hidden" name="id" id="id" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
"/>
	<div id="multipart_container">
		<table>
			<thead>
				<tr>
					<td class="configtab_container">
						<div class="menu1">
							<a id="switch_dbosetup" href="javascript:showConfigTab('dbosetup')">DBO Setup</a>
							<a id="switch_dbosetting" href="javascript:showConfigTab('dbosetting')">DBO Setting</a>
							<a id="switch_dbocolumn" href="javascript:showConfigTab('dbocolumn')">Columns</a>
							<a id="switch_dbocaption" href="javascript:showConfigTab('dbocaption')">Caption</a>
							<a id="switch_dbooption" href="javascript:showConfigTab('dbooption')">Option</a>
							<a id="switch_dbosort" href="javascript:showConfigTab('dbosort')">Sorting</a>
							<a id="switch_dbomodifier" href="javascript:showConfigTab('dbomodifier')">Modifier</a>
							<a id="switch_dbocolsetting" href="javascript:showConfigTab('dbocolsetting')">Column Setting</a>
							<a id="switch_dbosearch" href="javascript:showConfigTab('dbosearch')">Search</a>
							<a id="switch_dbolayout" href="javascript:showConfigTab('dbolayout')">Layout</a>
						</div>
					</td>
					<td align="right"><input class="button" type="button" value="Close" onclick="document.location='?dboid=<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
&dboconfig=0'"> <input class="button" type="submit" name="submit" id="submit" value="Submit"/></td>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td class="configtab_container"><span style="font-style:italic;color:black;background-color:white;padding:1px 5px;"><?php echo $_smarty_tpl->tpl_vars['dbo']->value->saveDir;?>
<?php echo $_smarty_tpl->tpl_vars['DS']->value;?>
<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
</span> <span onclick="dboConfirmSelfDestruct()" style="cursor:pointer;color:red;background-color:white;padding:1px 5px;">Delete!</span></td>
					<td align="right"><input class="button" type="button" value="Close" onclick="document.location='?dboid=<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
&dboconfig=0'"> <input class="button" type="submit" name="submit" id="submit" value="Submit"/></td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td id="multipart_container2" colspan="2">
<div id="div_dbosetup">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td width="200">DBO Name</td>
				<td><input type="text" name="disabledid" id="disabledid" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->id, "html", "UTF-8");?>
" disabled="disabled"/></td>
			</tr>
			<tr>
				<td>Table Name</td>
				<td><input type="text" name="table" id="table" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->table, "html", "UTF-8");?>
"/></td>
			</tr>
			<tr>
				<td>SQL Statement</td>
				<td><textarea name="sql" id="sql"><?php echo $_smarty_tpl->tpl_vars['dbo']->value->sql;?>
</textarea></td>
			</tr>
			<tr>
				<td>Primary Key Column</td>
				<td>
					<input type="text" name="key" id="key" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->key);?>
"/>
				</td>
			</tr>
		</tbody>
	</table>
</div>

<!-- part 5 -->
<div id="div_dbosetting">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>Can Search</td>
				<td>
					<label for="cansearch_1"><input type="radio" name="cansearch" id="cansearch_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canSearch){?> checked="checked"<?php }?>> Yes </label> 
					<label for="cansearch_0"><input type="radio" name="cansearch" id="cansearch_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->canSearch){?> checked="checked"<?php }?>> No </label> 
				</td>
			</tr>
			<tr>
				<td>Show Detail</td>
				<td>
					<label for="candetail_1"><input type="radio" name="candetail" id="candetail_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canDetail){?> checked="checked"<?php }?><?php if (!$_smarty_tpl->tpl_vars['dbo']->value->key){?> disabled="disabled"<?php }?>> Yes </label> 
					<label for="candetail_0"><input type="radio" name="candetail" id="candetail_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->canDetail){?> checked="checked"<?php }?>> No </label> 
				</td>
			</tr>
			<tr>
				<td>Can New</td>
				<td>
					<div>
						<label for="cannew_1"><input type="radio" name="cannew" id="cannew_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canNew){?> checked="checked"<?php }?>> Yes </label> 
						<label for="cannew_0"><input type="radio" name="cannew" id="cannew_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->canNew){?> checked="checked"<?php }?>> No </label> 
					</div>
					<div class="checkbox_container_scroll">
						<table>
							<tr>
						<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->groupList; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['row']->key;
?>
							<td><label for="cannewgroup_<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
"><input type="checkbox" name="cannewgroup[]" id="cannewgroup_<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
"<?php if (in_array($_smarty_tpl->tpl_vars['row']->value['grp_code'],$_smarty_tpl->tpl_vars['dbo']->value->canNewGroup)){?> checked="checked"<?php }?>/> <?php echo $_smarty_tpl->tpl_vars['row']->value['grp_title'];?>
</label></td>
							<?php if ($_smarty_tpl->tpl_vars['no']->value>0&&!(($_smarty_tpl->tpl_vars['no']->value+1)%5)){?></tr><tr><?php }?>
						<?php } ?>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td>List New</td>
				<td>
					<div>
						<label for="listnew_1"><input type="radio" name="listnew" id="listnew_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->listNew){?> checked="checked"<?php }?>> Yes </label> 
						<label for="listnew_0"><input type="radio" name="listnew" id="listnew_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->listNew){?> checked="checked"<?php }?>> No </label> 
					</div>
				</td>
			</tr>
			<tr>
				<td>Can Edit</td>
				<td>
					<div>
						<label for="canedit_1"><input type="radio" name="canedit" id="canedit_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canEdit){?> checked="checked"<?php }?><?php if (!$_smarty_tpl->tpl_vars['dbo']->value->key){?> disabled="disabled"<?php }?>> Yes </label> 
						<label for="canedit_0"><input type="radio" name="canedit" id="canedit_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->canEdit){?> checked="checked"<?php }?>> No </label>
					</div>
					<div class="checkbox_container_scroll">
						<table>
							<tr>
						<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->groupList; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['row']->key;
?>
							<td><label for="caneditgroup_<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
"><input type="checkbox" name="caneditgroup[]" id="caneditgroup_<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
"<?php if (in_array($_smarty_tpl->tpl_vars['row']->value['grp_code'],$_smarty_tpl->tpl_vars['dbo']->value->canEditGroup)){?> checked="checked"<?php }?>/> <?php echo $_smarty_tpl->tpl_vars['row']->value['grp_title'];?>
</label></td>
							<?php if ($_smarty_tpl->tpl_vars['no']->value>0&&!(($_smarty_tpl->tpl_vars['no']->value+1)%5)){?></tr><tr><?php }?>
						<?php } ?>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td>List Edit</td>
				<td>
					<div>
						<label for="listedit_1"><input type="radio" name="listedit" id="listedit_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->listEdit){?> checked="checked"<?php }?>> Yes </label> 
						<label for="listedit_0"><input type="radio" name="listedit" id="listedit_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->listEdit){?> checked="checked"<?php }?>> No </label> 
					</div>
				</td>
			</tr>
			<tr>
				<td>Can Delete</td>
				<td>
					<div>
						<label for="candelete_1"><input type="radio" name="candelete" id="candelete_1" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->canDelete){?> checked="checked"<?php }?><?php if (!$_smarty_tpl->tpl_vars['dbo']->value->key){?> disabled="disabled"<?php }?>> Yes </label> 
						<label for="candelete_0"><input type="radio" name="candelete" id="candelete_0" value="0"<?php if (!$_smarty_tpl->tpl_vars['dbo']->value->canDelete){?> checked="checked"<?php }?>> No </label>
					</div>
					<div class="checkbox_container_scroll">
						<table>
							<tr>
						<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->groupList; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['row']->key;
?>
							<td><label for="candeletegroup_<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
"><input type="checkbox" name="candeletegroup[]" id="candeletegroup_<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['grp_code'];?>
"<?php if (in_array($_smarty_tpl->tpl_vars['row']->value['grp_code'],$_smarty_tpl->tpl_vars['dbo']->value->canDeleteGroup)){?> checked="checked"<?php }?>/> <?php echo $_smarty_tpl->tpl_vars['row']->value['grp_title'];?>
</label></td>
							<?php if ($_smarty_tpl->tpl_vars['no']->value>0&&!(($_smarty_tpl->tpl_vars['no']->value+1)%5)){?></tr><tr><?php }?>
						<?php } ?>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td>Export Format<input type="hidden" name="exportformatsubmit" id="exportformatsubmit" value="1"/></td>
				<td>
					<div class="checkbox_container_scroll">
						<table>
							<tr>
						<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->exportFormatArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['row']->key;
?>
							<td><label for="exportformat_<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
"><input type="checkbox" name="exportformat[]" id="exportformat_<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
"<?php if (is_array($_smarty_tpl->tpl_vars['dbo']->value->exportFormat)&&in_array($_smarty_tpl->tpl_vars['row']->value['code'],$_smarty_tpl->tpl_vars['dbo']->value->exportFormat)){?> checked="checked"<?php }?>/> <?php echo $_smarty_tpl->tpl_vars['row']->value['title'];?>
</label></td>
							<?php if ($_smarty_tpl->tpl_vars['no']->value>0&&!(($_smarty_tpl->tpl_vars['no']->value+1)%5)){?></tr><tr><?php }?>
						<?php } ?>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td>Layout</td>
				<td><select name="layout" id="layout">
				<?php  $_smarty_tpl->tpl_vars['layout'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['layout']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->layoutArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['layout']->key => $_smarty_tpl->tpl_vars['layout']->value){
$_smarty_tpl->tpl_vars['layout']->_loop = true;
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['layout']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['layout']->value==$_smarty_tpl->tpl_vars['dbo']->value->layout){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['layout']->value;?>
</option>
				<?php } ?>
				</select></td>
			</tr>
			<tr>
				<td>Theme</td>
				<td><select name="theme" id="theme">
				<?php  $_smarty_tpl->tpl_vars['theme'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['theme']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->themeArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['theme']->key => $_smarty_tpl->tpl_vars['theme']->value){
$_smarty_tpl->tpl_vars['theme']->_loop = true;
?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['theme']->value==$_smarty_tpl->tpl_vars['dbo']->value->theme){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
</option>
				<?php } ?>
				</select></td>
			</tr>
			<tr>
				<td>Width</td>
				<td><input type="text" name="width" id="width" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->width, "html", "UTF-8");?>
"/></td>
			</tr>
			<tr>
				<td>Record Show Per Page</td>
				<td><input type="text" name="recordperpage" id="recordperpage" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->recordPerPage, "html", "UTF-8");?>
"/></td>
			</tr>
			<tr>
				<td>Number of Page Link</td>
				<td><input type="text" name="pagelinkcount" id="pagelinkcount" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->pageLinkCount, "html", "UTF-8");?>
"/></td>
			</tr>
			<tr>
				<td>Number of Sortable Column</td>
				<td><input type="text" name="maxSortCount" id="maxSortCount" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->maxSortCount, "html", "UTF-8");?>
"/></td>
			</tr>
			<tr>
				<td>Default State</td>
				<td><?php echo $_smarty_tpl->tpl_vars['HTML']->value->genSelect('defaultstate',array(array('list','List'),array('detail','Detail'),array('new','New'),array('edit','Edit'),array('search','Search')),$_smarty_tpl->tpl_vars['dbo']->value->defaultState);?>
</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- part 2 -->
<div id="div_dbocaption">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td colspan="2">
					<table>
						<caption>Title</caption>
						<tr>
							<td>List</td>
							<td><input type="text" name="titlelist" id="titlelist" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->titleList, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Detail</td>
							<td><input type="text" name="titledetail" id="titledetail" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->titleDetail, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>New</td>
							<td><input type="text" name="titlenew" id="titlenew" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->titleNew, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Edit</td>
							<td><input type="text" name="titleedit" id="titleedit" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->titleEdit, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Search</td>
							<td><input type="text" name="titlesearch" id="titlesearch" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->titleSearch, "html", "UTF-8");?>
"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<caption>Text</caption>
						<tr>
							<td>Search Cancel Button</td>
							<td><input type="text" name="searchCancel" id="searchCancel" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->searchCancel, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Search Submit Button</td>
							<td><input type="text" name="searchSubmit" id="searchSubmit" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->searchSubmit, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Edit Cancel Button</td>
							<td><input type="text" name="editCancel" id="editCancel" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->editCancel, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Edit Submit Button</td>
							<td><input type="text" name="editSubmit" id="editSubmit" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->editSubmit, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>New Cancel Button</td>
							<td><input type="text" name="newCancel" id="newCancel" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->newCancel, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>New Submit Button</td>
							<td><input type="text" name="newSubmit" id="newSubmit" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->newSubmit, "html", "UTF-8");?>
"/></td>
						</tr>
						<tr>
							<td>Detail Back Button</td>
							<td><input type="text" name="detailCancel" id="detailCancel" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->text->detailCancel, "html", "UTF-8");?>
"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<caption>Caption</caption>
						<tr>
							<td>Columm</td>
							<td>Default</td>
							<td>Search</td>
							<td>List</td>
							<td>Detail</td>
							<td>New</td>
							<td>Edit</td>
						</tr>
						<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
<input type="hidden" name="caption_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="caption_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="1"/></td>
							<?php  $_smarty_tpl->tpl_vars['tmpstate'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tmpstate']->_loop = false;
 $_from = array('default','search','list','detail','new','edit'); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tmpstate']->key => $_smarty_tpl->tpl_vars['tmpstate']->value){
$_smarty_tpl->tpl_vars['tmpstate']->_loop = true;
?>
							<td>
								<select name="captionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" id="captionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->caption->getMethod($_smarty_tpl->tpl_vars['tmpstate']->value,true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="caption_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" id="caption_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->caption->{$_smarty_tpl->tpl_vars['tmpstate']->value}, "html", "UTF-8");?>
"/>
							</td>
							<?php } ?>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- part 3 -->
<div id="div_dbooption">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td colspan="2">
					<table id="option_table">
						<caption>Option</caption>
						<tr>
							<td>Columm</td>
							<td>Default</td>
							<td>Search</td>
							<td>List</td>
							<td>Detail</td>
							<td>New</td>
							<td>Edit</td>
						</tr>
						<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
<input type="hidden" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="1"/></td>
							<?php  $_smarty_tpl->tpl_vars['tmpstate'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tmpstate']->_loop = false;
 $_from = array('default','search','list','detail','new','edit'); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tmpstate']->key => $_smarty_tpl->tpl_vars['tmpstate']->value){
$_smarty_tpl->tpl_vars['tmpstate']->_loop = true;
?>
							<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
">
									<option value="">&nbsp;</option>
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod($_smarty_tpl->tpl_vars['tmpstate']->value,true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<!--<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->{$_smarty_tpl->tpl_vars['tmpstate']->value};?>
"/>-->
								<textarea name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['tmpstate']->value;?>
" class="option"><?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->{$_smarty_tpl->tpl_vars['tmpstate']->value};?>
</textarea>
							</td>
							<?php } ?>
							<!--<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_default" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_default">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod('default',true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_default" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_default" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->default;?>
"/>
							</td>
							<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_search" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_search">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod('search',true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_search" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_search" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->search;?>
"/>
							</td>
							<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_list" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_list">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod('list',true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_list" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_list" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->list;?>
"/>
							</td>
							<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_detail" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_detail">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod('detail',true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_detail" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_detail" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->detail;?>
"/>
							</td>
							<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_new" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_new">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod('new',true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_new" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_new" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->new;?>
"/>
							</td>
							<td>
								<select name="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_edit" id="optionmethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_edit">
								<?php  $_smarty_tpl->tpl_vars['method'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['method']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->methodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['method']->key => $_smarty_tpl->tpl_vars['method']->value){
$_smarty_tpl->tpl_vars['method']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['method']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->getMethod('edit',true)==$_smarty_tpl->tpl_vars['method']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['method']->value;?>
</option>
								<?php } ?>
								</select>
								<input type="text" name="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_edit" id="option_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
_edit" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->option->edit;?>
"/>
							</td>-->
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- part 4 -->
<style type="text/css">
#div_dbocolumn_state > table{
	border-collapse:separate;
	border-spacing:1px;
}
#div_dbocolumn_state > table td{
	border:1px solid black;
}
#div_dbocolumn_state > table td input[type=button]{
	height:100px;
}
#div_dbocolumn_state div.colholder{
	min-width:200px;
	height:200px;
	overflow:auto;
	padding-bottom:20px;
}
#div_dbocolumn_state div.flabel{
	border:1px solid grey;
	margin:2px;
}
#div_dbocolumn_state div.flabel:hover{
	border:1px dotted grey;
}
#div_dbocolumn_state.search > table, #div_dbocolumn_state.list > table, #div_dbocolumn_state.detail > table, #div_dbocolumn_state.new > table, #div_dbocolumn_state.edit > table, #div_dbocolumn_state.export > table{
	display:none;
}
#div_dbocolumn_state.search > table.colStatesearch,
#div_dbocolumn_state.list > table.colStatelist,
#div_dbocolumn_state.detail > table.colStatedetail,
#div_dbocolumn_state.new > table.colStatenew,
#div_dbocolumn_state.edit > table.colStateedit,
#div_dbocolumn_state.export > table.colStateexport
{
	display:table;
}
#div_dbocolumn input[type=text]{
	width:800px;
}
</style>
<script type="text/javascript" defer="defer">
function columnMove(state, from, to){
	var fromDiv = document.getElementById(from);
	var toDiv = document.getElementById(to);
	var fromCheckboxList = fromDiv.getElementsByTagName('input');
	var movingList = new Array();
	for(var i=0; i<fromCheckboxList.length; i++){
		if(fromCheckboxList[i].checked){
			fromCheckboxList[i].checked = false;
			movingList.push(fromCheckboxList[i].parentNode);
		}
	}
	for(var j=0; j<movingList.length; j++){
		toDiv.appendChild(movingList[j]);
	}
	refreshFinalValue(state);
}

function columnMoveUp(state, target){
	var targetDiv = document.getElementById(target);
	var checkboxList = targetDiv.getElementsByTagName('input');
	var lastChecked;
	for(var i=0; i<checkboxList.length; i++){
		if(!checkboxList[i].checked && i<checkboxList.length-1 && checkboxList[i+1].checked){
			for(var j=i+1; j<checkboxList.length; j++){
				if(checkboxList[j].checked)
					lastChecked = checkboxList[j];
				else
					break;
			}
			if(lastChecked.parentNode.nextSibling){
				targetDiv.insertBefore(checkboxList[i].parentNode, lastChecked.parentNode.nextSibling);
			}else{
				targetDiv.appendChild(checkboxList[i].parentNode);
			}
		}
	}
	refreshFinalValue(state);
}

function columnMoveDown(state, target){
	var selectedList = new Array();
	var targetDiv = document.getElementById(target);
	var checkboxList = targetDiv.getElementsByTagName('input');
	for(var i=0; i<checkboxList.length; i++){
		if(checkboxList[i].checked){
			selectedList.push(checkboxList[i].parentNode);
		}else if(selectedList.length){
			targetDiv.insertBefore(checkboxList[i].parentNode, selectedList[0]);
			selectedList = new Array();
		}
	}
	refreshFinalValue(state);
}

function refreshFinalValue(state){
	var rightDiv = document.getElementById('col'+state.charAt(0).toUpperCase()+state.substr(1).toLowerCase()+'Right');
	var rightCheckboxList = rightDiv.getElementsByTagName('input');
	var cb = new Array();
	for(var i=0; i<rightCheckboxList.length; i++){
		cb.push(rightCheckboxList[i].value);
	}
	document.getElementById('col'+state).value = cb.join(', ');
}

var lastCB;
function columnCheckboxClick(event, cb){
	if(event.target.tagName=='DIV'){
		cb.checked = !cb.checked;
	}
	if(!event.shiftKey){
		lastCB = cb;
	}else{
		if(!lastCB){
			lastCB = cb;
			return;
		}else{
			var nowCB = cb;
			if(nowCB.parentNode.parentNode!=lastCB.parentNode.parentNode) return;
			var checkboxList = nowCB.parentNode.parentNode.getElementsByTagName('input');
			var hitCB = new Array()
			var hitCnt = 0;
			for(var i=0; i<checkboxList.length; i++){
				if(checkboxList[i]==lastCB || checkboxList[i]==nowCB){
					hitCnt++;
				}
				if(hitCnt>0 && hitCnt<3){
					hitCB.push(checkboxList[i]);
					if(hitCnt==2)
						break;
				}
			}
			for(var j=0; j<hitCB.length; j++){
				hitCB[j].checked = lastCB.checked;
			}
		}
	}
}

function dragStart(event){
	// console.log('dragStart');
	event.dataTransfer.setData("checkboxIDDragging", event.target.getAttribute('for'));
	return true;
}

function dragEnter(event){
	// console.log('dragEnter');
	return true;
}

function dragOver(event){
	// console.log('dragOver');
	return false;
}

function dragDrop(event, state){
	console.log('dragDrop');
	console.log(event.target.getAttribute('class'));
	var checkboxIDDragging = event.dataTransfer.getData("checkboxIDDragging");
	var movingCheckbox = document.getElementById(checkboxIDDragging);
	var movingCheckboxList = new Array();
	var movingCheckboxFamily = movingCheckbox.parentNode.parentNode.getElementsByTagName('input');
	for(var i=0; i<movingCheckboxFamily.length; i++){
		if(movingCheckboxFamily[i].checked || movingCheckboxFamily[i]==movingCheckbox){
			movingCheckboxList.push(movingCheckboxFamily[i]);
		}
	}
	for(var j=0; j<movingCheckboxList.length; j++){
		//event.target.parentNode.insertBefore(movingCheckboxList[j].parentNode, event.target);
		if(event.target.getAttribute('class')=='colholder'){
			event.target.appendChild(movingCheckboxList[j].parentNode, event.target);
		}else{
			event.target.parentNode.insertBefore(movingCheckboxList[j].parentNode, event.target);
		}
		movingCheckboxList[j].checked = false;
	}
	refreshFinalValue(state);
	return true;
}
</script>
<div id="div_dbocolumn">
<div class="menu2">
<?php  $_smarty_tpl->tpl_vars['state'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['state']->_loop = false;
 $_from = array('search','list','detail','new','edit','export'); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['state']->key => $_smarty_tpl->tpl_vars['state']->value){
$_smarty_tpl->tpl_vars['state']->_loop = true;
?>
<a class="dbocolumn_menu2" onclick="document.getElementById('div_dbocolumn_state').className = '<?php echo $_smarty_tpl->tpl_vars['state']->value;?>
';"><?php echo ucfirst($_smarty_tpl->tpl_vars['state']->value);?>
</a>
<?php } ?>
</div>
<div id="div_dbocolumn_state" class="search">
<?php  $_smarty_tpl->tpl_vars['arr'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['arr']->_loop = false;
 $_smarty_tpl->tpl_vars['state'] = new Smarty_Variable;
 $_from = array(array('search','colSearchLeft','colSearchRight','colSearch'),array('list','colListLeft','colListRight','colList'),array('detail','colDetailLeft','colDetailRight','colDetail'),array('new','colNewLeft','colNewRight','colNew'),array('edit','colEditLeft','colEditRight','colEdit'),array('export','colExportLeft','colExportRight','colExport')); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['arr']->key => $_smarty_tpl->tpl_vars['arr']->value){
$_smarty_tpl->tpl_vars['arr']->_loop = true;
 $_smarty_tpl->tpl_vars['state']->value = $_smarty_tpl->tpl_vars['arr']->key;
?>
<!-- column available configuration # <?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
 -->
<table class="colState<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
">
	<caption><?php echo ucfirst($_smarty_tpl->tpl_vars['arr']->value[0]);?>
</caption>
	<tr>
		<td>
			<div class="colholder" id="<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
" ondragenter="return dragEnter(event)" ondragover="return dragOver(event)" ondrop="return dragDrop(event, '<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
');">
				<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->{$_smarty_tpl->tpl_vars['arr']->value[1]}; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['col']->key;
?>
				<div class="flabel" id="flabel_<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
_<?php echo $_smarty_tpl->tpl_vars['no']->value;?>
" for="<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
_<?php echo $_smarty_tpl->tpl_vars['no']->value;?>
" onclick="columnCheckboxClick(event, this.childNodes[0]);" draggable="true" ondragstart="return dragStart(event)" ondragenter="return dragEnter(event)" ondragover="return dragOver(event)" ondrop="return dragDrop(event, '<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
')"><input type="checkbox" name="<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
[]" id="<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
_<?php echo $_smarty_tpl->tpl_vars['no']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"/><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</div>
				<?php } ?>
			</div>
		</td>
		<td>
			<div><input type="button" value=">>" onclick="columnMove('<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
', '<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
', '<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
')"/></div>
			<div><input type="button" value="<<" onclick="columnMove('<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
', '<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
', '<?php echo $_smarty_tpl->tpl_vars['arr']->value[1];?>
')"/></div>
		</td>
		<td>
			<div class="colholder" id="<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
" ondragenter="return dragEnter(event)" ondragover="return dragOver(event)" ondrop="return dragDrop(event, '<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
');">
				<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_smarty_tpl->tpl_vars['no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->{$_smarty_tpl->tpl_vars['arr']->value[3]}; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
 $_smarty_tpl->tpl_vars['no']->value = $_smarty_tpl->tpl_vars['col']->key;
?>
				<div class="flabel" id="flabel_<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
_<?php echo $_smarty_tpl->tpl_vars['no']->value;?>
" for="<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
_<?php echo $_smarty_tpl->tpl_vars['no']->value;?>
" onclick="columnCheckboxClick(event, this.childNodes[0]);" draggable="true" ondragstart="return dragStart(event)" ondragenter="return dragEnter(event)" ondragover="return dragOver(event)" ondrop="return dragDrop(event, '<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
')"><input type="checkbox" name="<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
[]" id="<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
_<?php echo $_smarty_tpl->tpl_vars['no']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"/><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</div>
				<?php } ?>
			</div>
		</td>
		<td>
			<input type="button" value="&and;" onclick="columnMoveUp('<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
', '<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
')"/><br />
			<input type="button" value="&or;" onclick="columnMoveDown('<?php echo $_smarty_tpl->tpl_vars['arr']->value[0];?>
', '<?php echo $_smarty_tpl->tpl_vars['arr']->value[2];?>
')"/>
		</td>
	</tr>
</table>
<?php } ?>
</div>

	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>Search Column</td>
				<td><input type="text" name="colsearch" id="colsearch" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colSearch);?>
"/></td>
			</tr>
			<tr>
				<td>List Column</td>
				<td><input type="text" name="collist" id="collist" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colList);?>
"/></td>
			</tr>
			<tr>
				<td>Detail Column</td>
				<td><input type="text" name="coldetail" id="coldetail" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colDetail);?>
"/></td>
			</tr>
			<tr>
				<td>New Column</td>
				<td><input type="text" name="colnew" id="colnew" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colNew);?>
"/></td>
			</tr>
			<tr>
				<td>Edit Column</td>
				<td><input type="text" name="coledit" id="coledit" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colEdit);?>
"/></td>
			</tr>
			<tr>
				<td>Export Column</td>
				<td><input type="text" name="colexport" id="colexport" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colExport);?>
"/></td>
			</tr>
			<tr>
				<td>Sortable Column</td>
				<td><input type="text" name="colsort" id="colsort" value="<?php echo implode(', ',$_smarty_tpl->tpl_vars['dbo']->value->colSort);?>
"/></td>
			</tr>
		</tbody>
	</table>
</div>
<!-- part 6 -->
<div id="div_dbosort">
	<table>
		<thead>
			<tr>
				<td colspan="2">Default Sorting</td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>
				<td>
					<select name="defaultsort_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="defaultsort_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
						<?php  $_smarty_tpl->tpl_vars['sort'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['sort']->_loop = false;
 $_from = array('','asc','desc'); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['sort']->key => $_smarty_tpl->tpl_vars['sort']->value){
$_smarty_tpl->tpl_vars['sort']->_loop = true;
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['sort']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->getDefaultSort()==$_smarty_tpl->tpl_vars['sort']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['sort']->value;?>
</option>
						<?php } ?>
					</select>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
<!-- part 6 -->
<div id="div_dbomodifier">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>New</td>
				<td><input type="text" name="newModifier" id="newModifier" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->newModifier;?>
"/></td>
			</tr>
			<tr>
				<td>Edit</td>
				<td><input type="text" name="editModifier" id="editModifier" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->editModifier;?>
"/></td>
			</tr>
			<tr>
				<td>Delete</td>
				<td><input type="text" name="deleteModifier" id="deleteModifier" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->deleteModifier;?>
"/></td>
			</tr>
			<tr>
				<td>Search</td>
				<td><input type="text" name="searchModifier" id="searchModifier" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->searchModifier;?>
"/></td>
			</tr>
		</tbody>
	</table>
</div>

<!-- column setting -->
<div id="div_dbocolsetting">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td colspan="2">
					<table>
						<caption>Input Type</caption>
						<tr>
							<td>&nbsp;</td>
							<td>default</td>
							<?php  $_smarty_tpl->tpl_vars['state'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['state']->_loop = false;
 $_from = array_diff($_smarty_tpl->tpl_vars['dbo']->value->stateArr,array('delete')); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['state']->key => $_smarty_tpl->tpl_vars['state']->value){
$_smarty_tpl->tpl_vars['state']->_loop = true;
?>
							<td><?php echo $_smarty_tpl->tpl_vars['state']->value;?>
</td>
							<?php } ?>
						</tr>
						<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>
							<td>
								<select name="inputtypedefault_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="inputtypedefault_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
								<?php  $_smarty_tpl->tpl_vars['inputtype'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['inputtype']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->inputTypeArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['inputtype']->key => $_smarty_tpl->tpl_vars['inputtype']->value){
$_smarty_tpl->tpl_vars['inputtype']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['inputtype']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputTypeDefault==$_smarty_tpl->tpl_vars['inputtype']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['inputtype']->value;?>
</option>
								<?php } ?>
								</select>
							</td>
							<?php  $_smarty_tpl->tpl_vars['state'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['state']->_loop = false;
 $_from = array_diff($_smarty_tpl->tpl_vars['dbo']->value->stateArr,array('delete')); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['state']->key => $_smarty_tpl->tpl_vars['state']->value){
$_smarty_tpl->tpl_vars['state']->_loop = true;
?>
							<td>
								<select name="inputtype<?php echo $_smarty_tpl->tpl_vars['state']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="inputtype<?php echo $_smarty_tpl->tpl_vars['state']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value="">&nbsp;</option>
								<?php  $_smarty_tpl->tpl_vars['inputtype'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['inputtype']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->inputTypeArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['inputtype']->key => $_smarty_tpl->tpl_vars['inputtype']->value){
$_smarty_tpl->tpl_vars['inputtype']->_loop = true;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['inputtype']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->getInputType($_smarty_tpl->tpl_vars['state']->value,true)==$_smarty_tpl->tpl_vars['inputtype']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['inputtype']->value;?>
</option>
								<?php } ?>
								</select>
							</td>
							<?php } ?>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table border="1">
						<caption>Column Setting</caption>
						<tr>
							<td>Column</td>
							<td>Display Data Type</td>
							<td>Size</td>
							<td>Format</td>
							<td>Default Value</td>
							<td>Default Value (Search)</td>
							<td>Default Value (New)</td>
							<td>Default Value (Edit)</td>
						</tr>
						<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>
							<td>
								<select name="displaydatatype_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->displayDataTypeArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['code']->value==$_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->displayDataType){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select>
							</td>
							<td>
								<input type="text" name="size_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->size, "html", "UTF-8");?>
" size="2"/>
							</td>
							<td>
								<input type="text" name="format_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->format, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<div>
									<label for="mandatorydefault_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"><input type="checkbox" name="mandatorydefault_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="mandatorydefault_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->mandatoryDefault){?> checked="checked"<?php }?>/> Mandatory</label>
								</div>
								<select name="defaultvaluemethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->defaultValueMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultValueMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="defaultvalue_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultValue, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<div>
									<label for="mandatorysearch_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"><input type="checkbox" name="mandatorysearch_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="mandatorysearch_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->mandatorySearch){?> checked="checked"<?php }?>/> Mandatory</label>
								</div>
								<select name="defaultsearchvaluemethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->defaultValueMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultSearchValueMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="defaultsearchvalue_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultSearchValue, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<div>
									<label for="mandatorynew_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"><input type="checkbox" name="mandatorynew_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="mandatorynew_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->mandatoryNew){?> checked="checked"<?php }?>/> Mandatory</label>
								</div>
								<select name="defaultnewvaluemethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->defaultValueMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultNewValueMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="defaultnewvalue_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultNewValue, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<div>
									<label for="mandatoryedit_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"><input type="checkbox" name="mandatoryedit_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="mandatoryedit_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="1"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->mandatoryEdit){?> checked="checked"<?php }?>/> Mandatory</label>
								</div>
								<select name="defaulteditvaluemethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->defaultValueMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultEditValueMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="defaulteditvalue_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->defaultEditValue, "html", "UTF-8");?>
"/>
							</td>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table border="1">
						<caption>Display / Input Modifier</caption>
						<tr>
							<td>Column</td>
							<td>Display List Modifier</td>
							<td>Display Detail Modifier</td>
							<td>Input Search Modifier</td>
							<td>Input New Modifier</td>
							<td>Input Edit Modifier</td>
						</tr>
						<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>
							<td>
								<select name="displaylistmodifiermethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->modifierMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->displayListModifierMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="displaylistmodifier_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->displayListModifier, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<select name="displaydetailmodifiermethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->modifierMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->displayDetailModifierMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="displaydetailmodifier_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->displayDetailModifier, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<select name="inputsearchmodifiermethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->modifierMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputSearchModifierMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="inputsearchmodifier_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputSearchModifier, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<select name="inputnewmodifiermethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->modifierMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputNewModifierMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="inputnewmodifier_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputNewModifier, "html", "UTF-8");?>
"/>
							</td>
							<td>
								<select name="inputeditmodifiermethod_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
									<option value=""></option>
							<?php  $_smarty_tpl->tpl_vars['text'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['text']->_loop = false;
 $_smarty_tpl->tpl_vars['code'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->modifierMethodArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['text']->key => $_smarty_tpl->tpl_vars['text']->value){
$_smarty_tpl->tpl_vars['text']->_loop = true;
 $_smarty_tpl->tpl_vars['code']->value = $_smarty_tpl->tpl_vars['text']->key;
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['code']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputEditModifierMethod==$_smarty_tpl->tpl_vars['code']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</option>
							<?php } ?>
								</select><br />
								<input type="text" name="inputeditmodifier_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" value="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->inputEditModifier, "html", "UTF-8");?>
"/>
							</td>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<table border="1">
						<caption>Class</caption>
						<tr>
							<td>Column</td>
							<td>Caption Container Class<input type="hidden" name="capContClassDefault" id="capContClassDefault" value=""/></td>
							<td>Caption Container Extra Class</td>
							<td>Value Container Class</td>
							<td>Value Container Extra Class</td>
						</tr>
						<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>
							<td><div class="checkbox_container_scroll"><?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->classArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
							<label for="capContClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
][<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
]"><input type="checkbox" name="capContClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
][]" id="capContClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
][<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
]" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
"<?php if (in_array($_smarty_tpl->tpl_vars['row']->value['code'],$_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->capContClassDefault)){?> checked="checked"<?php }?>/><?php echo $_smarty_tpl->tpl_vars['row']->value['title'];?>
</label>
							<?php } ?></div></td>
							<td><input type="text" name="capContExtClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
]" id="capContExtClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
]" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->capContExtClassDefault;?>
"/></td>
							<td><div class="checkbox_container_scroll"><?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->classArr; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
							<label for="valContClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
][<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
]"><input type="checkbox" name="valContClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
][]" id="valContClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
][<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
]" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['code'];?>
"<?php if (in_array($_smarty_tpl->tpl_vars['row']->value['code'],$_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->valContClassDefault)){?> checked="checked"<?php }?>/><?php echo $_smarty_tpl->tpl_vars['row']->value['title'];?>
</label>
							<?php } ?></div></td>
							<td><input type="text" name="valContExtClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
]" id="valContExtClassDefault[<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
]" value="<?php echo $_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->valContExtClassDefault;?>
"/></td>
						</tr>
						<?php } ?>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- part 6 -->
<div id="div_dbosearch">
	<table>
		<thead>
			<tr>
				<td colspan="2">Search Mode</td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<?php  $_smarty_tpl->tpl_vars['col'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['col']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dbo']->value->col; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['col']->key => $_smarty_tpl->tpl_vars['col']->value){
$_smarty_tpl->tpl_vars['col']->_loop = true;
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['col']->value;?>
</td>
				<td>
					<select name="searchmode_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
" id="searchmode_<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
">
						<?php  $_smarty_tpl->tpl_vars['smode'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['smode']->_loop = false;
 $_from = array('','exact','matchany','matchfront','matchrear','pattern'); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['smode']->key => $_smarty_tpl->tpl_vars['smode']->value){
$_smarty_tpl->tpl_vars['smode']->_loop = true;
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['smode']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['dbo']->value->cols[$_smarty_tpl->tpl_vars['col']->value]->getSearchMode()==$_smarty_tpl->tpl_vars['smode']->value){?> selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['smode']->value;?>
</option>
						<?php } ?>
					</select>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
<!-- part 6 -->
<div id="div_dbolayout">
	<table>
		<thead>
			<tr>
				<td colspan="2">Layout</td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>Search</td>
				<td><textarea name="layoutsearch" id="layoutsearch" style="width:300px;height:40px;"><?php echo htmlentities($_smarty_tpl->tpl_vars['dbo']->value->layoutSearch);?>
</textarea></td>
			</tr>
			<tr>
				<td>List</td>
				<td><textarea name="layoutlist" id="layoutlist" style="width:300px;height:40px;"><?php echo htmlentities($_smarty_tpl->tpl_vars['dbo']->value->layoutList);?>
</textarea></td>
			</tr>
			<tr>
				<td>Detail</td>
				<td><textarea name="layoutdetail" id="layoutdetail" style="width:300px;height:40px;"><?php echo htmlentities($_smarty_tpl->tpl_vars['dbo']->value->layoutDetail);?>
</textarea></td>
			</tr>
			<tr>
				<td>New</td>
				<td><textarea name="layoutnew" id="layoutnew" style="width:300px;height:40px;"><?php echo htmlentities($_smarty_tpl->tpl_vars['dbo']->value->layoutNew);?>
</textarea></td>
			</tr>
			<tr>
				<td>Edit</td>
				<td><textarea name="layoutedit" id="layoutedit" style="width:300px;height:40px;"><?php echo htmlentities($_smarty_tpl->tpl_vars['dbo']->value->layoutEdit);?>
</textarea></td>
			</tr>
		</tbody>
	</table>
</div>
<!-- part 6 -->
<!-- part 6 -->
<div id="part6">
	<table>
		<thead>
			<tr>
				<td colspan="2"></td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="2"></td>
			</tr>
		</tfoot>
		<tbody>
		</tbody>
	</table>
</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	</form>
</div>
</div>
<script type="text/javascript">
//dbosetup, dbosetting, dbocaption, dbooption, dbocolumn, dbosort, dbomodifier, dbosearch, dbolayout
function showConfigTab(tab){
	var tabArr=["dbosetup", "dbosetting", "dbocaption", "dbooption", "dbocolumn", "dbosort", "dbomodifier", "dbocolsetting", "dbosearch", "dbolayout"];
	for(var i=0; i<tabArr.length; i++){
		tabswitch = document.getElementById('switch_'+tabArr[i]);
		tabdiv = document.getElementById('div_'+tabArr[i]);
		if(!tabswitch || !tabdiv){
			continue;
		}
		if(tab==tabArr[i]){
			removeClass(tabswitch, 'active');
			addClass(tabswitch, 'active');
			tabdiv.style.display = 'block';
		}else{
			tabdiv.style.display = 'none';
			removeClass(tabswitch, 'active');
		}
	}
	/*var i=1;
	var ot = document.getElementById('part'+i);
	while(ot){
		ot.style.display = 'none';
		i++;
		ot = document.getElementById('part'+i);
	}
	t.style.display = 'block';*/
}
showConfigTab('dbosetup');

function dboConfirmSelfDestruct(){
	if(confirm("This action is irreversible. Procede to delete?"))
		document.location = '?dboid=<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
&dboconfig=1&dboselfdestruct=<?php echo $_smarty_tpl->tpl_vars['dbo']->value->id;?>
';
	else
		return false;
}

function in_array(needle, haystack, argStrict){
	var key = '', strict = !! argStrict;
	if (strict){
		for (key in haystack){
			if (haystack[key] === needle){
				return true;
			}
		}
	}else{
		for(key in haystack){
			if(haystack[key] == needle){
				return true;
			}
		}
	} 
	return false;
}
function addClass(obj, cls){
	if(typeof(obj)=='string'){
		obj = document.getElementById(obj);
	}/*else if(typeof(obj)=='object'){
	}*/
	if(!obj)
		return false;
	var newClassArr = new Array();
	var existingClassArr = obj.className.split(' ');
	existingClassArr.push(cls);
	for(key in existingClassArr){
		if(!in_array(existingClassArr[key], newClassArr))
			newClassArr.push(existingClassArr[key]);
	}
	obj.className = newClassArr.join(' ');
}
function removeClass(obj, cls){
	if(typeof(obj)=='string'){
		obj = document.getElementById(obj);
	}/*else if(typeof(obj)=='object'){
	}*/		
	if(!obj)
		return false;
	// var reg = new RegExp('([^0-9a-zA-Z]*'+cls+'[^0-9a-zA-Z]*)', 'g');
	// obj.className = obj.className.replace(reg, ' ');
	var newClassArr = new Array();
	var existingClassArr = obj.className.split(' ');
	for(key in existingClassArr){
		if(existingClassArr[key]!=cls && !in_array(existingClassArr[key], newClassArr))
			newClassArr.push(existingClassArr[key]);
	}
	obj.className = newClassArr.join(' ');
}
</script><?php }} ?>