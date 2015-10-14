<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
		     HttpSession s = request.getSession(); 
		     if(s.getAttribute("uid")==null)
 {
response.sendRedirect(basePath+"before/user/login.jsp");
 }
 System.out.print("ckilist的大小"+((ArrayList)request.getAttribute("cklist")).size());
if(request.getAttribute("ydlinelist")==null)
 {
 response.sendRedirect(basePath+"before/order/selectpass.jsp");
 }
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

		<title>确认订单</title>
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
		<script src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css"
			rel="stylesheet">
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>resource/foreground/js/session.js"></script>
<script>
$(function(){
$(".ckmsg").each(function(index,value){
    $(value).children("div").eq(0).children("h2").text(index+1);
})
var singleprice;
var suifei;
var baoxianfei;
var zj;
var zsf;
var zbxf;
singleprice=$("#singleprice").attr("value");
suifei=$("#suifei").attr("value");
baoxianfei=$("#baoxianfei").attr("value");
var num=$(".ckmsg").length;
zj=sumprice(singleprice,num);
zsf=sumprice(suifei,num);
zbxf=sumprice(baoxianfei,num);
var allprice=zj+zsf+zbxf;
$("#zj").children("label").eq(0).text(zj);
$("#sf").children("label").eq(0).text(zsf);
$("#bxf").children("label").eq(0).text(zbxf);
$("#allprice").children("label").eq(0).text(allprice);
$("#allprice").children("input").eq(0).attr("value",allprice);
$("#backedit").click(function(){
   var lid= $("input[name='entity.id']").val();
   var seattype= $("input[name='seattype']").val();
   location.href='line!ydjp.action?entity.id='+lid+'&seattype='+seattype;
})
})
function sumprice(singleprice,num){
    var sum=singleprice*num;
    return sum;
}

</script>
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
									<a href="<%=basePath %>before/user/f-index.jsp">首页</a>
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
		<form action="tokenorder!qrscdd.action" method="post">
		<s:token/>
		<div id="mycontent" class="container">
			<div id="planemsg" class="container">
				<div class="row">
					<h4>
						订单信息
					</h4>
				</div>
				<s:iterator value="ydlinelist" var="list">
					<div class="row form-group"
						style="background-color: #FBFBFB; padding: 20px;">
						<div class="col-md-2">
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
						<div style="float: right" class="col-md-2 col-xs-6">
							<a href="<%=basePath %>before/flight/search.jsp" class="btn btn-primary  btn-md">
								<span class="glyphicon glyphicon-plane"></span>重新查询航班
							</a>
						</div>
					</div>
				</s:iterator>
			</div>


			<div class="row">
				<h4>
					&nbsp&nbsp&nbsp&nbsp乘机人预订详情
				</h4>
			</div>
			<div id="ckmsg" class="container" style="background-color: #FBFBFB;">

				<s:iterator value="cklist" var="ck">

					<div class="ckmsg"
						style="height: auto; background-color: #FBFBFB; border-bottom: 1px solid #f1f1f1;">
						<div class="form-group">
							<h2
								style="color: #96D2FF; float: left; float: right; margin-top: -22px;">
								1
							</h2>
							<!-- 乘机人id -->
							<input type="hidden" name="pidcard" value="<s:property value="#ck[2]"/>"/>
						</div>
						<div style="margin-top: 25px;" class="form-group">
							<span class=" col-md-offset-1 col-md-2 col-xs-5">乘机人姓名：</span>
							<span class=" col-md-2 col-xs-6"><s:property
									value="#ck[0]" />
							</span>
							<span class=" col-md-offset-2 col-md-2 col-xs-5">证件号码：</span>
							<span class="col-md-2 col-xs-6"><s:property value="#ck[2]" />
							</span>
						</div>
						<div style="padding-top: 25px; padding-bottom: 20px;"
							class="form-group">
							<span class=" col-md-offset-1 col-md-2 col-xs-5">手机号码：</span>
							<span class=" col-md-2 col-xs-6"><s:property
									value="#ck[1]" />
							</span>
						</div>
						<div style="border-top: 1px solid #F1F1F1; padding: 10px;"
							class="form-group">
							<label class="control-label col-md-offset-1 col-md-2">
								票价：￥
								<s:property value="orderprice" />
							</label>							
							<label class="control-label col-md-offset-1 col-md-2">
								税费：￥50
							</label>
							<label class="control-label col-md-offset-1 col-md-3">
								保险：航空综合险升级版￥20
							</label>							
						</div>
					</div>

				</s:iterator>
				<!-- 单价 -->
				<input type="hidden" id="singleprice" name="sigleprice" value="<s:property value="orderprice"/>"/>
				<!-- 税费 -->
				<input type="hidden" id="suifei" name="suifei" value="50"/>
				<!-- 保险费 -->
				<input type="hidden" id="baoxianfei" name="baoxianfei" value="20"/>
			</div>
				<div class="row">
					<h4>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp联系人信息
					</h4>
				</div>
				<div class="container" style="background-color: #fbfbfb;padding:20px;">
					<div class="row form-group">
						<span class="col-md-offset-1 col-md-2">联系人姓名：</span>
						<span class="col-md-2"><s:property value="cntName"/></span>
						<input type="hidden" value="<s:property value="cntName"/>" name="cntName"/>
					</div>
					<div class="row form-group">
						<span class="col-md-offset-1 col-md-2">移动电话：</span>
						<span class="col-md-2"><s:property value="cntPhone"/></span>
						<input type="hidden" value="<s:property value="cntPhone"/>" name="cntPhone"/>
					</div>
				</div>
				<div class="row">
				     <h4>
				        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp价格明细
				     </h4>
				</div>
				<div class="col-md-6" style="background-color: #fbfbfb;padding:20px;">
					<div class="row form-group" id="zj">
						<span class="col-md-offset-1 col-md-4">票价：</span>
						<label class="col-md-1">￥1400</label>
					</div>
					<div class="row form-group" id="sf">
						<span class="col-md-offset-1 col-md-4">税费：</span>
						<label class="col-md-1">￥100</label>
					</div>
					<div class="row form-group" id="bxf">
						<span class="col-md-offset-1 col-md-4">航空综合险升级版：</span>
						<label class="col-md-1">￥40</label>
					</div>
					
				</div>
				<div  class="col-md-6">
					<div class="row form-group" style="font-size:20px;" id="allprice">
						<span class="col-md-offset-1 col-md-4">订单总金额：</span>
						<label style="color:#F0AD4E;text-decoration:underline;"; class="col-md-1">
						￥1540</label>
						<!-- 总价 -->
						<input type="hidden" name="allprice" value=""/>
					</div>
				     <input type="submit" class="btn btn-warning col-lg-5" value="下一步,去支付">
				     <a id="backedit" class="btn btn-danger col-lg-offset-1 col-lg-5" href="javascript:;">返回修改</a>
				</div>
			

		</div>
		</form>
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
