/**
 * @author ixingkongyue
 */
function checkSubmit(){
	if($("#user_name").val()==""){
		alert("请输入用户名！");
		return false;
		
	}
		if($("#user_password_4").val()==""){
		alert("请输入密码！");
		return false;
		
	}
		if($("#user_password_check_4").val()==""){
		alert("请输入确认密码！");
		return false;
		
	}
			if($("#user_email_4").val()==""){
		alert("请输入确认密码！");
		return false;
		
	}
	
	
}