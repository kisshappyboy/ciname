<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="/"/>
<title>My 影院</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/index_login_2.js" ></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<style type="text/css"></style>
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

/*选座位*/
.seat_screen {
	width: 552px;
	height: 20px;
	margin: 0 auto;
	background: url(http://static1.mtime.cn/piao/20130524082615/images/ticket/ticket_screen.jpg) no-repeat center 0;
	text-align: center;
	line-height: 1.5em;
	font-size: 14px;
	padding-top: 36px;
	margin-bottom: 30px;
}
.seat_num td {
	height: 19px;
	text-align: center;
	padding: 5px 0;
	line-height: 19px;
	overflow: hidden;
	color: #7f7f7f;
}
.seat_views {
	border-collapse: collapse;
}
.seat_views tr td {
	white-space: nowrap;
	line-height: 19px;
}
.seat_null, .seat_ture, .seat_selected, .seat_false {
	margin-right: 3px;
	cursor: default;
	display: inline-block;
	width: 23px;
	height: 19px;
	margin:5px 2px;
	cursor:pointer;
}
.seat_ture {
	background: url(pic/seat_true.png);
}
.seat_selected {
	background-image:url(pic/seat_selected.png);
}
.seat_false {
	background-image:url(pic/seat_false.png);
}
.mlr15 {
	margin-left: 15px;
	margin-right: 15px;
	margin:5px 2px;
}
.new_ticket_pic dt {
	width: 62px;
	margin-right: 12px;
}
.new_ticket_pic {
	float:left;
}
.new_ticket_pic dt, .new_ticket_pic dd, .new_ticket_info .ntxt {
	float: left;
	display: inline;
}
.new_btn_orange, .new_btn_gray {
	border: 1px solid #c5590a;
	width: 220px;
	height: 40px;
	font-size: 18px;
	line-height: 40px;
	font-family: "microsoft yahei", arial, helvetica, sans-serif;
	padding: 0;
	text-align: center;
	font-weight:bold;
	background-color:#F96;
	border-radius:5px;
	cursor:pointer;
}
.mt12 {
margin-top: 12px;
}
.mt9 {
margin-top: 9px;
}
.font12{
	font-size:14px;
}
.seat_numbox span{
	margin-top:11px;
	height: 28px;
	font-family: "宋体";
	background-image:url(pic/seatnumbox.png);
	display: inline-block;
	padding: 4px 7px;
	background-repeat: no-repeat;
}	
</style>

<script type="application/javascript">

  $(window).ready(function(){
        //修改已经被卖出/不可选的样式
      var lockedSeats = "${times.lockedSeats}";
      var noneSeats = "${times.noneSeats}";

      var lockedCount = lockedSeats.split(",").length;

      //计算剩余数量(总座位数-已经卖出座位数)
      var leftCount = ${times.hall.count}-lockedCount;
      $("#leftCount").text(leftCount);
      //选中所有的座位（i标签），依次对比状态
      $("i").each(function(){
            var seatsName = $(this).attr("seatsname");
          //如果已经卖出
          if(lockedSeats.indexOf(seatsName)!=-1){
              //改变座位样式为 seat_selected
              $(this).addClass("seat_false");
          }

          //如果不能选
          if(noneSeats.indexOf(seatsName)!=-1){
              $(this).removeClass();
              $(this).addClass("seat_null");
          }
      })
  });



//全局计数变量
var num=0;
var numstr="";
 function selectSeat(obj){
	 //alert(obj.className);
     var seatsname=$(obj).attr('seatsname');
	 str=$(obj).attr('colname');
	 if(obj.className=="seat_ture")
	 {
		 if(num>=4){
		 alert("only for 4");
		 return;		 
		 }
	 	obj.className="seat_selected";

         $("#submitForm").append("<input type='hidden' id='"+seatsname+"' name='seatNo' value='"+seatsname+"'/>");
		numstr="<span id='"+str+"'>"+str+"</span>";
		num+=1;		
		//alert(	$(obj).attr("colname"));
		 $(".seat_numbox").each(function() { 
		$(this).append(numstr); 
		}); 	
	 }else if(obj.className=="seat_selected"){
		 obj.className="seat_ture";
		// alert(str);
         $("#"+seatsname).remove();
		 $(".seat_numbox span").remove("#"+str);
		 num-=1;
	 }
	 //alert( $("#SelectSeatCount"));
	 $("#SelectSeatCount").text(num);
	 //alert($("#singlePrice").text());	
	 att=$("#singlePrice").text().split("元");
	 //alert(att[0]);
	 $("#SelectSeatPrice").text("￥"+num*att[0]);
	 //obj.style="background-image:url(pic/seat_selected.png);";
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
  <div style="background-color:#FFF;margin-top:8px; border-radius:9px; border-top:30px #F2F1ED solid ;border-bottom:30px solid #F2F1ED;"> 
    <!--************************这里可以根据需要天写自己内容********高度自己设置**************--> 
     <!--left-->
    <div id="LeftContentRegion" style="width: 590px; border-right:#ddC solid 2px; margin:10px 0; float:left;">
      <div class="ticket_left" style=" margin:30px 20px;">
        <div class="seat_screen"> ${cName}&nbsp;${times.hall.hName}
          <p id="enableSeatCoutRegion">（剩余<span id="leftCount"></span>个座位）</p>
        </div>
      </div>
      <!--seatlist -->
      <div class="p_r" id="seatContainer" style="float:left; margin:20px 30px;">
        <table cellspacing="0" cellpadding="0" class="seat_num" align="center">
          <tbody>
<c:forEach var="i" begin="1" end="${times.hall.rowNums}">
            <tr>
              <td width="35" class="row_nums">${i}排</td>
            </tr>
           </c:forEach>
          </tbody>
        </table>
      </div>
      <div id="drawSeat" class="seat_selectout" style="float:left; margin:20px 30px;">
        <table id="tbSeat" cellspacing="0" cellpadding="0" class="seat_views" align="center">
          <tbody>
<c:forEach var="i" begin="1" end="${times.hall.rowNums}">
            <tr>
              <td id="tbSeatTD" align="center">
                    <c:forEach var="j" begin="1" end="${times.hall.columnNums}">
                  <i class="seat_ture" onclick="selectSeat(this)" seatsname="${i}-${j}"    id="seat_0_2" rowname="${i}" colname="${i}排${j}座" status="0" type="0">&nbsp;</i>
                        </c:forEach>
            </tr>
</c:forEach>
          </tbody>
        </table>
      </div>
      <div style="clear:both;"></div>
      <div class="p20 tc" style="text-align:center;"> <span class="inblock mlr15"><i class="seat_ture v_m mr3"></i>可选座位</span> <span class="inblock mlr15"> <i class="seat_selected v_m mr3"></i>已选座位</span> <span class="inblock mlr15"><i class="seat_false v_m mr3"> </i>不可选座位</span> </div>
    </div>
    
    <!--right-->
    <div class="ticket_right" style="background:none; float:left; margin:30px 20px;">
      <dl class="new_ticket_pic fix">
        <dt><img width="60" alt="天机·富春山居图" src="${times.movie.mPic}"></dt>
        <dd>
          <h2 class="px16">${times.movie.mName}</h2>
          <p class="mt9 font12">类型：${times.movie.mType}</p>
        </dd>
      </dl>
      <div style="clear:both; padding:35px 0;">
        <p class="mt12 font12">影院：<strong class="c_000 px14 ml10" style="padding-left:2px;">${cName} </strong></p>
        <p class="mt12 font12">版本：<strong class="c_000 px14 ml10">${times.version}</strong></p>
        <div style="z-index:3;" class="mt12 clearfix p_r"> <span class="fl font12">场次：<strong class="c_000 px14 ml10">${times.sBegin}</strong></span>
          <div class="ticket_changelist mt9" id="MoreShowtimeRegion" style="display:none;">
            <div>
              <p class="mb3"> <a href="http://piao.mtime.com/onlineticket/showtime/35267090/">17:25</a> |<a href="http://piao.mtime.com/onlineticket/showtime/35267088/">17:55</a> |<a href="http://piao.mtime.com/onlineticket/showtime/35267094/">19:10</a> |<a href="http://piao.mtime.com/onlineticket/showtime/35267089/">20:10</a> </p>
              <p class="mb3"> <a href="http://piao.mtime.com/onlineticket/showtime/35267095/">21:25</a> </p>
            </div>
          </div>
          <div class="clearfix mt12"> <span class="fl font12">座位：</span>
            <div class="fl seat_numbox seat_numbox_false ml10" id="SelectedSeatRegion"></div>
          </div>
          <p class="mt12 font12">票价：<strong class="c_000 px14 ml10" id="singlePrice">${times.price}元/张</strong><span class="ml6 px12 c_7f7">（含3元手续费）</span></p>
          <p class="mt12 font12">票数：<strong class="c_000 px14 ml10" id="SelectSeatCount">0</strong></p>
          <p class="mt12 font12">总计：<strong class="px24 ml10 c_orange" id="SelectSeatPrice">￥0</strong></p>
          <p class="line_solid mt20">&nbsp;</p>
          <div class="mt12">
            <p class="mt9">
                <form action="/order/save" method="post" id="submitForm">
                    <input name="tId" type="hidden" value="${times.tId}"/>
                    <input id="submitSeat" type="submit" value="下一步" class="btn_orange6 new_btn_orange" style="margin-right:-1px;">
                 </form>
              <span id="reSelectCount" style="display:none;"></span> </p>
          </div>
            <p>${errorMsg}</p>
        </div>
      </div>
    </div>
    <div style="clear:both;" ></div>
    
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
