<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="js/themes/icon.css" />
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.1.2.2.js"></script>
	<script>
		$(function(){
			$('#movie_list').datagrid({
				title:'电影列表',
				iconCls:'icon-save',
				width:800,
				height:450,
				nowrap: false,
				striped: true,
				collapsible:true,
				url:'movie_list_data',
				sortName: 'mId',
				sortOrder: 'desc',
				remoteSort: false,
				idField:'mId',
				frozenColumns:[[
	               		{title:'电影ID',field:'mId',width:100,sortable:true}
				]],
				columns:[[
				{title:'电影名称',field:'mName',width:300},
				{title:'上映时间',field:'screenTime',width:200,sortable:true},
				{title:'操作', field:'opt',align:'center', width:200,rowspan:2,
						formatter:function(value,rec){
							return '<span style="color:red"><a href="movie_edit/'+rec.mId+'">Edit</a> <a href="movie_delete/'+rec.mId+'">Delete<a></span>';
						}
				}
				]],
				pagination:true,
				rownumbers:true
			});
//			var p = $('#movie_list').datagrid('getPager');
//			if (p){
//				$(p).pagination({
//					onBeforeRefresh:function(){
//						alert('before refresh');
//					}
//				});
//			}
			
		});
	</script>
</head>
<body>
	<table id="movie_list" width="100%"></table>
</body>
</html>