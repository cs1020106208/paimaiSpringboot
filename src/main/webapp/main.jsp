<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>展示页面</title>
<link href="/paimaiSpringboot/css/common.css" rel="stylesheet" type="text/css" />
<link href="/paimaiSpringboot/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="" title="注销">注销</a></div>
  </div>
  <form action="${pageContext.request.contextPath}/auction/selectAllAuction" method="post">
  <div class="forms">
    <label for="name">名称</label>
    <input type="hidden" name="auction_id" value="">
    <input name="auction_name" type="text" class="nwinput" id="name"/>
    <label for="names">描述</label>
    <input name="auction_desc" type="text" id="names" class="nwinput"/>
    <label for="time">开始时间</label>
    <input name="auction_start_time" type="text" id="time" class="nwinput"/>
    <label for="end-time">结束时间</label>
    <input name="auction_end_time" type="text" id="end-time" class="nwinput" />
    <label for="price">起拍价</label>
    <input name="auction_start_price" type="text" id="price" class="nwinput" />
    <input name="" type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
    
    <a href="${pageContext.request.contextPath}/insertProduct.jsp"><input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb"/></a>
    
  </div>
  </form>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      <c:forEach items="${requestScope.auctionList}" var="auction">
      <ul class="rows">
        <li><a href="国书" title="">${auction.auction_name}</a></li>
        <li class="list-wd">${auction.auction_desc}</li>
        <li><fmt:formatDate value="${auction.auction_start_time}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
        <li><fmt:formatDate value="${auction.auction_end_time}" pattern="yyyy-MM-dd hh:mm:ss"/></li>
        <li>${auction.auction_start_price}</li>
         
        <li class="borderno red">
           <a href="${pageContext.request.contextPath}/selectAll?auction_id=${auction.auction_id}">竞拍</a>
 		 <c:if test="${sessionScope.user.user_is_admin==1}">
		   <a href="${pageContext.request.contextPath}/auction/selectOneAuction?auction_id=${auction.auction_id}" title="修改" onclick="dele();">修改</a>|
          	<a href="${pageContext.request.contextPath}/auction/deleteAuction?auction_id=${auction.auction_id}" title="删除" onclick="abc();">删除</a>
       	</c:if>
        </li>
          
      </ul>
   </c:forEach>
  
  
      <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div>
  </div>
  <script>
   function abc(){
	   
	   if(confirm("你真的确认要删除吗？请确认")){
	    
		   return true;
		 }
		 else{
			 return false;
			 }
			 
	   };
	   function dele(){
		   if(confirm("你真的确认要修改吗？请确认")){
			   return true;
			   }
			   else{
				   return false;
				   }
		   }
  </script>
<!-- main end-->
</div>
</body>
</html>
