<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="/"/>
<title>My 影院</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/index_login_2.js" ></script>
<style type="text/css">
* {
	margin:0;
	padding:0;
}
a {
	color:#a6c063;
	font-size:15px;
	font-family:"宋体";
}
a:link, a:visited {
	text-decoration:none;
}
a:hover {
	color:#F9F;
}
a:active {
	text-decoration:none;
}
#footer_1 p {
	margin:7px 0;
}
#ad_2 img {
	margin:2px 2px;
}
.quick_search {
	width: 210px;
	height: 25px;
	background: url(http://static1.mtime.cn/20130608151702/images/ticket/ticket_component.gif) no-repeat 0 -80px;
}
.quick_search .quick_text {
	padding: 5px;
	width: 167px;
	border: 0;
	background: none;
}
.quick_search .quick_btn {
	padding: 5px;
	width: 33px;
	height: 25px;
	border: 0;
	background: none;
}
.quick_box {
	padding: 25px 25px 25px 42px;
	background: url(pic/videoDis_bg.png) no-repeat;
	height:399px;
}
.quick_btn {
	color: rgb(43, 219, 212);
	display: block;
	text-align: center;
	padding: 5px;
	margin: 10px;
	background-color: rgb(17, 68, 122);
	border-radius: 5px;
	box-shadow: 2px 2px 3px;
}
.mt9 {
	margin:9px;
}
.mt3 {
	margin:3px;
}
.lh18 {
	line-height:18px;
}
.ml15 {
	margin-left: 15px;
}
#selectCinema_2, #selectTimes_2, #displayvideo_2 {
	margin:20px 10px;
	padding:10px 10px;
	float:left;
	border:#ddd solid 2px;
	height:399px;
}
#selectCinema_2 {
	width:270px;
 //border:#CCf solid 2px;
}
#selectTimes_2 {
	width:270px;
 //position:relative;
 //border:#CCf solid 3px;
 //border-left:none;
}
#displayvideo_2 {
	width:270px;
}
.title_2 {
	border-bottom: 1px solid #ddd;
	margin:15px 0;
	padding-bottom:10px;
	font-size:16px;
	font-weight:bold;
}
.displayCinema_2 li.currented {
	margin:10px 0;
}
.displayCinema_2 li.currented a {
	position: relative;
	border: 1px solid #f07201;
	background-color: #fffadd;
	width: 198px;
	padding:5px;
	height: 24px;
	line-height: 24px;
	border-radius:3px;
}
.otShowtime {
	border: 1px solid #f07201;
	background-color: #fffadd;
	display:inline-block;
	padding:5px 10px;
	margin:3px;
	border-radius:3px;
	text-decoration:none;
	width:200px;
}
#coverselectTimes_2, #coverdisplayvideo_2 {
	position: absolute;
	left: 10px;
	top: 10px;
	height: 399px;
	background-color: #000;
	opacity: 0.5;
	z-index: 100;
	border-radius: 5px;
}
.selected {
	background-image:url(pic/select_success_flag.png);
	background-position:right;
	background-repeat: no-repeat;
}
</style>
<script type="text/javascript">
		
	function selectCinema(obj,cId){

		//记录当前影院id
		$("#cId").val(cId);

		//通过ajax获取该影院以及该影片对应的场次列表
		$.get("cinema/queryTimes/${mId}/"+cId,function(data){
			$("#timesDiv").empty();

			//循环遍历场次集合
			for(var i = 0 ;i < data.length;i++){
				var times = data[i];
				var aNode = "<a class=\"otShowtime\" tId="+times.tId+"  mPic="+times.movie.mPic+" mName="+times.movie.mName+"  begin="+times.sBegin.substr(11)+" version="+times.version+" hName="+times.hall.hName+" price="+times.price+"  onclick=\"selectTimes(this) \" ushowtimeid=\"35382783\" version=\"2\" language=\"2\" title=\"3D  2号影厅\" ><span style=\"margin-right:10px;\"	>￥"+data[i].price+"</span><em>"+data[i].sBegin+"</em></a>";
				$("#timesDiv").append(aNode);
			}

		})

		//alert(obj.className);
		//if have select , unselect
		if(obj.className=="selected"){



			obj.className="currented_2";
			//clear selectTimes_2
			$(".quick_time").css("display","none");
			//clear displayvideo_2
			$(".quick_box").css("display","none");
			//covered
			$("#coverselectTimes_2").css("display","block");
			$("#coverdisplayvideo_2").css("display","block");
			return;
		}
		//all unselect to make sure only one to be select 
		$("#selectCinema_2 .selected").each(
			function (){
				//alert(this.className);
				this.className="currented_2";
		});
		
		if(obj.className=="currented_2"){
			obj.className="selected";
		//ajax
		/*$.post("getTimes.do",
		  {
			Cinemaname:$(obj).text()
		  },
		  function(data,status){
			alert("Data: " + data + "\nStatus: " + status);
		  });
		  */
		  //dis selectTimes_2
			$(".quick_time").css("display","block");
		  //uncovered
		  $("#coverselectTimes_2").css("display","none");
		}
	}
	
	function selectTimes(obj){
//影院名字
		var cName = $("li .selected").text();
//		alert(cName);

		//显示该场次详细信息
//		alert($(obj).attr("mPic"));
		$("#mPic").attr("src",$(obj).attr("mPic"));
		$("#mName").html($(obj).attr("mName"));
		$("#cName").html(cName);

		var begin = $(obj).attr("begin");
		var version = $(obj).attr("version");
		var hName = $(obj).attr("hName");
		var price = $(obj).attr("price");
		$("#begin").text(begin);
		$("#version").text(version);
		$("#hName").text(hName);
		$("#price").text("￥"+price);
		$("#tId").val($(obj).attr("tId"));

		//alert(obj.className);
		//if have select , unselect 
		if(obj.className=="otShowtime selected"){
			//obj.className="otShowtime";
			$(obj).removeClass("selected");
			//clear displayvideo_2	
			$(".quick_box").css("display","none");
			//covered
			$("#coverdisplayvideo_2").css("display","block");
			return;
		}
		//all unselect to make sure only one to be select 
		$(".quick_time .selected").each(
			function (){
				//alert(this.className);
				//this.className="otShowtime";
				$(this).removeClass("selected");
		});
		
		if(obj.className=="otShowtime"){
			$(obj).addClass("selected");
			//obj.className="selected";
		//ajax
		/*$.post("getVideo.do",
		  {
			Cinemaname:$(obj).text()
		  },
		  function(data,status){
			alert("Data: " + data + "\nStatus: " + status);
		  });
		  */
		  //dis displayvideo_2
			$(".quick_box").css("display","block");
		  //uncovered
		  $("#coverdisplayvideo_2").css("display","none");
		}
	}

	function selectSeats(){
		var tId = $("#tId").val();
		var cName = $("#cName").text();
		location.href="/seats/selectSeats/"+tId+"/"+cName;
	}
