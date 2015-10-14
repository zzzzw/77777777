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
   
    
    <title>登录页面</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="<%=basePath%>BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="<%=basePath%>BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=basePath%>BacksAdmin/assets/css/animate.min.css" rel="stylesheet" />
	<link href="<%=basePath%>BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
	<link href="<%=basePath%>BacksAdmin/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="<%=basePath%>BacksAdmin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
</head>

<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<div class="login-cover">
	    <div class="login-cover-image"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg5.jpg" data-id="login-cover-image" alt="" /></div>
	    <div class="login-cover-bg"></div>
	</div>
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin login -->
        <div class="login login-v2" data-pageload-addclass="animated flipInX">
            <!-- begin brand -->
            <div class="login-header">
                <div class="brand">
                    <span class="logo"></span> 神圣航空
                    <small>每一架飞机都是纸飞机...</small>
                </div>
                <div class="icon">
                    <i class="fa fa-sign-in"></i>
                </div>
            </div>
            <!-- end brand -->
           



					


            
            <div class="login-content">
            <ul id="myTab" class="nav nav-tabs  nav-justified">
						<li class=" left active">
							<a href="#huiyuan" data-toggle="tab"> 会员登录 </a>
						</li>
						<li class="right">
							<a href="#feihuiyuan" data-toggle="tab">非会员登录</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content" style="filter:alpha(opacity=80);background:none">
						<div class="tab-pane fade in active" id="huiyuan">
                <form id="login1form" class="margin-bottom-0">
                <br/>
                    <div class="form-group m-b-20">
                        <label>用户名：</label><input type="text"  class="form-control" name="tue.account" id="account" />
											<span id="a"></span>
                    </div>
                    <div class="form-group m-b-20">
                        <label>密码：</label><input type="password" class="form-control" name="tue.psw" id="psw"/>
                                            <span id="b"></span>                    
                    </div>
                    <div class="form-group m-b-20">
                        <label>验证码：</label><br/><input type="text" class="col-xs-4" name="yzm" id="yzm"/><img    id="imgObj" alt=""  src="verifycode.jsp" />   
										  <a href="#" id="changeimg">换一张</a> 
                                            <span id="c"></span>
                    </div>
                    <div class="login-buttons">
                        <input type="button" class="btn btn-success btn-block btn-lg" value="登录" id="login1"/>
                    </div>
                    <div class="m-t-20">
                    <div ><span class="blue"><a href="#">忘记密码</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>没有账号?->&nbsp;&nbsp;<span class="blue"><a href="<%=basePath%>/before/user/register.jsp">立即注册</a></span></span></div>
							    <div >其他登录</div>
                    </div>
                </form>
                   </div>
                   <div class="tab-pane fade" id="feihuiyuan">
                   <form id="login2form" class="margin-bottom-0">
                <br/>
                    <div class="form-group m-b-20">
                        <label>手机号码：</label><input type="text"  class="form-control" name="uphone" id="uphone"/>
                    </div>
                    
                    <div class="form-group m-b-20">
                        <label>动态密码：</label><br/><input type="text"  class="col-xs-4" name="dtmm" /><input type="button" value="获取动态密码" class="btn btn-info btn-xs" id="hqdtmm"/>  
										 
                                            
                    </div>
                    <div class="login-buttons">
                        <input type="button" class="btn btn-success btn-block btn-lg" value="登录" id="login2"/>
                    </div>
                    <div class="m-t-20">
                    <div style="text-align:center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>获取的动态密码可以重复使用 &nbsp;&nbsp;&nbsp;&nbsp;<br/><span  class="blue"><a href="<%=basePath%>before/user/register.jsp">立即去注册</a></span></span></div>
                    </div>
                </form>
                    </div>
                   
                 </div>
            </div>
        </div>
        <!-- end login -->
        
        <ul class="login-bg-list">
            <li class="active"><a href="javascript:;" data-click="change-bg"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg1.jpg" alt="" /></a></li>
            <li><a href="javascript:;" data-click="change-bg"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg2.jpg" alt="" /></a></li>
            <li><a href="javascript:;" data-click="change-bg"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg3.jpg" alt="" /></a></li>
            <li><a href="javascript:;" data-click="change-bg"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg4.jpg" alt="" /></a></li>
            <li><a href="javascript:;" data-click="change-bg"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg5.jpg" alt="" /></a></li>
            <li><a href="javascript:;" data-click="change-bg"><img src="<%=basePath%>BacksAdmin/assets/img/login-bg/bg6.jpg" alt="" /></a></li>
        </ul>
        
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="<%=basePath%>BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
		<script src="<%=basePath%>BacksAdmin/assets/js/login-v2.demo.min.js"></script>
		<script src="<%=basePath%>BacksAdmin/assets/js/apps.min.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/jquery.validate.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/verifycode.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/login1.js"></script>
		<script src="<%=basePath%>/resource/foreground/js/login2.js"></script>
		<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
		});
	</script>
	 
</body>
</html>
