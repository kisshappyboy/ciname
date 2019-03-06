// JavaScript Document
//关闭
function closeLogin(){
	//获取登录背景和登录对话框
	var W_login_2=document.getElementById("login_2");
	var W_overflow_2=document.getElementById("overflow_2");	
	W_login_2.style.display="none";
	W_overflow_2.style.display="none";
}

//打开
function openLogin(){
	//获取登录背景和登录对话框
	var W_login_2=document.getElementById("login_2");
	var W_overflow_2=document.getElementById("overflow_2");	
	W_login_2.style.display="block";
	W_overflow_2.style.display="block";
}
//拖拽
function Drag(o, e){ 
	var e = window.event || e; 
	var _x = e.offsetX || e.layerX; 
	var _y = e.offsetY || e.layerY; 
	o.style.filter = 'Alpha(opacity=50)'; 
	o.style.opacity = '0.5'; 
	document.onmousemove = function(e){ 
	var e = window.event || e; 
	o.style.left = e.clientX - _x + 'px'; 
	o.style.top = e.clientY - _y + 'px'; 
	o.style.cursor="move"; 
	};
	document.onmouseup = function(e){ 
		document.onmousemove = null; 
		o.style.filter = o.style.opacity = ''; 
		o.style.cursor="default"; 
	} 
} 