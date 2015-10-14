<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>首页</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />
   		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=FZdVNjmzVOWfztIIa8HcdNrd"></script>
		<link rel="stylesheet"
			href="<%=basePath%>resource/foreground/css/mainstyle.css"></link>
		
		<link href="<%=basePath %>BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
				
		<link rel="stylesheet"
			href="<%=basePath%>/resource/foreground/css/bootstrap.min.css">
			<link rel="stylesheet"
	href="<%=basePath%>resource/bootstrap/css/bootstrap-datetimepicker.css">
		<link rel="stylesheet"
			href="<%=basePath%>/resource/foreground/css/mytab.css">

			<link href="<%=basePath %>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
			
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

	</head>
	<body >
		<div id="head">
	
		 <div><input type="hidden" name="flag" id="ssflag" value="<%=sessionValues %>"/></div>  
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
								<li class="active">
									<a href="#">首页</a>
								</li>
								<li>
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
					<li>
					<a id="atCity">您当前所在的城市为：</a>	
					</li>
				</ul>
				<!-- end header navigation right -->
				
				<div id="bdMapBox" style="display:none;"></div>		
				<script type="text/javascript">

					// 百度地图API功能
				
					var map = new BMap.Map("bdMapBox");
				
					var nowCity = new BMap.LocalCity();
				
					nowCity.get(bdGetPosition);
				
					function bdGetPosition(result){
				
						var cityName = result.name; //当前的城市名
				
						/*自定义代码*/
				
						atCity.innerHTML = cityName;
				
						/*自定义代码*/				
					}				
				</script>
				
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- end head -->
<!-- begin mycontent -->
		<div id="mycontent" class="container-fluid">  
		    <!-- begin row -->
		     <div class="row" > 
		       
		          <!-- begin col-md-3 -->
		          <div class="col-md-offset-1 col-md-3" >
		                <div class="panel panel-primary" style="height:auto">
		                     <div class="panel-heading">国内机票查询</div>
	<div class="panel-body">   
	    <form class="form form-horizontal" method="post" action="line!czhb2.action">
	    <div class="form-group">
	              <label class="control-label col-md-4 col-lg-4">航程类型：</label>
	              <div class="col-lg-8">
	                  <input class="group-control" name="linetype" type="radio" checked/>单程
	                   <input class="group-control" name="linetype" type="radio" disabled/>往返
	              </div>
	         </div>
	         <div class="form-group">
	              <label class="control-label col-lg-4">出发城市：</label>
	              <div class="col-lg-8">
	                  <input readonly="readonly" type="text" class="form-control" id="sfz" name="sfz"
						placeholder="请输入出发城市">
	              </div>
	         </div>
	         <div class="form-group">
	              <label class="control-label col-lg-4">到达城市：</label>
	              <div class="col-lg-8">
	                  <input readonly="readonly" type="text" class="form-control" id="ddz" name="ddz"
						placeholder="请输入到达城市">
	              </div>
	         </div>
	         
	         <div class="form-group">
	             <label for="dtp_input1" class="col-md-4 control-label">出发日期：</label>
				<div style="padding-left:15px;" class="input-group date form_datetime col-md-8"
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
	              <div class="col-md-offset-8 col-xs-offset-8" >
	                 <a href="#">高级搜索</a>
	              </div>
	         </div>
	         <div class="form-group col-md-offset-4 col-xs-8 col-xs-offset-4" >
	             <input type="submit" class="btn btn-warning " value="搜索"/>
	         </div>
	       
	    </form>
	
	</div>
	<div class="panel-foot">
	
	</div>
		                </div>
		          </div>
		           <!-- end col-md-3 -->
		           
		           <!-- begin col-md-7 -->
		           <div class="col-md-7">
		           
		                <div id="ad-carousel" class="carousel slide" data-ride="carousel">
    
    <div class="carousel-inner">
        <div class="item active">
            <img src="<%=basePath %>resource/foreground/img/slide/1.jpg" alt="1 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1 id="h1">旧金山</h1>

                    <p>歌神全球巡回演唱会</p>

                    <p><a class="btn btn-lg btn-primary"  id="tz1">点我订票</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="<%=basePath %>resource/foreground/img/slide/2.jpg" alt="2 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>新西兰</h1>

                    <p>参观卡哇伊萌萌哒</p>

                    <p><a class="btn btn-lg btn-primary"  id="tz2">点我订票</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="<%=basePath %>resource/foreground/img/slide/4.jpg" alt="3 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>科技中心</h1>
                    <input type="hidden" value="北京" id="abc1">

                    <p>参观个人技术成果</p>

                    <p><a class="btn btn-lg btn-primary"  id="tz3">点我订票</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="<%=basePath %>resource/foreground/img/slide/5.jpg" alt="4 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>亚马逊森林</h1>
					<input type="hidden" value="南非" id="abc2">
                    <p>带你领略全球最大的森林</p>

                    <p><a class="btn btn-lg btn-primary"  id="tz4">点我订票</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="<%=basePath %>resource/foreground/img/slide/3.jpg" alt="5 slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>香格里拉</h1>
					<input type="hidden" value="云南" id="abc3">
                    <p>邂逅</p>

                    <p><a class="btn btn-lg btn-primary"  id="tz5">点我订票</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#ad-carousel" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>
		                
		           </div>
		           
		           <!-- end col-md-7 -->
		     </div>
		     
		     <!-- end row -->
		    
		
		    
		
		
		</div>
		
		<!-- end mycontent -->
		
		
		<!-- begin new2 -->
	    <div class="container mp30">
			<div class="row">
				<div class="col-md-12 ">
					<div class="panel-group" id="accordion1">
					    
					   
					</div>
				</div>
				
				
			</div>
		</div>
	    
       <!-- end news2-->

		<!-- Footer -->
		<div id="foot" class="container-fluid">
			<div class="col-md-offset-2 col-md-2 col-xs-6">
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
						<a href="/about/thlm/index.html" target="_blank">天合联盟</a>
					</li>
				</ul>
			</div>
			<div class="col-md-2 col-xs-6">
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
			<div class="col-md-2 col-xs-6">
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
			<div class="col-md-2 col-xs-6">
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


		<!-- Javascripts -->
 		
		<script src="<%=basePath %>resource/foreground/js/jquery-1.9.1.min.js"></script>
		<script src="<%=basePath%>resource/foreground/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>before/flight/js/lazyload-min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="<%=basePath%>resource/foreground/js/jquery.fitvids.js"></script>
		<script
			src="<%=basePath%>resource/foreground/js/jquery.sequence-min.js"></script>
		<script src="<%=basePath%>resource/foreground/js/jquery.bxslider.js"></script>
		<script src="<%=basePath%>resource/foreground/js/main-menu.js"></script>
		<script src="<%=basePath%>resource/foreground/js/template.js"></script>
		<script src="<%=basePath%>resource/foreground/js/session.js"></script>
		<script src="<%=basePath%>before/js/f-index.js"></script>
				<script
	src="<%=basePath%>resource/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script
	src="<%=basePath%>resource/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="<%=basePath %>before/user/js/f-index.js"></script>
		<script>
		
		$(function(){
		 var flag=0;
		 var location = (window.location + '').split('/');
		 var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
		 $("#tz1").click(function(){
		   alert(1);
		   //获取当前的日期
			var mydate = new Date();
			   var str = "" + mydate.getFullYear() + "-";
			   str += (mydate.getMonth()+1) + "-";
			   str += mydate.getDate();
			   alert(str);
			//获取终点站			
			var end=$(this).parent().parent().children().eq(0).text();
			alert(end);
			//获得当地地点 
		   	var a=$("#atCity").text().substring(0,2);
		   	alert(a);
		   	//http://localhost:8080/SSHPro/before/flight/search.jsp
			//window.location.href=basePath+"/before/flight/line!czhb1.action&sfz='+a+'&zdz='+end+'&cfrq='+str+'";
			window.location.href=basePath+'line!czhb2.action?sfz='+a+'&ddz='+end+'&cfrq='+str;       
	      })	
	      $("#tz2").click(function(){
		   alert(1);
		   //获取当前的日期
			var mydate = new Date();
			   var str = "" + mydate.getFullYear() + "-";
			   str += (mydate.getMonth()+1) + "-";
			   str += mydate.getDate();
			   alert(str);
			//获取终点站			
			var end=$(this).parent().parent().children().eq(0).text();
			alert(end);
			//获得当地地点 
		   	var a=$("#atCity").text().substring(0,2);
		   	alert(a);
			window.location.href='line!czhb2.action?sfz='+a+'&ddz='+end+'&cfrq='+str;
			       
	      })		
	      $("#tz3").click(function(){
		   alert(1);
		   //获取当前的日期
			var mydate = new Date();
			   var str = "" + mydate.getFullYear() + "-";
			   str += (mydate.getMonth()+1) + "-";
			   str += mydate.getDate();
			   alert(str);
			//获取终点站			
			var end=$(this).parent().parent().children().eq(1).val();
			alert(end);
			//获得当地地点 
		   	var a=$("#atCity").text().substring(0,2);
		   	alert(a);
			window.location.href='line!czhb2.action?sfz='+a+'&ddz='+end+'&cfrq='+str;
			       
	      })		
	      $("#tz4").click(function(){
		   alert(1);
		   //获取当前的日期
			var mydate = new Date();
			   var str = "" + mydate.getFullYear() + "-";
			   str += (mydate.getMonth()+1) + "-";
			   str += mydate.getDate();
			   alert(str);
			//获取终点站			
			var end=$(this).parent().parent().children().eq(1).val();
			alert(end);
			//获得当地地点 
		   	var a=$("#atCity").text().substring(0,2);
		   	alert(a);
			window.location.href='line!czhb2.action?sfz='+a+'&ddz='+end+'&cfrq='+str;
			       
	      })		
	      $("#tz5").click(function(){
		   alert(1);
		   //获取当前的日期
			var mydate = new Date();
			   var str = "" + mydate.getFullYear() + "-";
			   str += (mydate.getMonth()+1) + "-";
			   str += mydate.getDate();
			   alert(str);
			//获取终点站			
			var end=$(this).parent().parent().children().eq(1).val();
			alert(end);
			//获得当地地点 
		   	var a=$("#atCity").text().substring(0,2);
		   	alert(a);
			location.href='line!czhb2.action?sfz='+a+'&ddz='+end+'&cfrq='+str;
			
			       
	      })			
		})
		
		
		</script>
	



	</body>
</html>
