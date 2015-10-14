<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>航空后台管理系统</title>
		<meta
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
			name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />

		<!-- ================== BEGIN BASE CSS STYLE ================== -->
		<link
			href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700"
			rel="stylesheet" />
		<link
			href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
			rel="stylesheet" />
		<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
			rel="stylesheet" />
		<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
			rel="stylesheet" />
		<link href="assets/css/animate.min.css" rel="stylesheet" />
		<link href="assets/css/style.min.css" rel="stylesheet" />
		<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
		<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
		<!-- ================== END BASE CSS STYLE ================== -->

		<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
		<link
			href="assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css"
			rel="stylesheet" />
		<link href="assets/plugins/bootstrap-datepicker/css/datepicker.css"
			rel="stylesheet" />
		<link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css"
			rel="stylesheet" />
		<link href="assets/plugins/gritter/css/jquery.gritter.css"
			rel="stylesheet" />
		<!-- ================== END PAGE LEVEL STYLE ================== -->

		<!-- ================== BEGIN BASE JS ================== -->
		<script src="assets/plugins/pace/pace.min.js"></script>
		<!-- ================== END BASE JS ================== -->

	


	</head>
	

	
	<body  onload="showLeftTime()">
		<!-- begin #page-loader -->
		<div id="page-loader" class="fade in">
			<span class="spinner"></span>
		</div>
		<!-- end #page-loader -->

		<!-- begin #page-container -->
		<div id="page-container"
			class="fade page-sidebar-fixed page-header-fixed">
			<!-- begin #header -->
			<div id="header"
				class="header navbar navbar-default navbar-fixed-top">
				<!-- begin container-fluid -->
				<div class="container-fluid">
					<!-- begin mobile sidebar expand / collapse button -->
					<div class="navbar-header">
						<a href="index.html" class="navbar-brand"><span
							class="navbar-logo"></span> 航空后台管理</a>
						<button type="button" class="navbar-toggle"
							data-click="sidebar-toggled">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- end mobile sidebar expand / collapse button -->

					<!-- begin header navigation right -->
					<ul class="nav navbar-nav navbar-right">
						
					
						<li class="dropdown navbar-user">
							<a href="javascript:;" class="dropdown-toggle"
								data-toggle="dropdown"> <img src="<%=basePath%>/ImageUpload/${sessionScope.user.image}"
									alt="" /> <span class="hidden-xs">${sessionScope.user.name}</span> <b
								class="caret"></b> </a>
							<ul class="dropdown-menu animated fadeInLeft">
								<li class="arrow"></li>
								
								<li>
									<a href="employee!Setting.action">个人设置</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="employee!Logout.action">退出</a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- end header navigation right -->
				</div>
				<!-- end container-fluid -->
			</div>
			<!-- end #header -->

			<!-- begin #sidebar -->
			<div id="sidebar" class="sidebar">
				<!-- begin sidebar scrollbar -->
				<div data-scrollbar="true" data-height="100%">
					<!-- begin sidebar user -->
					<ul class="nav">
						<li class="nav-profile">
							<div class="image">
								<a href="javascript:;"><img src="<%=basePath%>/ImageUpload/${sessionScope.user.image}"
										alt="" />
								</a>
							</div>
							<div class="info">
								${sessionScope.user.name}
								<small>欢迎您</small>
							</div>
						</li>
					</ul>
					<!-- end sidebar user -->
					<!-- begin sidebar nav -->
					<ul class="nav">
						<li class="nav-header">
							导航
						</li>
						<li class="has-sub active">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-home"></i> <span>首页</span> </a>
							<ul class="sub-menu">

								<li class="active">
									<a href="<%=basePath%>/BacksAdmin/index.jsp">主控面板</a>
								</li>

							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-file-o"></i> <span>购票管理</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="<%=basePath%>/BacksAdmin/flight/chapiao.jsp">在线购票</a>
								</li>
								<li>
									<a href="<%=basePath%>/BacksAdmin/order_approve/list.jsp">订单审核</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-newspaper-o"></i> <span>航空公司管理</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="<%=basePath%>/BacksAdmin/aircompany/search.jsp">查询</a>
								</li>
								<li class="active">
									<a href="<%=basePath%>/BacksAdmin/aircompany/add.jsp">添加</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-user"></i> <span>人员管理</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="employee!A.action">录入员工信息</a>
								</li>
								<li>
									<a href="employee!Find.action">删除员工信息</a>
								</li>
								<li>
									<a href="employee!Find1.action">修改员工信息</a>
								</li>
								<li>
									<a href="employee!Find2.action">查询员工信息</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-calendar-o"></i> <span>折扣管理</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="<%=basePath%>/BacksAdmin/discount/calendar1.jsp">折扣查询</a>
								</li>
								
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-paper-plane-o"></i> <span>航班管理</span> </a>

							<ul class="sub-menu">
								<li>
									<a href="line-manager!queryLineToday.action">查询航班</a>
								</li>

							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="glyphicon glyphicon-plane"></i> <span>飞机管理</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="plane!czfj.action">查询</a>
								</li>
								<li>
									<a href="<%=basePath%>BacksAdmin/plane/add.jsp">添加</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-users"></i> <span>客户管理</span> </a>
							<ul class="sub-menu">
								<li class="active">
									<a href="<%=basePath%>/BacksAdmin/ordermd/tuser!show.action">查询</a>
								</li>
								<li>
									<a href="<%=basePath%>/BacksAdmin/ordermd/Tuser1.jsp">添加</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-list-alt"></i> <span>季度报表</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="<%=basePath%>/BacksAdmin/baobiao/index.jsp">季度查询</a>
								</li>
								
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-newspaper-o"></i> <span>新闻管理</span> </a>
							<ul class="sub-menu">
								 <li  class=" active"><a href="news-manager!Anews.action">添加</a></li>
						    <li ><a href="news-manager!Mnews.action">修改</a></li>
						    <li><a href="news-manager!Dnews.action">删除</a></li>
						      <li><a href="news-manager!Fnews.action">查询</a></li>
							</ul>
						</li>
						














						<!-- begin sidebar minify button -->
						<li>
							<a href="javascript:;" class="sidebar-minify-btn"
								data-click="sidebar-minify"><i
								class="fa fa-angle-double-left"></i>
							</a>
						</li>
						<!-- end sidebar minify button -->
					</ul>
					<!-- end sidebar nav -->
				</div>
				<!-- end sidebar scrollbar -->
			</div>
			<div class="sidebar-bg"></div>
			<!-- end #sidebar -->

			<!-- begin #content -->
			<div id="content" class="content">
				<!-- begin breadcrumb -->
				<ol class="breadcrumb pull-right">
					<li>
						<a href="javascript:;">首页</a>
					</li>
					<li class="active">
						主面板
					</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- begin page-header -->
				<h1 class="page-header">
					主面板
					<small></small>
				</h1>
				<!-- end page-header -->

				<!-- begin row -->
				<div class="row">
					<!-- begin col-3 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget widget-stats bg-green">
							<div class="stats-icon">
								<i class="fa fa-rmb (alias)"></i>
							</div>
							<div class="stats-info">
								<h4>
									日销售额
								</h4>
								<p id="xiaoshou">
									
								</p>
							</div>
							<div class="stats-link">
								<a href="javascript:;">详细 <i class="fa fa-arrow-circle-o-right"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget widget-stats bg-blue">
							<div class="stats-icon">
								<i class="fa fa-chain-broken"></i>
							</div>
							<div class="stats-info">
								<h4>
									折扣信息
								</h4>
								<p style="font-size: 13px" id="dis">
									
								</p>
							</div>
							<div class="stats-link">
								<a href="javascript:;">详细<i
									class="fa fa-arrow-circle-o-right"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget widget-stats bg-purple">
							<div class="stats-icon">
								<i class="fa fa-users"></i>
							</div>
							<div class="stats-info">
								<h4>
									客户量
								</h4>
								<p id="tuser">
									
								</p>
							</div>
							<div class="stats-link">
								<a href="javascript:;">详细<i
									class="fa fa-arrow-circle-o-right"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget widget-stats bg-red">
							<div class="stats-icon">
								<i class="fa fa-clock-o"></i>
							</div>
							<div class="stats-info">
								<h4>
									当前时间
								</h4>
								<p id="show">
									
								</p>
							</div>
							<div class="stats-link" >
								<a href="javascript:;">详细<i
									class="fa fa-arrow-circle-o-right"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- end col-3 -->
				</div>
				<!-- end row -->
				<!-- begin row -->
				<div class="row">
					<!-- begin col-8 -->
					<div class="col-md-8">
						<div class="panel panel-inverse" data-sortable-id="index-1">
							<div class="panel-heading">
								<div class="panel-heading-btn">
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-default"
										data-click="panel-expand"><i class="fa fa-expand"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-success"
										data-click="panel-reload"><i class="fa fa-repeat"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-warning"
										data-click="panel-collapse"><i class="fa fa-minus"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-danger"
										data-click="panel-remove"><i class="fa fa-times"></i>
									</a>
								</div>
								<h4 class="panel-title">
									Website Analytics (Last 7 Days)
								</h4>
							</div>
							<div class="panel-body">
								<div id="interactive-chart" class="height-sm"></div>
							</div>
						</div>

						<ul
							class="nav nav-tabs nav-tabs-inverse nav-justified nav-justified-mobile"
							data-sortable-id="index-2">
							<li class="active">
								<a href="#latest-post" data-toggle="tab"><i
									class="fa fa-newspaper-o m-r-5"></i> <span class="hidden-xs">新闻</span>
								</a>
							</li>
					
						</ul>
						<div class="tab-content" data-sortable-id="index-3">
							<div class="tab-pane fade active in" id="latest-post">
								<div class="height-sm" data-scrollbar="true">
									<ul class="media-list media-list-with-divider" id="mynews">
										
										
										
									
										
									</ul>
								</div>
							</div>
							
							
						</div>

						

						
					</div>
					<!-- end col-8 -->
					<!-- begin col-4 -->
					<div class="col-md-4">
					

						<div class="panel panel-inverse" data-sortable-id="index-7">
							<div class="panel-heading">
								<div class="panel-heading-btn">
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-default"
										data-click="panel-expand"><i class="fa fa-expand"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-success"
										data-click="panel-reload"><i class="fa fa-repeat"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-warning"
										data-click="panel-collapse"><i class="fa fa-minus"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-danger"
										data-click="panel-remove"><i class="fa fa-times"></i>
									</a>
								</div>
								<h4 class="panel-title">
									用户类型统计
								</h4>
							</div>
							<div class="panel-body">
								<div id="donut-chart" class="height-sm"></div>
							</div>
						</div>

						

						<div class="panel panel-inverse" data-sortable-id="index-9">
							<div class="panel-heading">
								<div class="panel-heading-btn">
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-default"
										data-click="panel-expand"><i class="fa fa-expand"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-success"
										data-click="panel-reload"><i class="fa fa-repeat"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-warning"
										data-click="panel-collapse"><i class="fa fa-minus"></i>
									</a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-danger"
										data-click="panel-remove"><i class="fa fa-times"></i>
									</a>
								</div>
								<h4 class="panel-title">
									快速查询航班
								</h4>
								
								
							</div>
							<div class="panel-body p-0">
								<div id="world-map" class="height-sm width-full"></div>
							</div>
							
							<!-- 快速查询航班模态框 -->
							<div id="quickquery"  class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  								<div class="modal-dialog modal-lg">
    								<div class="modal-content">
     									 <form action="line1!yd.action" id="zzw1" method="post"><div align="center" > 
			 
		<!-- begin panel -->
                    <div class="panel panel-inverse">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table id="table_id" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>航班号</th>
                                            <th>航班信息</th>
                                            <th>头等舱</th>
                                            <th>商务舱</th>
                                            <th>经济舱</th>
                                            <th>特惠舱</th>
                                            <th>订票</th>
                                                                                
                                            
                                        </tr>
                                    </thead>
                                
                                    <tbody id="mytbody">
                                                                        
                                    </tbody>
                                
                                </table>
                            </div>
                        </div>
                        	
                    </div>
                    <!-- end panel --> 
		      
			 
	</form>
     									 
     									 
     									 
    								</div>
  									</div>
							</div>
							
							
							
						</div>

					
					</div>
					<!-- end col-4 -->
				</div>
				<!-- end row -->
			</div>
			<!-- end #content -->

			<!-- begin theme-panel -->
			<div class="theme-panel">
				<a href="javascript:;" data-click="theme-panel-expand"
					class="theme-collapse-btn"><i class="fa fa-cog"></i>
				</a>
				<div class="theme-panel-content">
					<h5 class="m-t-0">
						Color Theme
					</h5>
					<ul class="theme-list clearfix">
						<li class="active">
							<a href="javascript:;" class="bg-green" data-theme="default"
								data-click="theme-selector" data-toggle="tooltip"
								data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a>
						</li>
						<li>
							<a href="javascript:;" class="bg-red" data-theme="red"
								data-click="theme-selector" data-toggle="tooltip"
								data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a>
						</li>
						<li>
							<a href="javascript:;" class="bg-blue" data-theme="blue"
								data-click="theme-selector" data-toggle="tooltip"
								data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a>
						</li>
						<li>
							<a href="javascript:;" class="bg-purple" data-theme="purple"
								data-click="theme-selector" data-toggle="tooltip"
								data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a>
						</li>
						<li>
							<a href="javascript:;" class="bg-orange" data-theme="orange"
								data-click="theme-selector" data-toggle="tooltip"
								data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a>
						</li>
						<li>
							<a href="javascript:;" class="bg-black" data-theme="black"
								data-click="theme-selector" data-toggle="tooltip"
								data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a>
						</li>
					</ul>
					<div class="divider"></div>
					<div class="row m-t-10">
						<div class="col-md-5 control-label double-line">
							Header Styling
						</div>
						<div class="col-md-7">
							<select name="header-styling" class="form-control input-sm">
								<option value="1">
									default
								</option>
								<option value="2">
									inverse
								</option>
							</select>
						</div>
					</div>
					<div class="row m-t-10">
						<div class="col-md-5 control-label">
							Header
						</div>
						<div class="col-md-7">
							<select name="header-fixed" class="form-control input-sm">
								<option value="1">
									fixed
								</option>
								<option value="2">
									default
								</option>
							</select>
						</div>
					</div>
					<div class="row m-t-10">
						<div class="col-md-5 control-label double-line">
							Sidebar Styling
						</div>
						<div class="col-md-7">
							<select name="sidebar-styling" class="form-control input-sm">
								<option value="1">
									default
								</option>
								<option value="2">
									grid
								</option>
							</select>
						</div>
					</div>
					<div class="row m-t-10">
						<div class="col-md-5 control-label">
							Sidebar
						</div>
						<div class="col-md-7">
							<select name="sidebar-fixed" class="form-control input-sm">
								<option value="1">
									fixed
								</option>
								<option value="2">
									default
								</option>
							</select>
						</div>
					</div>
					<div class="row m-t-10">
						<div class="col-md-5 control-label double-line">
							Sidebar Gradient
						</div>
						<div class="col-md-7">
							<select name="content-gradient" class="form-control input-sm">
								<option value="1">
									disabled
								</option>
								<option value="2">
									enabled
								</option>
							</select>
						</div>
					</div>
					<div class="row m-t-10">
						<div class="col-md-5 control-label double-line">
							Content Styling
						</div>
						<div class="col-md-7">
							<select name="content-styling" class="form-control input-sm">
								<option value="1">
									default
								</option>
								<option value="2">
									black
								</option>
							</select>
						</div>
					</div>
					<div class="row m-t-10">
						<div class="col-md-12">
							<a href="#" class="btn btn-inverse btn-block btn-sm"
								data-click="reset-local-storage"><i
								class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
						</div>
					</div>
				</div>
			</div>
			<!-- end theme-panel -->

			<!-- begin scroll to top btn -->
			<a href="javascript:;"
				class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
				data-click="scroll-top"><i class="fa fa-angle-up"></i>
			</a>
			<!-- end scroll to top btn -->
		</div>
		<!-- end page container -->

		<!-- ================== BEGIN BASE JS ================== -->
		<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
		<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
		<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
		<!-- ================== END BASE JS ================== -->
		<!-- ================== Map ================== -->
	
		
		
		<!-- ================== AJAX  JS ================== -->
		<script src="<%=basePath%>/BacksAdmin/main/js/first.js"></script>
		<script src="<%=basePath%>/BacksAdmin/main/js/news.js"></script>
		
		
		

		<!-- ================== BEGIN PAGE LEVEL JS ================== -->
		<script src="assets/plugins/gritter/js/jquery.gritter.js"></script>
		<script src="assets/plugins/flot/jquery.flot.min.js"></script>
		<script src="assets/plugins/flot/jquery.flot.time.min.js"></script>
		<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>
		<script src="assets/plugins/flot/jquery.flot.pie.min.js"></script>
		<script src="assets/plugins/sparkline/jquery.sparkline.js"></script>
		<script
			src="assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script
			src="assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<script
			src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/js/dashboard.min.js"></script>
		<script src="assets/js/apps.min.js"></script>
		<!-- ================== END PAGE LEVEL JS ================== -->
		
		<script>	
	$(document).ready(function() {
		App.init();
		Dashboard.init();
	});
</script>





	</body>
</html>
