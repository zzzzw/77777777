<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		     HttpSession s = request.getSession(); 
		     String orderno=s.getAttribute("ordernum").toString();
		     System.out.println("payment页面的订单编号:"+orderno);
		     if(s.getAttribute("uid")==null)
 {
response.sendRedirect(basePath+"before/user/login.jsp");
 }
String str=(String)request.getAttribute("ydlinemsg");

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
    
    <title>支付订单</title>
    
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=basePath %>BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
	<link href="<%=basePath %>resource/foreground/css/mainstyle.css" rel="stylesheet"/>
	<link href="<%=basePath %>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<script src="<%=basePath%>resource/jquery/jquery-1.11.3.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">
		<script src="<%=basePath%>resource/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>before/order/js/payment.js"></script>
		<script src="<%=basePath%>resource/foreground/js/session.js"></script>
		  <style>
  .paytype{
  border:1px solid #CCCCCC;
  background-color:#FFFFFF;
    margin-left:20px;
  }
  .selected{
  border:1px solid #5AA5F0;
  color:#5AA5F0;
  }
  img{
  float:left;
  width:auto;
  height:auto;
  }
  </style>

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
    	<!-- begin header -->
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
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
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
									<a href="<%=basePath %>before/flight/search.jsp">预订行程</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">自助服务
										<span class="caret"></span>
									</a>
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
    	<!-- end header -->
    	
		<div id="mycontent">  
		<form action="order!ybpayment.action">
		     <div class="container"> 
		         <div class="row" style="background-color:#FBFBFB;padding:20px;margin-top:20px;">
		         
		             <h5 class="col-md-2" id="remaintime">剩余时间:</h5>
		             <h5 class="col-md-offset-7 col-md-3">订单编号：<%=orderno %></h5>
		         </div>
		     </div>
		     <div class="container">
		          <div class="row">
		                <h4>请选择支付方式(目前只支持第三方易宝支付)</h4>
		          </div>
		     </div>
		     <div class="container" style="background-color:#FBFBFB;padding:20px;">

		           <div class="paytype col-md-2" style="height:45px;margin-top:5px;margin-bottom:5px;"  >
		               <img src="<%=basePath %>/before/order/imgs/易宝支付.jpg" alt="..."/>
		                <div style="display:none; float:right;" class="glyphicon glyphicon-ok"></div>
		           </div>
		            <div class="paytype col-md-2" style="height:45px;margin-top:5px;margin-bottom:5px;" >
		               <img src="<%=basePath %>/before/order/imgs/支付宝支付.jpg" alt="..."/>
		                <div style="display:none; float:right;" class="glyphicon glyphicon-ok"></div>
		           </div>
		            <div class="paytype col-md-2" style="height:45px;margin-top:5px;margin-bottom:5px;" >
		               <img src="<%=basePath %>/before/order/imgs/财付通支付.jpg" alt="..."/>
		                <div style="display:none; float:right;" class="glyphicon glyphicon-ok"></div>
		           </div>
		    </div>
		    
		     <div class="container">
		          <div class="row">
		                <h4>填写支付信息</h4>
		          </div>
		      </div>
		      <div class="container" style="border:2px solid red;padding:20px;padding-bottom:40px;">
		           <div >
		           支付方式：
		           </div>
		             <div class="col-md-2" id="selecttype" >
		               <img style="height:45px;" src="<%=basePath %>/before/order/imgs/易宝支付.jpg" alt="..."/>
		                <div style="display:none; float:right;" class="glyphicon glyphicon-ok"></div>
		           </div>
		      </div>
		      
		      <div style="padding-top:30px;" >
		           <div class="col-md-offset-5 col-md-2">
		                 <h4>订单总额：<span style="color:#FF6600"><s:property value="allprice"/></span></h4>
		                 <input type="hidden" name="ordernum" value="<%=orderno %>" />
		                 <input type="hidden" name="allprice" value="<s:property value="allprice"/>"/>
		                 <input type="hidden" name="paytype"/>
		           </div>
		           <div class="col-md-2">
		                <input type="submit" id="pay" class="btn btn-warning" value="确认支付"/>
		           </div>		         
		      </div>
		     </form>
		</div>
		
<!--  -->
		<div id="foot" class="container-fluid">
			<div class="col-md-offset-2  col-lg-offset-2 col-md-2 col-lg-2 col-xs-6">
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
