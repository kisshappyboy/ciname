<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<title>无标题文档</title>
<script type="text/javascript">
 $(function(){$("."+"listItem").hover(function(){  $(this).css("background-color","#333"); },
  function(){  $(this).css("background-color","white");  }); });
  
  function focusRed(unsubscribe,abc){
  	 unsubscribe.style.background="#00f";
  }
   function blurGreen(unsubscribe,abc){
   unsubscribe.style.background="#FFF";
  }
  
</script>
</head>
<style type="text/css">
#rightContext_3 {
	
	margin:0 auto;
	width:760px;
	height:550px;
}
.orderList_3 {
	line-height: 24px;
	padding: 5px 10px;
	width:700px;
	color:#9B9B9B;
	margin:0 auto;
	border-radius: 4px;
	text-align:center;
}
table {
	border:0px;
	background-color:#9B9B9B;
}
tr {
	background-color:#FFF;
}
td {
	padding:5px 10px;
}
#listHead{
	background-color:#1B6EB2;
}
#topTatile_3{
	margin:0 auto;
	width:760px;
	height:30px;
	text-align:center;	
}
.unsubscribe_3{
	text-decoration:none;	
}
	
</style>
<body>
<div id="rightContext_3">


<div id="topTatile_3">
		<h3>我的购票</h3>
	</div>
<div class="orderList_3">
  <table>
    <tr id="listHead">
      <td> 订单号 </td>
      <td> 电影名称 </td>
      <td> 放映日期 </td>
      <td> 放映时间 </td>
      <td> 座位 </td>
	   <td>影院名称 </td>
      <td> 订购时间 </td>
      <td> 价格 </td>
      <td>
	  退订</a> 
	  </td>
    </tr>
      <c:forEach items="${ordersList}" var="orders">
            <tr class="listItem">
              <td> ${orders.oId} </td>
              <td> ${orders.mName}  </td>
              <td><fmt:formatDate value="${orders.beginTime}" pattern="yyyy-MM-dd"/></td>
              <td><fmt:formatDate value="${orders.beginTime}" pattern="hh:mm"/></td>
              <td> ${orders.selectedSeats}  </td>
               <td>${orders.cName} </td>
              <td> <fmt:formatDate value="${orders.payTime}" pattern="yyyy-MM-dd hh:mm"/></td>
              <td>${orders.totalPrice}元 </td>
              <td onmouseover="focusRed(this,'unsubscribe_3')"
              onmouseout="blurGreen(this,'unsubscribe_3')" >
              <a href=""  class="unsubscribe_3" id="unsubscribe1_3" >
              退订</a>
            </tr>
      </c:forEach>
  </table>
</div>
</div>
</body>
</html>
