/* darksky */
div.dbo_theme_darksky{
	background-color:#0c0c0c;
	color:#ffffff;
}

div.dbo_theme_darksky table{
	color:#ffffff;
}

div.dbo_theme_darksky  > table{
	width:100%;
	color:#ffffff;
}

/* list */
div.dbo_theme_darksky td.dbo_container_list{
}

div.dbo_theme_darksky td.dbo_container_list > form > fieldset,
div.dbo_theme_darksky td.dbo_container_list > fieldset{
	background-color: #282D3C;
	padding:10px;
	border-radius: 8px;
	border-color:#ffffff;
	border:0px;
	color:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_list > form > fieldset > legend,
div.dbo_theme_darksky td.dbo_container_list > fieldset > legend{
	background-color:#282D3C;
	border-radius:8px;
}

div.dbo_theme_darksky table.dbo_list{
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border: 1px solid #236693;
	width: 100%;
	color: #F2F2F2;
	border-spacing: 0px;
}
div.dbo_theme_bluesky table.dbo_list > caption {
	color:#FFFFFF;
}
div.dbo_theme_darksky table.dbo_list > thead > tr{
}

div.dbo_theme_darksky table.dbo_list > thead > tr > th{
	border:1px solid #236693;
}

div.dbo_theme_darksky table.dbo_list > thead > tr div.tool{
	float:right;
}

div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.search_link{
	display:block;
	float:left;
	width:30px;
	height:30px;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/search_link.png) no-repeat;
}
div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.search_link:hover{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/search_link_hover.png) no-repeat;
}

div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.new_link{
	display:block;
	float:left;
	width:30px;
	height:30px;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new_link.png) no-repeat;
}
div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.new_link:hover{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new_link_hover.png) no-repeat;
}

div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.export_link{
	display:block;
	float:left;
	width:30px;
	height:30px;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new_link.png) no-repeat;
}

div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.dbo_config_link{
	display:block;
	float:left;
	width:30px;
	height:30px;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/config_link.png) no-repeat;
}
div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > a.dbo_config_link:hover{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/config_link_hover.png) no-repeat;
}

div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > input.multiple_delete{
	display:block;
	float:left;
	width:30px;
	height:30px;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/multiple_delete.png) no-repeat transparent;
	cursor:pointer;
	border:0px;
}
div.dbo_theme_darksky table.dbo_list > thead > tr div.tool > input.multiple_delete:hover{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/multiple_delete_hover.png) no-repeat;
}

div.dbo_theme_darksky table.dbo_list > thead > tr.title{
	background-color:#202332;
	color:#f2f2f2;
}

div.dbo_theme_darksky table.dbo_list > tbody > tr{
}

div.dbo_theme_darksky table.dbo_list > tbody > tr > td{
	border:1px solid #236693;
}

div.dbo_theme_darksky table.dbo_list > tbody > tr:nth-child(odd){
	background-color:#141414;
	color:#f2f2f2;
}

div.dbo_theme_darksky table.dbo_list > tbody > tr:nth-child(even){
	background-color:#202332;
	color:#f2f2f2;
}

div.dbo_theme_darksky table.dbo_list > tbody > tr.active{
	background-color:#00ffff;
	color:#000000;
}

div.dbo_theme_darksky table.dbo_list > tbody > tr:hover{
	background-color:#70ffff;
	color:#000000;
}

div.dbo_theme_darksky table.dbo_list th.recordnum{
	text-align:left;
	white-space:nowrap;
}
div.dbo_theme_darksky table.dbo_list td.recordnum{
	text-align:left;
	white-space:nowrap;
}
div.dbo_theme_darksky table.dbo_list td.recordnum > div:after{
	content:".";
}

div.dbo_theme_darksky table.dbo_list td.tool{
	padding-left:6px;
}

div.dbo_theme_darksky table.dbo_list td.tool a.detail_link{
	width:16px;
	height:16px;
	overflow:hidden;
	display:inline-block;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/list_detail.png) no-repeat;
	visibility:hidden;
	margin:2px;
}
div.dbo_theme_darksky table.dbo_list tr:hover td.tool a.detail_link{
	visibility:visible;
}

div.dbo_theme_darksky table.dbo_list td.tool a.edit_link{
	width:16px;
	height:16px;
	overflow:hidden;
	display:inline-block;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/list_edit.png) no-repeat;
	visibility:hidden;
	margin:2px;
}
div.dbo_theme_darksky table.dbo_list tr:hover td.tool a.edit_link{
	visibility:visible;
}

