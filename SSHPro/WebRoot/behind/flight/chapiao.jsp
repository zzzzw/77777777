<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		
	<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
	<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
	<!--css框架--引入bootstrap-->
	<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.css" rel="stylesheet">	
		
   <script type="text/javascript" src="<%=basePath%>/behind/flight/js/jQuery.js"></script>
   <script type="text/javascript" src="<%=basePath%>/behind/flight/js/lazyload-min.js"></script>
   <script type="text/javascript" src="<%=basePath%>/behind/flight/js/Calendar.js"></script>
    <style type="text/css">
    body{padding:100px;}
    </style>
<!-- 引入自己的js/css -->
<style>
/*标签选择器*/
input[type="text"] {
	width: 60%;
}
</style>		
  </head>  
  <body>
  <form action="line1!czhb.action" method="post">
					<div class="col-md-4">
						<label class="control-label" for="input01">
							出发城市
						</label>
						 <input type="text" readonly="readonly" placeholder="请输入城市名" id="inputTest" name="sfz" class="input-xlarge"/>

					</div>
					<div class="col-md-4">
						<label class="control-label" for="input01">
							到达城市
						</label>
						<input type="text" readonly="readonly" placeholder="请输入城市名" id="inputTest2" class="input-xlarge" name="ddz"/>
				   </div>	
					<div class="col-md-4">
						<label class="control-label" for="input01">
							开始时间 
						</label>
						<input name="cfrq" type="text" id="control_date" size="10" maxlength="10" onClick="new Calendar().show(this);" readonly="readonly" class="input-xlarge" name=""/>
						
						
					</div>
					<div class="col-md-4">
						<input type="submit" value="搜索" class="btn green"/>
					</div>

</form>
    <script type="text/javascript">
        LazyLoad.css(["<%=basePath%>/behind/flight/css/cityStyle.css"], function () {
            LazyLoad.js(["<%=basePath%>/behind/flight/js/cityScript.js"], function () {
                var test = new citySelector.cityInit("inputTest");
                var test2 = new citySelector.cityInit("inputTest2");
            });
        });
        
    </script>   
  </body>
</html>
