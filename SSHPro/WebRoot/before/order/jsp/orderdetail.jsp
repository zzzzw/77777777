<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>
<%
    HttpSession sessions = request.getSession();

			Object sessionValues = sessions.getAttribute("uid");//ssflag
			Object sessionaccount = sessions.getAttribute("account");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'orderdetail.jsp' starting page</title>
		<meta
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
			name="viewport" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link href="<%=basePath%>BacksAdmin/assets/css/style.min.css"
			rel="stylesheet" />
		<link href="<%=basePath%>resource/foreground/css/mainstyle.css"
			rel="stylesheet" />
		<link
			href="<%=basePath%>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css"
			rel="stylesheet" />
		<script src="<%=basePath%>resource/jquery/jquery-1.11.3.min.js"></script>
		<link href="<%=basePath%>resource/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">
		<script src="<%=basePath%>resource/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>before/order/js/orderdetail.js"></script>
		<script src="<%=basePath%>resource/foreground/js/session.js"></script>

	</head>
<style>
			 body {
            padding-top: 20px;
            padding-bottom: 40px;
            color: #5a5a5a;
          background-color: #fff;
        }
			
			.carousel .item img {
			height:367px;
            width: 100%;
        }
         .carousel {
            height: 367px;
            margin-bottom: 60px;
        }
        .navbar.navbar-inverse {
    background: #96C4EC!important;
}

.navbar-inverse {
    background-color: #222!important;
    border-color: #96C4EC!important;
}

.navbar.navbar-inverse .navbar-brand, .navbar.navbar-inverse .navbar-nav>li>a {
    color: #FFFFFF!important;
    font-weight: bold!important;
}
.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus {
    color: #fff;
    background-color: #5D9AF3;
}
        
        
			
			</style>
	<body>
		<div id="head">
			<div class="row" style="font-size:14px;border-bottom:solid 1px;border-color:#F1F1F1">
		<span class="col-lg-1"></span>
		<span class="col-lg-2" style="margin-bottom:4px;margin-top:-16px">服务热线：10086</span>
		<span class="col-lg-4"></span>	
		<span class="col-lg-4" style="margin-bottom:4px;margin-top:-16px">
		<ul>
		<li style="float: right;">&nbsp;特色产品&nbsp;</li>
		<li style="float: right;">&nbsp;友情链接&nbsp;|</li>
		<li style="float: right;">&nbsp;微信&nbsp;|</li>
		<li style="float: right;">&nbsp;微博&nbsp;|</li>
		
		
		</ul>
		</span>	
		</div>
