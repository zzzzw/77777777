<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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

<title>EasternAir</title>
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
<script src="<%=basePath%>resource/jquery/jquery-1.11.3.min.js"></script>
<!--css框架--引入bootstrap-->
<script src="<%=basePath%>resource/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>before/flight/js/lazyload-min.js"></script>
<link href="<%=basePath %>BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
<link href="<%=basePath%>resource/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=basePath%>resource/bootstrap/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" href="<%=basePath%>before/flight/css/search.css">
<link href="<%=basePath %>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="<%=basePath %>resource/foreground/css/mainstyle.css" rel="stylesheet"/>
<script
	src="<%=basePath%>resource/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script
	src="<%=basePath%>resource/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="<%=basePath%>resource/foreground/js/session.js"></script>

<script type="text/javascript" src="<%=basePath %>before/flight/js/search.js"></script>
<script> </script>
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
     <!-- begin head -->
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
							<li class="divider"></li>
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
		<!-- end head -->
		<!-- begin mycontent -->
	<div id="mycontent" class="container">
		<h3 class="text-right">客服热线：15766xxxxxx</h3>

		<form class="form-horizontal" id="search_form" role="form" action="##" method="post">

			<div class="form-group">
				<label for="sfz" class="col-sm-2 control-label"> 始发站： </label>
				<div class="col-sm-10">
					<input readonly="readonly" type="text" class="form-control" id="sfz" name="sfz"
						placeholder="请输入始发站">
				</div>
			</div>
			<div class="form-group">
				<label for="ddz" class="col-sm-2 control-label"> 到达站： </label>
				<div class="col-sm-10">
					<input readonly="readonly" type="text" class="form-control" id="ddz" name="ddz"
						placeholder="请输入到达站">
				</div>
			</div>
			<div class="form-group">
				<label for="dtp_input1" class="col-md-2 control-label">出发日期：</label>
				<div style="padding-left:15px;" class="input-group date form_datetime col-md-5"
				 data-data-format="yyyy-MM-dd"
					data-link-field="dtp_input1">
					<input id="cfrq" class="form-control" name="cfrq" size="16" type="text"
						 readonly> <span class="input-group-addon"><span
						class="glyphicon glyphicon-remove"></span></span> <span
						class="input-group-addon"><span
						class="glyphicon glyphicon-calendar"></span></span>
				</div>
				<input type="hidden" id="dtp_input1" value="" /><br />
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" id="search" class="btn btn-primary btn-lg" value="查询" >
				</div>
			</div>
		</form>

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th colspan=2></th>
						<th>头等舱</th>
						<th>商务舱</th>
						<th>经济舱</th>
						<th>超值特惠</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="searchhb">
				<s:iterator value="hblist" var="line">
				       <tr>
						<td>
							<div class='name'>

		       <img style="height:32px;width:34px;" src="<%=basePath %>before/flight/img/<s:property value="#line[16]"/>" alt='...'>
		       <s:property value="#line[0]"/>
		       <s:property value="#line[1]"/>
		       </div>
		       <s:property value="#line[3]"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		       <s:property value="#line[5]"/><br>
		       <s:property value="#line[2]"/>--直达--
		       <s:property value="#line[4]"/>
						</td>
						<td  class="lineinfo">详<br>情<br>
						<div style="padding-top:10px" class="glyphicon glyphicon-plus"></div>
						</td>
						<td><input type="radio" name="seatnum" value="tdc"><s:property value="#line[6]"/>RMB
						 <div >剩余：<b class="seatnum"><s:property value="#line[7]"/></b>张</div>
						</td>
						<td><input type="radio" name="seatnum" value="swc"><s:property value="#line[8]"/>RMB
						 <div >剩余：<b class="seatnum"><s:property value="#line[9]"/></b>张</div></td>
						<td><input type="radio" name="seatnum" value="jjc"><s:property value="#line[10]"/>RMB
						 <div >剩余：<b class="seatnum"><s:property value="#line[11]"/></b>张</div></td>
						<td><input type="radio" name="seatnum" value="thc"><s:property value="#line[12]"/>RMB
						 <div >剩余：<b class="seatnum"><s:property value="#line[13]"/></b>张</div></td>
						<td><a id="<s:property value="#line[15]"/>" href="javascript:;" class="btn btn-warning ydjp">预定</a></td>
					</tr>
					<tr class="detailmsg" style="display:none">
					<td>出发<span id="st"> <s:property value="#line[3]"/></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<s:property value="#line[2]"/>
					<br>
					到达<span id="et"> <s:property value="#line[5]"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#line[4]"/>
					<br>行程时间：<span id="xcsj"></span>
					</td>
					<td colspan=6>
					<s:property value="#line[0]"/>
					<s:property value="#line[1]"/>
					<div>机型:
					<s:property value="#line[14]"/></div>
					</td>
					</tr> 				
				</s:iterator>
					
					
				</tbody>
			</table>
		</div>
		</div>
		<!-- end mycontent -->
		
		<!-- Footer -->
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
