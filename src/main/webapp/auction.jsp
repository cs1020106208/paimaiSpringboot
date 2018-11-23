<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
	<script type="text/javascript">
	function  price(){
	
		var i=$("#sale").val();
		/* alert(1) */
		var maxPrice=$("#maxPrice").html()/* [0].innerHTML(); */
		/* alert(maxPrice); */
		 if(parseInt(i)<=parseInt(maxPrice)){
		$("#p").html("价格不能低于当前最高价");
		return false;
		}else{
			$("#p").html("价格合适");
			return true;
		}
		 
	}
	function form(){
	if(price()){
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
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称：</li>
        <li class="borderno">${auction.auction_name}</li>
      </ul>
      <ul class="rows">
        <li>描述：</li>
        <li class="borderno">${auction.auction_desc}</li>
      </ul>
      <ul class="rows">
        <li>开始时间：</li>
        <li class="borderno"><fmt:formatDate value="${auction.auction_start_time}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
      </ul>
      <ul class="rows">
        <li>结束时间：</li>
        <li class="borderno"><fmt:formatDate value="${auction.auction_end_time}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价：</li>
        <li class="borderno">${auction.auction_start_price}</li>
      </ul>
  </div>
<!--   <div class="rg borders"><img src="images/ad20.jpg" width="270" height="185" alt="" /></div>
 -->  
 <div class="rg borders"><img src="${pageContext.request.contextPath}/images/${auction.auction_pic}" width="270" height="185" alt="" /></div>
 <div class="cl"></div>
  <div class="top10 salebd">
  		<form action="${pageContext.request.contextPath}/insert.do" method="post" onsubmit="return form()">
       <p>
       <label for="sale">出价：</label>
       <input type="hidden" name="auction_id" value="${auction.auction_id}">
       <input type="text"  class="inputwd" id="sale"  onblur="price()" name="auction_price"/>
       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       
        <%-- <input type="hidden" name="record.auction_id" value="<s:property value="auction.auction_id"/>">
       <input type="hidden" name="auction.auction_id" value="<s:property value="auction.auction_id"/>">
       <input type="text"  class="inputwd" id="sale" name="record.auction_price"/>
       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" /> --%>

       </p>
         </form>
       <p class="f14 red" id="p"></p>
  </div>
  <div class="top10">
    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    <input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
      <c:forEach items="${recordList}" var="record">
      <ul class="rows">
        <li><fmt:formatDate value="${record.auction_time}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
        <li id="maxPrice">${record.auction_price}</li>
>         <li class="borderno">${record.user_name}</li>
      </ul>
      </c:forEach>

 -->      
  </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
