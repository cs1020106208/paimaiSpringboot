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
	function startPrice(){
	
			var i=$("#start_Price").val();
			if(i>0){
				$("#startPriceDiv").html("正确");
				return true;
			}else{
			
				$("#startPriceDiv").html("必须为数字且不能为空");
				return false;
			}
	}
		function endPrice(){

			var i= $("#end_Price").val();
			if(i>0){
				$("#endPriceDiv").html("正确");
					return true;
			}else{
				$("#endPriceDiv").html("必须为数字且不能为空");	
				return false;
			}
		}
		function startTime(){
		
		 	var i=$("#start_Time").val();
		 	
 	    var reg=/^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/;
		 	if(reg.test(i)){
		 	$("#startTimeDiv").html("格式正确")
		 		return true
		 	}else{
		 	 	$("#startTimeDiv").html("错误格式，应填为：2010-05-05 12:30:00")
		 		return false;
		 	}
		}
		
		function endTime(){
		
		 	var i=$("#end_Time").val();
		 	
/* 		 	var reg=/^\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}&/;
 */		 	
 	    var reg=/^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/;
 				if(reg.test(i)){
		 	$("#endTimeDiv").html("格式正确")
		 		return true
		 	}else{
		 	 	$("#endTimeDiv").html("错误格式，应填为：2010-05-05 12:30:00")
		 		return false;
		 	}
		}
		
		function form(){
		if(startPrice()&&endPrice()&&startTime()&&endTime()){
		return true;
		}else{
		return false;
		}
			
		}
	</script>
<body>
<form action="${pageContext.request.contextPath}/auction/insertAuction" method="post" enctype="multipart/form-data" onsubmit="return form()">
<div class="wrap">
  <!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
          <dl>
            <dd >
              <label>名称：</label>
              <input type="text" class="inputh lf" name="auction_name" />
              <div class="xzkbg spbg lf"></div>
            </dd>
            <dd>
              <label>起拍价：</label>
              <input type="text" class="inputh lf" name="auction_start_price" id="start_Price" onblur="startPrice()"/>
              <div class="lf red laba"  id="startPriceDiv"></div>
            </dd>
            <dd>
              <label>底价：</label>
              <input type="text" class="inputh lf" name="auction_upset" id="end_Price" onblur="endPrice()"/>
              <div class="lf red laba" id="endPriceDiv"></div>
            </dd>
            <dd>
              <label>开始时间：</label>
            <input type="text" class="inputh lf" name="auction_start_time" id="start_Time" onblur="startTime()" />
              <div class="lf red laba" id="startTimeDiv"></div>
            </dd>
            <dd>
              <label>结束时间：</label>
	           <input type="text" class="inputh lf" name="auction_end_time" id="end_Time" onblur="endTime()"/>
              <div class="lf red laba" id="endTimeDiv"></div>
            </dd>
            <dd class="dds">
              <label>拍卖品图片：</label>
               <div class="lf salebd"><a href="${pageContext.request.contextPath}/upload">
<!--                <img src="images/ad20.jpg" width="100" height="100" /></a></div>
 -->               <img src="${pageContext.request.contextPath}/images/${auction.auction_pic}" width="100" height="100" /></a></div>
 					<input name="tupian" type="file" class="offset10 lf" />
             
            </dd>
             <dd class="dds">
              <label>描述：</label>
              <textarea name="auction_desc" cols="" rows="" class="textarea"></textarea>
            </dd>
            <dd class="hegas">
                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
                <input name="" type="button" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" />
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
