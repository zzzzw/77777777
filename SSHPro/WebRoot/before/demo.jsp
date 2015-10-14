<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
		    
%>

<%
 HttpSession sessions=request.getSession();
 Object sessionValues=sessions.getAttribute("id");
Object sessionaccount=sessions.getAttribute("account");


 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>mPurpose - Multipurpose Feature Rich Bootstrap Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="<%=basePath%>/resource/foreground/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=basePath%>/resource/foreground/css/main.css">
        <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/foreground/css/index.css">
        <script src="<%=basePath%>/resource/foreground/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        

        <!-- Navigation & Logo-->
		
		<div class="menuextras">
		<div class="container">
			<section class="top">
                              服务热线:10086
            	<div><input type="hidden" name="flag" id="ssflag" value="<%=sessionValues %>"/></div>         
			</section>
			</div>
		</div>
		<div class="container">
	<div class="logo-wrapper"><a href="<%=basePath%>/before/f-index.jsp"><img src="<%=basePath%>/resource/foreground/img/mPurpose-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></div>
		</div>
		<div class="mainmenu-wrapper">
			<div class="container">

				<nav id="mainmenu" class="mainmenu">
				<ul>
					
					<li>
						<a href="f-index.jsp">首页</a>
					</li>
					<li>
						<a href="#">预定行程</a>
					</li>
					<li >
						<a href="#">自助服务</a>
					</li>
					<li>
						<a href="#">信息服务</a>
					</li>
					
					<div style="float: right;background-color:#1874CD;padding: 15px; font-size:16px;font-weight:bold;width:150px;" >
					
				<div style="padding-left:25px;">
					<span id="sslogin">
						<a  href="<%=basePath%>/before/user/login.jsp" style="color: white;">登录</a>
					</span>
					<span id="ssaccount">
						<a href="<%=basePath%>/before/user/grxx.jsp" style="color: white;"><%=sessionaccount %></a>
					</span>
						<span style="color: white;">
						|
					</span>
					<span id="sszhuce">
						<a href="<%=basePath%>/before/user/register.jsp" style="color: white;">注册</a>
					</span>
					<span id="ssexit">
						<a href="#" style="color: white;">退出</a>
					</span>
					</div>
						</div>
					
				</ul>
				</nav>
			</div>
		</div>
	
         <div class="container">
    <div style="padding :8px;0px;10px;0px;">当前位置：首页>我的神航>个人中心</div>  
    <div style="position:absolute;">  
       	<ul id="myTab" class="nav" style="background-color:#FBFBFB;width:130px;font-size:16px;text-align:center;">
				<li style="font-weight:bold;font-size:18px;">
					<a href="#" data-toggle="tab" style="padding:20px;0px;20px;0px;"> 我的神航 </a>
				</li>
				<li >
							<a id="wddd" href="#" > 我的订单 </a>
							<div id="wdddlist" style="display: none;">
					<ul style="font-size:12px;padding:10px;0px;10px;0px;" class="sub-menu">
						<li>
							<a href="#"/>机票订单</a>
						</li>
						<li>
							<a href="#"/>酒店订单</a>
						</li>
						<li>
							<a href="#"/>机+酒订单</a>
						</li>
						<li>
							<a href="#"/>选座订单</a>
						</li>
					</ul>
					</div>
				 </li>
						<li class=""  >
							<a href="#service" data-toggle="tab" >我的卡券</a>
						</li>
						<li class=""  >
							<a href="#" data-toggle="tab" >我的足迹</a>
						</li>
						<li class=""  >
							<a href="#" data-toggle="tab" >会员尊享</a>
						</li>
						<li >
							<a id="grzx" href="#" > 个人中心 </a>
							<div id="grzxlist" style="display: none;">
					<ul style="font-size:12px;padding:10px;0px;10px;0px;" class="sub-menu">
						<li>
							<a href="#"/>个人信息</a>
						</li>
						<li>
							<a href="#"/>常用乘机人</a>
						</li>
						<li>
							<a href="#"/>常用联系人</a>
						</li>
					
					</ul>
					</div>
				 </li>
					</ul>
					</div>
         
         
         
       
		<div style="position:relative;left:15%;z-index:100;height:600px;padding-right:250px;">
      
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">
						个人信息
					</h3>
				</div>
				<div class="panel-body" style="height:270px;">
				<div class="center">
					 <!-- 在此添加内容-->
				</div>
					
				</div>
			</div>
			

		</div>
		
		
	
		
		
		
		
		</div>
        
		<!-- Footer -->
	    <footer id="footer">
	<hgroup>
    	<article class="clearfix">
        	<figure>
            	<figcaption>关于神航</figcaption>
                <ul>
                	<li><a href="/about/zjdh/index.html" target="_blank">走进神航</a></li>
                    <li><a href="/about/dhxw/index.html" target="_blank">神航资讯</a></li>
                    <li><a href="http://zhaopin.ceair.com/" target="_blank">神航招聘</a></li>
                    <li><a href="/about/thlm/index.html" target="_blank">天合联盟</a></li>
                    <li><a href="/about/flys/index.html" target="_blank">法律和隐私条款</a></li>
                </ul>
            </figure>
            <figure>
            	<figcaption>互动支持</figcaption>
                <ul>
                    <li><a href="/about/lxwm/index.html" target="_blank">联系我们</a></li>
                    <li><a href="/guide2/hycjwtjd/index.html" target="_blank">常见问题</a></li>
                    <li><a href="/about/yjfk/index.html" target="_blank">意见建议</a></li>
                    <li><a href="/sitemap.html" target="_blank">网站导航</a></li>
                </ul>
            </figure>
            <figure>
            	<figcaption>友情链接</figcaption>
                <ul>
                    <li><a href="http://www.ceairgroup.com" target="_blank">中国神圣航空集团公司</a></li>
                    <li><a href="http://www.shanghai-air.com" target="_blank">上海航空公司</a></li>
                    <li><a href="http://www.flycua.com" target="_blank">中国联航</a></li>
                    <li><a href="http://www.ceholiday.com" target="_blank">神航假期</a></li>
                    <li><a href="http://loyaltymember.ceair.com/mp_static/index.html" target="_blank">东方万里行</a></li>
                </ul>
            </figure>
            <figure>
                <figcaption>关注我们</figcaption>
                <div>
                    <a href="http://t.qq.com/ceairdotcom" target="_blank">神航腾讯微博</a>
                    <a href="http://e.weibo.com/ceairdotcom" target="_blank">神航新浪微博</a>
                    <a href="http://page.renren.com/donghang" target="_blank">神航人人网</a>
                    <a href="http://site.douban.com/ceair/" target="_blank">神航豆瓣</a>
                    <a href="/talent.html" target="_blank">神航达人计划</a>
                </div>
            </figure>
        </article>
        <address>
        	&copy; Copyright 2010 中国神圣航空 <a target="_blank" href="http://www.miibeian.gov.cn">沪ICP备10009470号</a> <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20120628104633144" target="_blank"></a> <a target="_blank" href="http://search.cxwz.org/cert/l/CX20111018000613000621"></a>
        </address>
    </hgroup>
</footer>

        <!-- Javascripts -->

		<script>window.jQuery || document.write('<script src="<%=basePath%>/resource/foreground/js/jquery-1.9.1.min.js"><\/script>')</script>
		<script src="<%=basePath%>/resource/foreground/js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/jquery.fitvids.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/jquery.sequence-min.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/jquery.bxslider.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/main-menu.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/wddh.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/template.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/grxx-update.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/jquery.validate.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/session.js"></script>
		


	</body>
</html>