</script>
</head>
<body style="background-color:#1b6eb2;">
<div id="myTop_2" style="background:url(pic/navigation1.jpg); height:30px; padding-top:5px;" > <img  src="pic/wwwlogo.png" style="height:20px; margin-left:159px; margin-top:0px"/> <img  src="pic/wwwlogo_1.png" style="height:20px; margin-left:100px; margin-top:0px"/> 
  <!--<img  src="pic/wwwlogo.png" style="height:20px; margin-left:100px; margin-top:0px"/>-->
  <div id="user_2"  style="display:inline-table ; position:absolute; right:159px ; background-color:rgb(238, 238, 238); padding:5px 25px; border-radius:5px;"><a href="javascript:openLogin()" style="padding:0px 10px; color:rgb(99, 166, 187);">登录</a> <a href="#" style="padding:0px 10px; color:rgb(99, 166, 187);" >免费注册</a> </div>
</div>
<div  style="width:960px; margin:0 auto;">
  <div style=" background:url(pic/title_final.jpg); height:120px;  border-radius:6px; margin-top:2px;"> </div>
  <div style=" padding:9px ;background-color:#FFF;margin-top:8px; border-radius:9px; border-top:30px #F2F1ED solid ;border-bottom:30px solid #F2F1ED;"> 
    <!--************************这里可以根据需要天写自己内容********高度自己设置**************-->
    <div id="selectCinema_2">
      <h3 style="" class="title_2">选择电影院</h3>
      <div class="quick_search mb6">
        <input type="text" _type="textinput" class="quick_text fl c_a5" value="快速检索">
        <input type="button" class="quick_btn fl">
      </div>
      <div class="displayCinema_2" >
        <div class="p_r" style="width:auto; height:290px; overflow:hidden; margin:10px 0; overflow-y:scroll;" tabindex="0">
          <ul class="quick_theater p_a" _type="theaterlist" style="padding:3px 0;">
			  <c:forEach items="${cinemaList}" var="cinema">
            		<li  class="currented" ><a  class="currented_2"  onclick="selectCinema(this,${cinema.cId})">${cinema.cName} <em>&nbsp;</em></a></li>
			  </c:forEach>
            </ul>
          <div class="scrollbar"><span style="display: none;">&nbsp;</span></div>
        </div>
      </div>
    </div>
    <div id="selectTimes_2" style="position:relative;"> 
      <!--遮盖本div-->
      <div id="coverselectTimes_2" style="width: 270px;">
        <h1 style="width:160px ;margin:auto; color:#FFF; height: 399px;line-height: 399px; text-align:center;">选择场次</h1>
        <!--<img src="pic/coverT.png" />--> 
      </div>
      <!--正文-->
      <h3 class="title_2">选择场次</h3>
      <div style="position:relative;">
        <div _type="screeningsctn" style="position: absolute; top: 0px;">
          <div class="quick_time mt10" id="timesDiv" style="overflow-y: scroll;height: 326px; display: none ;">

		  </div>
        </div>
      </div>
    </div>
    <div id="displayvideo_2" style="position:relative;"> 
      <!--遮盖本div-->
      <div id="coverdisplayvideo_2" style="width:270px;">
        <h1 style="width:160px ;margin:auto; color:#FFF; height: 399px;line-height: 399px; text-align:center;">选座购票</h1>
        <!-- <img src="pic/coverM.png"/>--> 
      </div>
      <!--正文-->
      <div class="step03" _type="stepctn">
        <div class="quick_box" _type="ticket" style="display:none;">
          <p class="mt9" ><img alt="" class="img_box" id="mPic" width="140px" height="189px" src=""></p>
          <p class="mt9"><strong><a class="c_000" target="_blank" href="" id="mName"></a></strong></p>
          <p class="mt3 lh18" ><span id="cName"></span><input type="hidden" id="tId"/><input type="hidden" id="cId"/></span> <br>
            <span id="begin"></span><span class="ml15" id="version"></span><br>
            <span id="hName"></span>&nbsp;&nbsp;<strong class="c_fff ml18" id="price"></strong></p>
          <p class="mt15"><a class="quick_btn" target="_blank" onclick="selectSeats()">选 座 购 票</a></p>
        </div>
        <div class="quick_mask" style="display: none;"></div>
      </div>
    </div>
    <div style="clear:both;"></div>
    
    <!--************************这里可以根据需要天写自己内容**********************--> 
  </div>
  <!--*************Main_content_begin_end*************-->
  <div style="clear:both;"></div>
  <div id="footer_1" style="margin-top:30px;">
    <center>
      <p> <a href="" target="_blank">关于我们</a> <a href="" target="_blank">诚聘英才</a> <a href="" target="_blank">免责声明</a> <a href="" target="_blank">商标声明</a> <a href="" target="_blank">注册服务条款</a> <a href="" target="_blank">合作信息</a> <a href="" target="_blank">广告事物</a> </p>
      <p> <span>热线电话：8888-888</span> <span>地址：杨凌区 西北农林科技大学 信息工程学院</span> </p>
      <p> <span>Copyright 2013-2014 mycinema</span></p>
      <p></p>
    </center>
  </div>
