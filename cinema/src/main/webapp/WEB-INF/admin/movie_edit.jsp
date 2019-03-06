<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../js/themes/icon.css" />
    <script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.1.2.2.js"></script>
    <link rel="stylesheet" href="../include/kindeditor/themes/default/default.css" />
    <script charset="utf-8" src="../include/kindeditor/kindeditor-all.js"></script>
    <script charset="utf-8" src="../include/kindeditor/lang/zh_CN.js"></script>
<style type="text/css">
div{
	padding-top:10px;
}
#intro{
	position:absolute;
	left:350px;
	top:20px;
}
#actors_outer{
	position:relative;
}
#actors_label{
	position:relative;
	top:-100px;
}
.hidden{
	visibility:hidden;
}
</style>
    <script>
        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('textarea[name="mContent"]', {
                width: '100%',
                height: '400px',
                resizeType : 0,
                allowPreviewEmoticons : false,
                allowImageUpload : false,
                items : [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                    'insertunorderedlist', '|', 'emoticons', 'image', 'link']
            });
        });
    </script>
</head>
<body>
<div style="background:#fafafa; padding:10px; width:98%; height:100%">
    <form id="movie_add" action="../movie_update" method="post" enctype="multipart/form-data">
        <input type="hidden" name="mId" value="${movie.mId}"/>
        <div>
            <label for="movie_name">电影名称:</label>
            <input class="easyui-validatebox" type="text" name="mName" value="${movie.mName}" required="true" style="width:200px">
        </div>
        <div>
            <label for="movie_type">电影类型:</label>
			<input class="easyui-combobox" 
					name="mType"
					url="../movie_type_data"
					valueField="id" 
					textField="text"
                   value="${movie.mType}"
					panelHeight="auto"
                    style="width:100px"
            >
        </div>
        <div>
        <label for="releaseDate">上映日期:</label>
        <input class="easyui-datetimebox" name="releaseDate" required="true" value="3/10/2017 2:3:56" style="width:150px">
         </div>
         <div>
        <label for="movie_length">电影长度:</label>
       <input class="easyui-validatebox" type="text" name="movie_length" value="90" required="false" style="width:200px">

         </div>
         <div>
         <label for="poster">选择海报:</label>
        <input type="file" name="poster">
         </div>
         
         <div>
            <label for="movie_directors">电影导演:</label>
            <input class="easyui-validatebox" type="text" value="刘德华" name="movie_directors" required="false" style="width:200px">
        </div>
        
        <div id="actors_outer">
        <div id="actors">
            <label for="movie_actors" id="actors_label">主要演员:</label>
            <textarea id="actors_tx" name="movie_actors" style="height:200px">刘德华</textarea>
        </div>
         </div>
         
         
         <div>
            <label for="movie_writers">编<span class="hidden">呵呵</span>剧:</label>
            <input class="easyui-validatebox" type="text" name="movie_writers" required="false" value="刘德华" style="width:200px">
        </div>
         
         <div>
         <label for="is_expired" >是否热映:</label>
         <input type="radio" name="expired" value="1">放映中
         <input type="radio" name="expired" value="2">未放映或已过期
         </div>
         
        <div>
            <label for="movie_trailer">影片预告:</label>
            <input type="text" name="movie_trailer" style="width:200px">
        </div>
         <div>
            <input type="submit" value="添加">
            <span class="hidden">呵呵</span>
            <input type="reset" value="清空">
        </div>
        <div id="intro">
        	简介：<textarea name="mContent" style="width:300px;height:200px;">${movie.mContent}</textarea>
        </div>
    </form>
</div>
	
</body>
</html>