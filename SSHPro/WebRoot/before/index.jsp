<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script language="javascript"
	src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="<%=basePath %>/resource/css/main.css" rel="stylesheet"/>
<script type="text/javascript"
	src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
	

<style>
body {
	padding-top: 50px;
}

.carousel {
	height: 600px;
	background-color: #000;
}

.carousel .item {
	height: 600px;
	background-color: #000;
}

.carousel img {
	width: 100%
}

.carousel-caption p {
	font-size: 20px;
	line-height: 1.8;
}
.carousel-caption{
   padding-left:400px;
}
</style>

</head>

<body>
	 <div id="header">
		<div class="navbar navbar-inverse navbar-default navbar-fixed-top"
			role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle Navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="##" class="navbar-brand">中国东方航空</a>
			</div>
			<div
				class="collapse navbar-inverse navbar-collapse navbar-responsive-collapse ">
				<ul class="nav navbar-nav">
					<li class="active"><a href="##">首页</a></li>
					<li><a href="<%=basePath %>/before/flight/search.jsp">预定行程</a></li>
					<li><a href="##">自主服务</a></li>
					<li><a href="##">信息服务</a></li>
					<li><a href="##">关于我们</a></li>
				</ul>
			</div>
		</div>
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" style="position:relative" id="carouselInner" role="listbox">
			<!--<div id="selectbox" >
			<form >
			 <div class="form-group">
			    <label for="inputEmail3" class="col-sm-4 control-label">出发地：</label>
			    <div class="col-sm-12">
			      <input type="email" class="form-control" id="inputEmail3">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-4 control-label">到达地：</label>
			    <div class="col-sm-12">
			      <input type="email" class="form-control" id="inputEmail3">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-4 control-label">出发时间：</label>
			    <div class="col-sm-12">
			      <input type="email" class="form-control" id="inputEmail3">
			    </div>
			  </div>
			  <div class="form-group">
			  <a href="#" class="btn btn-success col-md-offset-2">查询</a>
			  </div>
 			</form>
			
			</div>  -->
				<div class="item active">
					<img src="<%=basePath%>/img/2.jpg" alt="...">
					<div class="carousel-caption">					   
						<h1>印度洋魔幻海岸线</h1>
						<p>上海至马尔代夫</p>
						<p>往返1800（含税）</p>
						<a href="order/p1.jsp" class="btn btn-warning">点我订票</a>
					</div>
				</div>
				<div class="item">
					<img src="<%=basePath%>/img/1.jpg" alt="...">
					
					   
					   
					<div class="carousel-caption">
						<h1>上海至马尔代夫</h1>
						<p>魔幻海岸线往返1800（含税）</p>
						<a href="order/p1.jsp" class="btn btn-warning">订票</a>
					</div>
				</div>
				<div class="item">
					<img src="<%=basePath%>/img/3.jpg" alt="...">
					
					   
					  
					<div class="carousel-caption">
						<h1>上海至马尔代夫</h1>
						<p>魔幻海岸线往返1800（含税）</p>
						<a href="order/p1.jsp" class="btn btn-warning">订票</a>
					</div>
				</div>
				<div class="item">
					<img src="<%=basePath%>/img/4.jpg" alt="...">
					
					   
					   
					<div class="carousel-caption">
					
						<h1>上海至马尔代夫</h1>
						<p>魔幻海岸线往返1800（含税）</p>
						<a href="order/p1.jsp" class="btn btn-warning">订票</a>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only"> Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only"> Next</span>
			</a>
		</div>
	</div>
	<div id="content">
	</div>
	<div id="foot"></div>
		
</body>
</html>
