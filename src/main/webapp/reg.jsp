<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		function changeImage(){
				$("#kaptchaImage").prop("src","getKaptcha.do?t="+new Date().getTime());
			}
			
			function username(){
			if($("#userName").val().length>=6){	
				$("#nameSpan").html("正确");
				return true;
			}else{			
			$("#nameSpan").html("用户名要求不低于6个字符");
			return false;
			}
			}
			
			 function userpwd(){
			 if($("#userPwd").val().length>=6){
			 $("#pwdSpan").html("正确");
				return true;
			 }else{
			 	$("#pwdSpan").html("密码要求不低于6个字符");
				return false;
			 }
			 }
			 
			 function usersfz(){
				if($("#userSfz").val()){
					$("#sfzSpan").html("正确");
					return true;
				}else{
				$("#sfzSpan").html("身份证号不能为空");
				return false;
				
				}			 
			 }
			 
			 function  usertel(){
			 		if($("#userTel").val()){
			 			$("#telSpan").html("正确");
			 			return true;
			 			
			 		}else{
			  $("#telSpan").html("电话号不能为空");
			 		return false;
			 		}
			 }
			 
			 function yzm(){
	 if($("#passwords").val().length==4){
	 		$("#yzmSpan").html("格式正确");
	 		return true;
	 }else{
	 $("#yzmSpan").html("验证码错误");
	 return false;
	 }
	}
			 function reg(){
			 if(username()&&userpwd()&&usersfz()&&usertel()&&yzm()){
			 
			 return true;
			 }else{
			 alert("输入有误，请检查");
			 return false;
			 }
			 }
	</script>

<body>
<form action="${pageContext.request.contextPath}/user/insertUser.do" method="post" onsubmit="return reg()">
<div class="wrap">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input type="text" class="inputh lf" name="user_name" id="userName" onblur="username()"/>
             <div class="lf red laba" id="nameSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>密码</label>
              <input type="text" class="inputh lf" name="user_password" id="userPwd" onblur="userpwd()"/>
              <div class="lf red laba" id="pwdSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>身份证号</label>
              <input type="text" class="inputh lf" name="user_card_no" id="userSfz" onblur="usersfz()"/>
              <div class="lf red laba" id="sfzSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>电话</label>
              <input type="text" class="inputh lf" name="user_tel" id="userTel" onblur="usertel()"/>
              <div class="lf red laba" id="telSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>住址</label>
              <input type="text" class="inputh lf" name="user_address" />
            </dd>
            <dd>
              <label> <small>*</small>邮政编码</label>
              <input type="text" class="inputh lf" name="user_post_number" />
            </dd>
            <dd class="hegas">
              <label> <small>*</small>验证码</label>
              <input type="text" class="inputh inputs lf" value="" name="kaptcha" onblur="yzm()" id="passwords" />
              <div id="yzmSpan"></div>
               <span class="wordp lf"><img src="getKaptcha.do"  alt="" id="kaptchaImage"/></span>
               <span class="blues lf"><a href="javascript:void(0)" title="" onclick="changeImage()">看不清</a></span>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name=""  type="checkbox" id="rem_u"   />
              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input  type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
            </dd>
          </dl>
    </div>
   
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
 </form>
</body>
</html>