<div class="row">
				<div class="col-md-offset-1 col-md-3">
				<img src="<%=basePath%>resource/foreground/img/logos/sshk.jpg"
							>
					<a href="<%=basePath%>/before/f-index.jsp"><img
							src="<%=basePath%>resource/foreground/img/mPurpose-logo.png"
							alt="Multipurpose Twitter Bootstrap Template">
					</a>
				</div>
				
			</div>
			<div style="width: 100%">
				<div class="navbar navbar-inverse" role="navigation" id="menu-nav">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">切换导航</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>

						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li >
									<a href="<%=basePath %>before/f-index.jsp">首页</a>
								</li>
								<li class="active">
									<a href="<%=basePath%>before/flight/search.jsp">预订行程</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">自助服务
										<span class="caret"></span> </a>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="#feature-tab" data-tab="tab-chrome">Chrome</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-firefox">Firefox</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-safari">Safari</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-opera">Opera</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-ie">IE</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" data-toggle="modal" data-target="#about-modal">信息服务</a>
								</li>

							</ul>
							<ul class="nav navbar-nav navbar-right">
					<li id="sslogin" >
				
						<a  href="<%=basePath%>/before/user/login.jsp" style="color: white;">登录</a>
				
					</li>
					<li id="sszhuce" >
					
						<a href="<%=basePath%>/before/user/register.jsp" style="color: white;">注册</a>
				
					</li>
					<li id="loginstate2" class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<%=basePath %>BacksAdmin/assets/img/user-13.jpg" alt="" /> 
							<span class="hidden-xs"><%=sessionaccount %></span> <b class="caret"></b>
						</a>
						<div><input type="hidden" name="flag" id="ssflag" value="<%=sessionValues %>"/></div> 
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="<%=basePath %>before/order/jsp/myorder.jsp">我的订单</a></li>
							<li><a href="<%=basePath %>before/user/grxx.jsp;">个人中心</a></li>
							<li class="divider"><br></li>
							<li id="ssexit"><a href="javascript:;">退出</a></li>
						</ul>
					</li>
					
				</ul>
							<!-- end header navigation right -->

						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- begin mycontent -->
		<div id="mycontent">
			<input name="ordernum" type="hidden"
				value="<%=request.getParameter("ordernum")%>" />
			<div class="container">
				<div class="row">
					<h4 style="float:left;">
						订单信息
					</h4>
					<div style="float:right;">
					    <a href="<%=basePath %>before/order/jsp/myorder.jsp">返回订单列表</a>
					</div>
				</div>
				<s:iterator value="ordermsg" var="order">
				    <div class="row" style="background-color: #FBFBFB; padding: 20px;">
					<div class="row">
						<h5 class="col-lg-1">
							订单编号:
						</h5>
						<h5 class="col-lg-4" style="color: #5aa5f0;"><%=request.getParameter("ordernum")%></h5>
					</div>
					<div class="row">
						<h5 class="col-lg-1">
							订单类型:
						</h5>
						<h5 class="col-lg-4" style="color: #5aa5f0;">
							国内直达
						</h5>
						<h5 class="col-lg-2" id="orderstatus">
							<input type="hidden" name="orderstatus" value="<s:property value="#order[1]"/>"/>
						</h5>
						<h5 class="col-lg-1">
							总价：
						</h5>
						<h5 class="col-lg-1 control-label" style="color: #ff6600;">
							<b><s:property value="#order[2]"/></b>
						</h5>
						<div id="ordercontrol"><!--
						    <div class="col-lg-1">
						      <button class="btn btn-default " class="orderrefund" >退票</button>
						      </div>
						      <div class="col-lg-1">
						      <button class="btn btn-info" class="orderchange" >改签</button>
						      </div>
						--></div>
					</div>
				</div>				
				</s:iterator>
				

				<div class="row">
					<h4>
						联系人信息
					</h4>
				</div>
				<div class="row" style="background-color: #FBFBFB; padding: 20px;">
					<div class="row">
						<h5 class="col-lg-1">
							联系人姓名:
						</h5>
						<h5 class="col-lg-4">
							吴振廷
						</h5>
					</div>
					<div class="row">
						<h5 class="col-lg-1">
							手机号码:
						</h5>
						<h5 class="col-lg-4">
							15766228255
						</h5>
					</div>
					<div class="row">
						<h5 class="col-lg-1">
							电子邮箱:
						</h5>
						<h5 class="col-lg-4"></h5>
					</div>
				</div>

				<div class="row">
					<h4>
						乘机人信息
					</h4>
				</div>
				<div class="row">
					<ul id="myTab" class="nav nav-tabs" role="tablist"
						style="border: 1px solid #FBFBFB; background-color: #96d2ff;">
						<!--<li class="active">
							<a href="#wzt" role="tab" data-toggle="tab">吴振廷</a>
						</li>
						<li>
							<a href="#zzw" role="tab" data-toggle="tab">曾志伟</a>
						</li>
					--></ul>

					<div id="myTabContent" class="tab-content"
						style="border: 1px solid #FBFBFB;">
						<!--<div class="tab-pane active" id="wzt">
							<div class="row">
								<h5 class="col-lg-2">
									证件类型:
								</h5>
								<h5 class="col-lg-4">
									身份证
								</h5>
								<h5 class="col-lg-2">
									个人总价:
								</h5>
								<h5 class="col-lg-4">
									<b style="color: #ff6600;">￥1040</b>
								</h5>

							</div>
							<div class="row">
								<h5 class="col-lg-2">
									证件号码:
								</h5>
								<h5 class="col-lg-4">
									440882199303031578
								</h5>
								<h5 class="col-lg-2">
									票价:
								</h5>
								<h5 class="col-lg-4">
									￥970
								</h5>

							</div>
							<div class="row">
								<h5 class="col-lg-2">
									保险:
								</h5>
								<h5 class="col-lg-4">
									￥ 20
								</h5>
								<h5 class="col-lg-2">
									税费:
								</h5>
								<h5 class="col-lg-4">
									￥ 50
								</h5>

							</div>
						</div>
						-->
						<!--<div class="tab-pane" id="zzw">
							<div class="row">
								<h5 class="col-lg-2">
									证件类型:
								</h5>
								<h5 class="col-lg-4">
									身份证
								</h5>
								<h5 class="col-lg-2">
									个人总价:
								</h5>
								<h5 class="col-lg-4">
									<b style="color: #ff6600;">￥1040</b>
								</h5>

							</div>
							<div class="row">
								<h5 class="col-lg-2">
									证件号码:
								</h5>
								<h5 class="col-lg-4">
									440882199303031111
								</h5>
								<h5 class="col-lg-2">
									票价:
								</h5>
								<h5 class="col-lg-4">
									￥970
								</h5>

							</div>
							<div class="row">
								<h5 class="col-lg-2">
									保险:
								</h5>
								<h5 class="col-lg-4">
									￥ 20
								</h5>
								<h5 class="col-lg-2">
									税费:
								</h5>
								<h5 class="col-lg-4">
									￥ 50
								</h5>

							</div>
						</div>

					--></div>
				</div>

				<div class="row">
					<h4>
						航班信息
					</h4>
				</div>
			<s:iterator value="ydlinelist" var="list">
					<div class="row form-group"
						style="background-color: #FBFBFB; padding: 20px;">
						<div class="col-md-4" style="text-align:center;">
							<s:property value="#list[0]" />
							<s:property value="#list[1]" />
						</div>
						<input type="hidden" name="entity.id"
							value="<s:property value="#list[9]"/>" /><!-- 线路id -->
						<input type="hidden" name="entity.planedate"
							value="<s:property value="#list[6]"/>" />
							<input type="hidden" name="seattype"
							value="<s:property value="seattype"/>" />
							<input type="hidden" name="entity.linename"
							value="<s:property value="#list[1]"/>" />
						<div class=" col-md-2 col-xs-4">
							<s:property value="#list[2]" />
							<br>
							<s:property value="#list[4]" />
							<br>
							<s:property value="#list[6]" />
							<br>
							<span style="color: #5AA5F0;"><s:property value="#list[7]" />
							</span>
						</div>
						<div class="col-md-2 col-xs-4">
							---直达---
						</div>
						<div class="col-md-2 col-xs-4">
							<s:property value="#list[3]" />
							<br>
							<s:property value="#list[5]" />
							<br />
							<s:property value="#list[6]" />
							<br>
							<span style="color: #5AA5F0;"><s:property value="#list[8]" />
							</span>
						</div>
						<div class="col-md-2 col-xs-6">
							<a class="btn btn-default">退改签细则</a>
						</div>
					</div>
				</s:iterator>

			</div>
		</div>
		<!-- end mycontent -->
		<!-- begin foot -->
		<!-- Footer -->
		<div id="foot" class="container-fluid">
			<div
				class="col-md-offset-2  col-lg-offset-2 col-md-2 col-lg-2 col-xs-6">
				<h4>
					关于神航
				</h4>
				<ul>
					<li>
						<a href="/about/zjdh/index.html" target="_blank">走进神航</a>
					</li>
					<li>
						<a href="/about/dhxw/index.html" target="_blank">神航资讯</a>
					</li>
					<li>
						<a href="http://zhaopin.ceair.com/" target="_blank">神航招聘</a>
					</li>
					<li>
						<a href="/about/flys/index.html" target="_blank">法律和隐私条款</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-2 col-xs-6">
				<h4>
					互动支持
				</h4>
				<ul>
					<li>
						<a href="/about/lxwm/index.html" target="_blank">联系我们</a>
					</li>
					<li>
						<a href="/guide2/hycjwtjd/index.html" target="_blank">常见问题</a>
					</li>
					<li>
						<a href="/about/yjfk/index.html" target="_blank">意见建议</a>
					</li>
					<li>
						<a href="/sitemap.html" target="_blank">网站导航</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-2 col-xs-6">
				<h4>
					友情链接
				</h4>
				<ul>
					<li>
						<a href="http://www.ceairgroup.com" target="_blank">中国神圣航空集团公司</a>
					</li>
					<li>
						<a href="http://www.shanghai-air.com" target="_blank">上海航空公司</a>
					</li>
					<li>
						<a href="http://www.flycua.com" target="_blank">中国联航</a>
					</li>
					<li>
						<a href="http://www.ceholiday.com" target="_blank">神航假期</a>
					</li>
					<li>
						<a href="http://loyaltymember.ceair.com/mp_static/index.html"
							target="_blank">东方万里行</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-2 col-xs-6">
				<h4>
					关注我们
				</h4>
				<ul>
					<li>
						<a href="http://t.qq.com/ceairdotcom" target="_blank">神航腾讯微博</a>
					</li>
					<li>
						<a href="http://e.weibo.com/ceairdotcom" target="_blank">神航新浪微博</a>
					</li>
					<li>
						<a href="http://page.renren.com/donghang" target="_blank">神航人人网</a>
					</li>
					<li>
						<a href="http://site.douban.com/ceair/" target="_blank">神航豆瓣</a>
					</li>
					<li>
						<a href="/talent.html" target="_blank">神航达人计划</a>
					</li>

				</ul>

			</div>

		</div>
	</body>
</html>
