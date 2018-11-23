<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
	<script type="text/javascript">
	function changeImage(){

		$("#kaptchaImage").prop("src","getKaptcha.do?t="+new Date().getTime());
	
	}
	
	function userName(){
		if($("#name").val()){
			$("#nameSpan").html("正确");
			return true;
			}else{
	
			$("#nameSpan").html("不能为空");
			return false;
			}
	} 
	
	function userPwd(){
	if($("#pwd").val()){
			$("#pwdSpan").html("正确");
			return true;
			}else{
			$("#pwdSpan").html("不能为空");
			return false;
			}
	}
	
	function yzm(){
	 if($("#passwords").val().length==4){
	 		$("#yzmSpan").html("正确");
	 		return true;
	 }else{
	 $("#yzmSpan").html("验证码错误");
	 return false;
	 }
	}
	
	function login(){
		if(userName()&&userPwd()&&yzm()){
			return true;
		}else{
		alert("输入有误，请确认");
		return false;
		}
		
	}
	</script>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="${pageContext.request.contextPath}/user/login.do" method="post" target='_blank' onsubmit="return login()">
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label><input type="text" class="inputh" name="user_name"  id="name"  onblur="userName()"/>
        	<span id="nameSpan"></span>	
        </dd>
        <dd><label for="password">密 码：</label><input type="password" class="inputh" value="123456"  name="user_password"  id="pwd" onblur="userPwd()"/>
        <span id="pwdSpan"></span>
        </dd>
        <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" class="inputh inputs lf"  id="passwords" name="kaptcha" onblur="yzm()"/>
           <div id="yzmSpan"></div>
           <span class="wordp lf"><img src="getKaptcha.do"  id="kaptchaImage" alt=""  /></span>
           <span class="blues lf"><a href="javascript:void(0)" title=""  onclick="changeImage()">看不清</a></span>
        </dd>
        <dd>
           <input name=""  type="checkbox" id="rem_u"  />
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <a href="${pageContext.request.contextPath}/reg.jsp"><input name=""  value="注 册" class="spbg buttombg f14 lf" /></a>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