div.dbo_theme_darksky table.dbo_list td.tool a.delete_link,
div.dbo_theme_darksky table.dbo_list th.tool a.delete_link{
	width:16px;
	height:16px;
	overflow:hidden;
	display:inline-block;
	color:transparent;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/list_delete.png) no-repeat;
	visibility:hidden;
	cursor:pointer;
	margin:2px;
}
div.dbo_theme_darksky table.dbo_list tr:hover td.tool a.delete_link{
	visibility:visible;
}

/* paging */
/*div.dbo_theme_darksky table.dbo_list ul.dbo_paging{
	float:left;
	list-style-type:none;
	padding:0px;
	margin:0px;
	background-color:#000000;
	border-radius:5px;
	height:24px;
	line-height:24px;
}
div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li{
	float:left;
	margin:1px;
	border:1px solid #999999;
	padding:0px 5px;
}
div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.previouspage{
	border-radius:5px;
}*/
div.dbo_theme_darksky table.dbo_list ul.dbo_paging{
	float:left;
	list-style-type:none;
	padding:0px;
	margin:0px;
	background-color:#000000;
	border-radius:5px;
	height:24px;
	line-height:24px;
	font-size:0.8em;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging a{
	color:#ffffff;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li{
	float:left;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li > a, 
div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li > span{
	display:block;
	padding:0px 2px;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.previouspage{
	margin-right:1px;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.previouspage > span{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/paging_prev_inactive.png) no-repeat;
	width:50px;
	height:24px;
	padding:0px;
	color:transparent;
	text-align:center;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.previouspage > a{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/paging_prev.png) no-repeat;
	width:50px;
	height:24px;
	padding:0px;
	color:transparent;
	text-align:center;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.pagenumber{
	text-align:center;
	margin:0px 1px;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.pagenumber > a{
	padding:0px 5px;
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/paging_inactive.png) repeat-x;
	height:22px;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.currentpage{
	padding:0px 5px;
	text-align:center;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.pagesummary{
	padding:0px 12px;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.nextpage{
	margin-left:1px;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.nextpage > span{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/paging_next_inactive.png) no-repeat;
	width:50px;
	height:24px;
	padding:0px;
	color:transparent;
	text-align:center;
}

div.dbo_theme_darksky table.dbo_list ul.dbo_paging > li.nextpage > a{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/paging_next.png) no-repeat;
	width:50px;
	height:24px;
	padding:0px;
	color:transparent;
	text-align:center;
}

div.dbo_theme_darksky table.dbo_list  a.sortable{
	color:white;
}
div.dbo_theme_darksky table.dbo_list  a.sortable:after{
}

div.dbo_theme_darksky table.dbo_list  a.sort_asc{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/asc.png) no-repeat right center;
	padding-right:13px;
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/desc.png) no-repeat right center;
	padding-right:13px;
}

div.dbo_theme_darksky table.dbo_list  a.sort_1{
}
div.dbo_theme_darksky table.dbo_list  a.sort_1:after{
	content:"1";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_2{
}
div.dbo_theme_darksky table.dbo_list  a.sort_2:after{
	content:"2";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_3{
}
div.dbo_theme_darksky table.dbo_list  a.sort_3:after{
	content:"3";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_4{
}
div.dbo_theme_darksky table.dbo_list  a.sort_4:after{
	content:"4";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_5{
}
div.dbo_theme_darksky table.dbo_list  a.sort_5:after{
	content:"5";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_6{
}
div.dbo_theme_darksky table.dbo_list  a.sort_6:after{
	content:"6";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_7{
}
div.dbo_theme_darksky table.dbo_list  a.sort_7:after{
	content:"7";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_8{
}
div.dbo_theme_darksky table.dbo_list  a.sort_8:after{
	content:"8";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_9{
}
div.dbo_theme_darksky table.dbo_list  a.sort_9:after{
	content:"9";
	font-size:0.7em;
	text-decoration:normal;
	font-style:italic;
	margin-left:5px;
	color:#66ffcc;
}

div.dbo_theme_darksky table.dbo_list  a.sort_asc_1{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/asc.png) no-repeat right center;
	padding-right:13px;
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_1:after{
	content:" [A1]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_1{
	background:url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/desc.png) no-repeat right center;
	padding-right:13px;
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_1:after{
	content:" [D1]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_asc_2{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_2:after{
	content:" [A2]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_2{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_2:after{
	content:" [D2]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_asc_3{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_3:after{
	content:" [A3]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_3{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_3:after{
	content:" [D3]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_asc_4{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_4:after{
	content:" [A4]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_4{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_4:after{
	content:" [D4]";
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_5{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_5:after{
	content:" [A5]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_5{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_5:after{
	content:" [D5]";
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_6{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_6:after{
	content:" [A6]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_6{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_6:after{
	content:" [D6]";
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_7{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_7:after{
	content:" [A7]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_7{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_7:after{
	content:" [D7]";
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_8{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_8:after{
	content:" [A8]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_8{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_8:after{
	content:" [D8]";
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_9{
}
div.dbo_theme_darksky table.dbo_list  a.sort_asc_9:after{
	content:" [A9]";
}

div.dbo_theme_darksky table.dbo_list  a.sort_desc_9{
}
div.dbo_theme_darksky table.dbo_list  a.sort_desc_9:after{
	content:" [D9]";
}

/* detail */
div.dbo_theme_darksky td.dbo_container_detail{
}

div.dbo_theme_darksky td.dbo_container_detail > fieldset{
	background-color: #282D3C;
	padding:10px;
	border-radius: 8px;
	border:1px solid #ffffff;
	color:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_detail > fieldset > legend{
	background-color:#282D3C;
	border-radius:8px;
	border-top:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_detail th.caption{
	font-weight:normal;
	text-align:left;
}

div.dbo_theme_darksky td.dbo_container_detail td.colon{
	font-weight:bold;
}

div.dbo_theme_darksky td.dbo_container_detail td.button button.detail_cancel, 
div.dbo_theme_darksky td.dbo_container_detail td.button input.detail_cancel{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/detail_cancel.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_detail td.button button.detail_cancel:hover, 
div.dbo_theme_darksky td.dbo_container_detail td.button input.detail_cancel:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/detail_cancel_hover.png) no-repeat transparent;
}

div.dbo_theme_darksky td.dbo_container_detail td.button button.detail_delete, 
div.dbo_theme_darksky td.dbo_container_detail td.button input.detail_delete{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/detail_delete.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_detail td.button button.detail_delete:hover, 
div.dbo_theme_darksky td.dbo_container_detail td.button input.detail_delete:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/detail_delete_hover.png) no-repeat transparent;
}

/* search */

div.dbo_theme_darksky td.dbo_container_search{
}

div.dbo_theme_darksky td.dbo_container_search > form > fieldset{
	background-color: #282D3C;
	padding:10px;
	border-radius: 8px;
	border:1px solid #ffffff;
	color:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_search > form > fieldset > legend{
	background-color:#282D3C;
	border-radius:8px;
	border-top:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_search th.caption{
	font-weight:normal;
	text-align:left;
}

div.dbo_theme_darksky td.dbo_container_search th.caption div.mandatory:after, div.dbo_theme_darksky td.dbo_container_search td.caption div.mandatory:after{
	content:" *";
	color:red;
}

div.dbo_theme_darksky td.dbo_container_search td.colon{
	font-weight:bold;
}

div.dbo_theme_darksky td.dbo_container_search td.value input[type=text]{
	border-radius:5px;
	padding:1px 3px;
	border: 2px solid #999999;
}

div.dbo_theme_darksky td.dbo_container_search td.value textarea{
	border-radius:5px;
	padding:1px 3px;
	border: 2px solid #999999;
}

div.dbo_theme_darksky td.dbo_container_search td.value select{
	border-radius:5px;
	padding:1px 3px;
}

div.dbo_theme_darksky td.dbo_container_search td.form_button button.search_cancel, 
div.dbo_theme_darksky td.dbo_container_search td.form_button input.search_cancel{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/search_cancel.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_search td.form_button button.search_cancel:hover, 
div.dbo_theme_darksky td.dbo_container_search td.form_button input.search_cancel:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/search_cancel_hover.png) no-repeat transparent;
}

div.dbo_theme_darksky td.dbo_container_search td.form_button button.search_submit, 
div.dbo_theme_darksky td.dbo_container_search td.form_button input.search_submit{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/search.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_search td.form_button button.search_submit:hover, 
div.dbo_theme_darksky td.dbo_container_search td.form_button input.search_submit:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/search_hover.png) no-repeat transparent;
}

/* new */
div.dbo_theme_darksky td.dbo_container_new{
}

div.dbo_theme_darksky td.dbo_container_new > form > fieldset{
	background-color: #282D3C;
	padding:10px;
	border-radius: 8px;
	border:1px solid #ffffff;
	color:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_new > form > fieldset > legend{
	background-color:#282D3C;
	border-radius:8px;
	border-top:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_new th.caption{
	font-weight:normal;
	text-align:left;
}

div.dbo_theme_darksky td.dbo_container_new th.caption div.mandatory:after, div.dbo_theme_darksky td.dbo_container_new td.caption div.mandatory:after{
	content:" *";
	color:red;
}

div.dbo_theme_darksky td.dbo_container_new td.colon{
	font-weight:bold;
}

div.dbo_theme_darksky td.dbo_container_new td.value input[type=text], div.dbo_theme_darksky td.dbo_container_new td.value input[type=password]{
	border-radius:5px;
	padding:1px 3px;
	border: 2px solid #999999;
}

div.dbo_theme_darksky td.dbo_container_new td.value textarea{
	border-radius:5px;
	padding:1px 3px;
	border: 2px solid #999999;
}

div.dbo_theme_darksky td.dbo_container_new td.value select{
	border-radius:5px;
	padding:1px 3px;
}

div.dbo_theme_darksky td.dbo_container_new td.form_button{
	text-align:center;
}

div.dbo_theme_darksky td.dbo_container_new td.form_button button.new_cancel, 
div.dbo_theme_darksky td.dbo_container_new td.form_button input.new_cancel{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new_cancel.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_new td.form_button button.new_cancel:hover, 
div.dbo_theme_darksky td.dbo_container_new td.form_button input.new_cancel:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new_cancel_hover.png) no-repeat transparent;
}

div.dbo_theme_darksky td.dbo_container_new td.form_button button.new_submit, 
div.dbo_theme_darksky td.dbo_container_new td.form_button input.new_submit{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_new td.form_button button.new_submit:hover, 
div.dbo_theme_darksky td.dbo_container_new td.form_button input.new_submit:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/new_hover.png) no-repeat transparent;
}

/* edit */
div.dbo_theme_darksky td.dbo_container_edit{
}

div.dbo_theme_darksky td.dbo_container_edit > form > fieldset{
	background-color: #282D3C;
	padding:10px;
	border-radius: 8px;
	border:1px solid #ffffff;
	color:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_edit > form > fieldset > legend{
	background-color:#282D3C;
	border-radius:8px;
	border-top:#ffffff;
}

div.dbo_theme_darksky td.dbo_container_edit th.caption{
	font-weight:normal;
	text-align:left;
}

div.dbo_theme_darksky td.dbo_container_edit th.caption div.mandatory:after, div.dbo_theme_darksky td.dbo_container_edit td.caption div.mandatory:after{
	content:" *";
	color:red;
}

div.dbo_theme_darksky td.dbo_container_edit td.colon{
	font-weight:bold;
}

div.dbo_theme_darksky td.dbo_container_edit td.value input[type=text]{
	border-radius:5px;
	padding:1px 3px;
	border: 2px solid #999999;
}

div.dbo_theme_darksky td.dbo_container_edit td.value textarea{
	border-radius:5px;
	padding:1px 3px;
	border: 2px solid #999999;
}

div.dbo_theme_darksky td.dbo_container_edit td.value select{
	border-radius:5px;
	padding:1px 3px;
}

div.dbo_theme_darksky td.dbo_container_edit td.form_button{
	text-align:center;
}

div.dbo_theme_darksky td.dbo_container_edit td.form_button{
	text-align:center;
}

div.dbo_theme_darksky td.dbo_container_edit td.form_button button.edit_cancel, 
div.dbo_theme_darksky td.dbo_container_edit td.form_button input.edit_cancel{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/edit_cancel.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_edit td.form_button button.edit_cancel:hover, 
div.dbo_theme_darksky td.dbo_container_edit td.form_button input.edit_cancel:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/edit_cancel_hover.png) no-repeat transparent;
}

div.dbo_theme_darksky td.dbo_container_edit td.form_button button.edit_submit, 
div.dbo_theme_darksky td.dbo_container_edit td.form_button input.edit_submit{
	width: 120px;
	height: 35px;
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/edit.png) no-repeat transparent;
	border: 0px;
	cursor: pointer;
	color:transparent;
}

div.dbo_theme_darksky td.dbo_container_edit td.form_button button.edit_submit:hover, 
div.dbo_theme_darksky td.dbo_container_edit td.form_button input.edit_submit:hover{
	background: url(../image/dbo/theme/darksky/<?php echo $LANG; ?>/edit_hover.png) no-repeat transparent;
}

/* delete */
div.dbo_theme_darksky td.dbo_container_delete{
}