</div>
</div>

<!--登录框-->
<div id="login_2" style="width:375px; border-radius:8px; padding:10px; position:absolute; z-index:111; top: 200px;left: 390px; background-image:url(pic/login_index_bg.jpg);background-repeat: repeat; display:none; "  >
  <div style="">
    <div  style="cursor: move" onmousedown="Drag(this.parentNode.parentNode, event)" >
      <div  id="btn_close_2" style="background-image:url(pic/bt_close_login_index.jpg);width: 25px;height: 15px;position: absolute;right: 10px;top: 10px; cursor: pointer;" onclick="closeLogin()"></div>
      <div id="share_tit_2" style="font-size: 22px;height: auto;line-height: 120%;margin: 0 14px;padding-left: 0;border-bottom: 1px solid #ababab;padding-bottom: 19px">会员登录</div>
    </div>
    <div >
      <div style=" margin-bottom:10px;">
        <form>
          <dl id="login_userinfo_2" style="padding:10px 20px; line-height: 30px;">
            <dd>
              <label data-login="account-label">登录帐号：</label>
              <input type="text" name="account" >
            </dd>
            <dd>
              <label>登录密码：</label>
              <input type="password" name="password" >
              <a href="#" class="ml6">忘记密码？</a></dd>
            <dd  style="display: none;">
              <label>验证码：</label>
              <input type="text" name="vcode"  value="" style="width:115px;">
            </dd>
            <dd  style="display: none;"><img src="" > <a href="#" onclick="return false;" >刷新</a> </dd>
            <dd>
              <input type="checkbox" data-login="auto" name="" value="">
              下次自动登录</dd>
          </dl>
          <p  style="text-align:center;">
            <input type="button" value="免费注册" style="width:130px; height:30px;background-color:#E4E4E4; margin-right:20px; border-radius:5px;" >
            <input type="submit"  value="登录"  style="width:130px; height:30px; background-color:#F90; border-radius:5px;">
          </p>
        </form>
      </div>
      <p id="dialogButtonRegion_1370930678517" class="tip_btnbox" style="display: none; background: none;
text-align: center;
padding: 0 0 30px 0;"></p>
    </div>
  </div>
</div>
<!--登录框背景-->
<div id="overflow_2" style="background-color: rgb(0, 0, 0); opacity: 0.6; zoom: 1; z-index: 110; position: absolute; margin: 0px; padding: 0px; top: 0px; left: 0px; width: 100%; height: 1100px; background-position: initial initial; background-repeat: initial initial; display:none;"></div>
</body>
</html>
