<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
		<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		
  </head>
  
  <body>
  <div class="container">
       <div class="row">
       	  <br><br>
       </div>
       <div class="row">
       	<div class="col-md-6 col-md-offset-3">
       	   <div class="panel panel-success" style="width: 75%;height: 75%">
       	   <div class="panel-heading"><span>Fusce aliquet ac quam at tincidunt</span></div>
       	    <div class="panel-body" style="height:80% ">
       	    	<h6 class="text-center">2015-9-18</h6>&nbsp;&nbsp;<h6 class="text-right">点击量：1000</h6>
    			<p>&nbsp;&nbsp;&nbsp;&nbsp;Fusce eu rutrum nisi, ut pretium mi. Sed mollis nisi sed auctor molestie. Vestibulum dictum pharetra leo sed </p>
    			
    			
    			
    			
    			<div align="center"><a href="<%=path%>/news!queryall.action" class="btn btn-success btn-sm" >返回</a></div>
    			
           </div>
		</div>
			
       	</div>

       </div>
  	


  </div>
  </body>
</html>
