<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>Color Admin | Dashboard</title>
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

<script type="text/javascript">
var initializationTime = (new Date()).getTime();
	function showLeftTime() {
		var now = new Date();
		var year = now.getYear();
		var month = now.getMonth();
		var day = now.getDate();
		var hours = now.getHours();
		var minutes = now.getMinutes();
		var seconds = now.getSeconds();
		document.all.show.innerHTML =hours + ":" + minutes + ":" + seconds + "";
		//一秒刷新一次显示时间
		var timeID = setTimeout(
showLeftTime,1000);
}

</script>


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
							class="navbar-logo"></span> Color Admin</a>
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
						<li>
							<form class="navbar-form full-width">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter keyword" />
									<button type="submit" class="btn btn-search">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</form>
						</li>
						<li class="dropdown">
							<a href="javascript:;" data-toggle="dropdown"
								class="dropdown-toggle f-s-14"> <i class="fa fa-bell-o"></i>
								<span class="label">5</span> </a>
							<ul
								class="dropdown-menu media-list pull-right animated fadeInDown">
								<li class="dropdown-header">
									Notifications (5)
								</li>
								<li class="media">
									<a href="javascript:;">
										<div class="media-left">
											<i class="fa fa-bug media-object bg-red"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading">
												Server Error Reports
											</h6>
											<div class="text-muted f-s-11">
												3 minutes ago
											</div>
										</div> </a>
								</li>
								<li class="media">
									<a href="javascript:;">
										<div class="media-left">
											<img src="assets/img/user-1.jpg" class="media-object" alt="" />
										</div>
										<div class="media-body">
											<h6 class="media-heading">
												John Smith
											</h6>
											<p>
												Quisque pulvinar tellus sit amet sem scelerisque tincidunt.
											</p>
											<div class="text-muted f-s-11">
												25 minutes ago
											</div>
										</div> </a>
								</li>
								<li class="media">
									<a href="javascript:;">
										<div class="media-left">
											<img src="assets/img/user-2.jpg" class="media-object" alt="" />
										</div>
										<div class="media-body">
											<h6 class="media-heading">
												Olivia
											</h6>
											<p>
												Quisque pulvinar tellus sit amet sem scelerisque tincidunt.
											</p>
											<div class="text-muted f-s-11">
												35 minutes ago
											</div>
										</div> </a>
								</li>
								<li class="media">
									<a href="javascript:;">
										<div class="media-left">
											<i class="fa fa-plus media-object bg-green"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading">
												New User Registered
											</h6>
											<div class="text-muted f-s-11">
												1 hour ago
											</div>
										</div> </a>
								</li>
								<li class="media">
									<a href="javascript:;">
										<div class="media-left">
											<i class="fa fa-envelope media-object bg-blue"></i>
										</div>
										<div class="media-body">
											<h6 class="media-heading">
												New Email From John
											</h6>
											<div class="text-muted f-s-11">
												2 hour ago
											</div>
										</div> </a>
								</li>
								<li class="dropdown-footer text-center">
									<a href="javascript:;">View more</a>
								</li>
							</ul>
						</li>
						<li class="dropdown navbar-user">
							<a href="javascript:;" class="dropdown-toggle"
								data-toggle="dropdown"> <img src="assets/img/user-13.jpg"
									alt="" /> <span class="hidden-xs">Adam Schwartz</span> <b
								class="caret"></b> </a>
							<ul class="dropdown-menu animated fadeInLeft">
								<li class="arrow"></li>
								<li>
									<a href="javascript:;">Edit Profile</a>
								</li>
								<li>
									<a href="javascript:;"><span
										class="badge badge-danger pull-right">2</span> Inbox</a>
								</li>
								<li>
									<a href="javascript:;">Calendar</a>
								</li>
								<li>
									<a href="javascript:;">Setting</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="javascript:;">Log Out</a>
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
								<a href="javascript:;"><img src="assets/img/user-13.jpg"
										alt="" />
								</a>
							</div>
							<div class="info">
								Sean Ngu
								<small>Front end developer</small>
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
									<a href="<%=basePath%>/BacksAdmin/discount/calendar1.jsp">折扣管理</a>
								</li>
								<li>
									<a href="#">自定义添加内容</a>
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
									<a href="#">自定义添加内容</a>
								</li>
								<li>
									<a href="#">自定义添加内容</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <span class="badge pull-right">99</span>
								<i class="fa fa-inbox"></i> <span>邮箱</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="email_inbox.html">Inbox v1</a>
								</li>
								<li>
									<a href="email_inbox_v2.html">Inbox v2</a>
								</li>
								<li>
									<a href="email_compose.html">Compose</a>
								</li>
								<li>
									<a href="email_detail.html">Detail</a>
								</li>
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
						<a href="javascript:;">Home</a>
					</li>
					<li class="active">
						主面板
					</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- begin page-header -->
				<h1 class="page-header">
					Dashboard
					<small>...</small>
				</h1>
				<!-- end page-header -->

				<!-- begin row -->
				<div class="row">
					<!-- begin col-3 -->
					<div class="col-md-3 col-sm-6">
						<div class="widget widget-stats bg-green">
							<div class="stats-icon">
								<i class="fa fa-desktop"></i>
							</div>
							<div class="stats-info">
								<h4>
									日销售额
								</h4>
								<p>
									3,291,922
								</p>
							</div>
							<div class="stats-link">
								<a href="javascript:;">详细 <i class="fa fa-rmb (alias)"></i>
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
								<p>
									金牌：0.8，银牌：0.9,普通：1 
									
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
								<p>
									1,291,922
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
									class="fa fa-picture-o m-r-5"></i> <span class="hidden-xs">Latest
										Post</span>
								</a>
							</li>
							<li class="">
								<a href="#purchase" data-toggle="tab"><i
									class="fa fa-shopping-cart m-r-5"></i> <span class="hidden-xs">Purchase</span>
								</a>
							</li>
							<li class="">
								<a href="#email" data-toggle="tab"><i
									class="fa fa-envelope m-r-5"></i> <span class="hidden-xs">Email</span>
								</a>
							</li>
						</ul>
						<div class="tab-content" data-sortable-id="index-3">
							<div class="tab-pane fade active in" id="latest-post">
								<div class="height-sm" data-scrollbar="true">
									<ul class="media-list media-list-with-divider">
										<li class="media media-lg">
											<a href="javascript:;" class="pull-left"> <img
													class="media-object" src="assets/img/gallery/gallery-1.jpg"
													alt="" /> </a>
											<div class="media-body">
												<h4 class="media-heading">
													Aenean viverra arcu nec pellentesque ultrices. In erat
													purus, adipiscing nec lacinia at, ornare ac eros.
												</h4>
												Nullam at risus metus. Quisque nisl purus, pulvinar ut
												mauris vel, elementum suscipit eros. Praesent ornare ante
												massa, egestas pellentesque orci convallis ut. Curabitur
												consequat convallis est, id luctus mauris lacinia vel.
												Nullam tristique lobortis mauris, ultricies fermentum lacus
												bibendum id. Proin non ante tortor. Suspendisse pulvinar
												ornare tellus nec pulvinar. Nam pellentesque accumsan mi,
												non pellentesque sem convallis sed. Quisque rutrum erat id
												auctor gravida.
											</div>
										</li>
										<li class="media media-lg">
											<a href="javascript:;" class="pull-left"> <img
													class="media-object"
													src="assets/img/gallery/gallery-10.jpg" alt="" /> </a>
											<div class="media-body">
												<h4 class="media-heading">
													Vestibulum vitae diam nec odio dapibus placerat. Ut ut
													lorem justo.
												</h4>
												Fusce bibendum augue nec fermentum tempus. Sed laoreet
												dictum tempus. Aenean ac sem quis nulla malesuada volutpat.
												Nunc vitae urna pulvinar velit commodo cursus. Nullam eu
												felis quis diam adipiscing hendrerit vel ac turpis. Nam
												mattis fringilla euismod. Donec eu ipsum sit amet mauris
												iaculis aliquet. Quisque sit amet feugiat odio. Cras
												convallis lorem at libero lobortis, placerat lobortis sapien
												lacinia. Duis sit amet elit bibendum sapien dignissim
												bibendum.
											</div>
										</li>
										<li class="media media-lg">
											<a href="javascript:;" class="pull-left"> <img
													class="media-object" src="assets/img/gallery/gallery-7.jpg"
													alt="" /> </a>
											<div class="media-body">
												<h4 class="media-heading">
													Maecenas eget turpis luctus, scelerisque arcu id, iaculis
													urna. Interdum et malesuada fames ac ante ipsum primis in
													faucibus.
												</h4>
												Morbi placerat est nec pharetra placerat. Ut laoreet nunc
												accumsan orci aliquam accumsan. Maecenas volutpat dolor
												vitae sapien ultricies fringilla. Suspendisse vitae orci sed
												nibh ultrices tristique. Aenean in ante eget urna semper
												imperdiet. Pellentesque sagittis a nulla at scelerisque. Nam
												augue nulla, accumsan quis nisi a, facilisis eleifend nulla.
												Praesent aliquet odio non imperdiet fringilla. Morbi a porta
												nunc. Vestibulum ante ipsum primis in faucibus orci luctus
												et ultrices posuere cubilia Curae.
											</div>
										</li>
										<li class="media media-lg">
											<a href="javascript:;" class="pull-left"> <img
													class="media-object" src="assets/img/gallery/gallery-8.jpg"
													alt="" /> </a>
											<div class="media-body">
												<h4 class="media-heading">
													Lorem ipsum dolor sit amet, consectetur adipiscing elit.
													Donec auctor accumsan rutrum.
												</h4>
												Fusce augue diam, vestibulum a mattis sit amet, vehicula eu
												ipsum. Vestibulum eu mi nec purus tempor consequat.
												Vestibulum porta non mi quis cursus. Fusce vulputate cursus
												magna, tincidunt sodales ipsum lobortis tincidunt. Mauris
												quis lorem ligula. Morbi placerat est nec pharetra placerat.
												Ut laoreet nunc accumsan orci aliquam accumsan. Maecenas
												volutpat dolor vitae sapien ultricies fringilla. Suspendisse
												vitae orci sed nibh ultrices tristique. Aenean in ante eget
												urna semper imperdiet. Pellentesque sagittis a nulla at
												scelerisque.
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="tab-pane fade" id="purchase">
								<div class="height-sm" data-scrollbar="true">
									<table class="table">
										<thead>
											<tr>
												<th>
													Date
												</th>
												<th class="hidden-sm">
													Product
												</th>
												<th>
													Amount
												</th>
												<th>
													User
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													13/02/2013
												</td>
												<td class="hidden-sm">
													<a href="javascript:;"> <img
															src="assets/img/product/product-1.png" alt="" /> </a>
												</td>
												<td>
													<h6>
														<a href="javascript:;">Nunc eleifend lorem eu velit
															eleifend, eget faucibus nibh placerat.</a>
													</h6>
												</td>
												<td>
													$349.00
												</td>
												<td>
													<a href="javascript:;">Derick Wong</a>
												</td>
											</tr>
											<tr>
												<td>
													13/02/2013
												</td>
												<td class="hidden-sm">
													<a href="javascript:;"> <img
															src="assets/img/product/product-2.png" alt="" /> </a>
												</td>
												<td>
													<h6>
														<a href="javascript:;">Nunc eleifend lorem eu velit
															eleifend, eget faucibus nibh placerat.</a>
													</h6>
												</td>
												<td>
													$399.00
												</td>
												<td>
													<a href="javascript:;">Derick Wong</a>
												</td>
											</tr>
											<tr>
												<td>
													13/02/2013
												</td>
												<td class="hidden-sm">
													<a href="javascript:;"> <img
															src="assets/img/product/product-3.png" alt="" /> </a>
												</td>
												<td>
													<h6>
														<a href="javascript:;">Nunc eleifend lorem eu velit
															eleifend, eget faucibus nibh placerat.</a>
													</h6>
												</td>
												<td>
													$499.00
												</td>
												<td>
													<a href="javascript:;">Derick Wong</a>
												</td>
											</tr>
											<tr>
												<td>
													13/02/2013
												</td>
												<td class="hidden-sm">
													<a href="javascript:;"> <img
															src="assets/img/product/product-4.png" alt="" /> </a>
												</td>
												<td>
													<h6>
														<a href="javascript:;">Nunc eleifend lorem eu velit
															eleifend, eget faucibus nibh placerat.</a>
													</h6>
												</td>
												<td>
													$230.00
												</td>
												<td>
													<a href="javascript:;">Derick Wong</a>
												</td>
											</tr>
											<tr>
												<td>
													13/02/2013
												</td>
												<td class="hidden-tablet hidden-phone">
													<a href="javascript:;"> <img
															src="assets/img/product/product-5.png" alt="" /> </a>
												</td>
												<td>
													<h6>
														<a href="javascript:;">Nunc eleifend lorem eu velit
															eleifend, eget faucibus nibh placerat.</a>
													</h6>
												</td>
												<td>
													$500.00
												</td>
												<td>
													<a href="javascript:;">Derick Wong</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane fade" id="email">
								<div class="height-sm" data-scrollbar="true">
									<ul class="media-list media-list-with-divider">
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-1.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<a href="javascript:;"><h4 class="media-heading">
														Lorem ipsum dolor sit amet, consectetur adipiscing elit.
													</h4>
												</a>
												<p class="m-b-5">
													Aenean mollis arcu sed turpis accumsan dignissim. Etiam vel
													tortor at risus tristique convallis. Donec adipiscing
													euismod arcu id euismod. Suspendisse potenti. Aliquam
													lacinia sapien ac urna placerat, eu interdum mauris
													viverra.
												</p>
												<i class="text-muted">Received on 04/16/2013, 12.39pm</i>
											</div>
										</li>
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-2.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<a href="javascript:;"><h4 class="media-heading">
														Praesent et sem porta leo tempus tincidunt eleifend et
														arcu.
													</h4>
												</a>
												<p class="m-b-5">
													Proin adipiscing dui nulla. Duis pharetra vel sem ac
													adipiscing. Vestibulum ut porta leo. Pellentesque orci
													neque, tempor ornare purus nec, fringilla venenatis elit.
													Duis at est non nisl dapibus lacinia.
												</p>
												<i class="text-muted">Received on 04/16/2013, 12.39pm</i>
											</div>
										</li>
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-3.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<a href="javascript:;"><h4 class="media-heading">
														Ut mi eros, varius nec mi vel, consectetur convallis diam.
													</h4>
												</a>
												<p class="m-b-5">
													Ut mi eros, varius nec mi vel, consectetur convallis diam.
													Nullam eget hendrerit eros. Duis lacinia condimentum justo
													at ultrices. Phasellus sapien arcu, fringilla eu pulvinar
													id, mattis quis mauris.
												</p>
												<i class="text-muted">Received on 04/16/2013, 12.39pm</i>
											</div>
										</li>
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-4.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<a href="javascript:;"><h4 class="media-heading">
														Aliquam nec dolor vel nisl dictum ullamcorper.
													</h4>
												</a>
												<p class="m-b-5">
													Aliquam nec dolor vel nisl dictum ullamcorper. Duis vel
													magna enim. Aenean volutpat a dui vitae pulvinar. Nullam
													ligula mauris, dictum eu ullamcorper quis, lacinia nec
													mauris.
												</p>
												<i class="text-muted">Received on 04/16/2013, 12.39pm</i>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel panel-inverse" data-sortable-id="index-4">
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
									Quick Post
								</h4>
							</div>
							<div class="panel-toolbar">
								<div class="btn-group m-r-5">
									<a class="btn btn-white" href="javascript:;"><i
										class="fa fa-bold"></i>
									</a>
									<a class="btn btn-white active" href="javascript:;"><i
										class="fa fa-italic"></i>
									</a>
									<a class="btn btn-white" href="javascript:;"><i
										class="fa fa-underline"></i>
									</a>
								</div>
								<div class="btn-group">
									<a class="btn btn-white" href="javascript:;"><i
										class="fa fa-align-left"></i>
									</a>
									<a class="btn btn-white active" href="javascript:;"><i
										class="fa fa-align-center"></i>
									</a>
									<a class="btn btn-white" href="javascript:;"><i
										class="fa fa-align-right"></i>
									</a>
									<a class="btn btn-white" href="javascript:;"><i
										class="fa fa-align-justify"></i>
									</a>
								</div>
							</div>
							<textarea class="form-control no-rounded-corner bg-silver"
								rows="14">Enter some comment.</textarea>
							<div class="panel-footer text-right">
								<a href="javascript:;" class="btn btn-white btn-sm">Cancel</a>
								<a href="javascript:;" class="btn btn-primary btn-sm m-l-5">Action</a>
							</div>
						</div>

						<div class="panel panel-inverse" data-sortable-id="index-5">
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
									Message
								</h4>
							</div>
							<div class="panel-body">
								<div class="height-sm" data-scrollbar="true">
									<ul class="media-list media-list-with-divider media-messaging">
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-5.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<h5 class="media-heading">
													John Doe
												</h5>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit.
													Morbi id nunc non eros fermentum vestibulum ut id felis.
													Nunc molestie libero eget urna aliquet, vitae laoreet felis
													ultricies. Fusce sit amet massa malesuada, tincidunt augue
													vitae, gravida felis.
												</p>
											</div>
										</li>
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-6.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<h5 class="media-heading">
													Terry Ng
												</h5>
												<p>
													Sed in ante vel ipsum tristique euismod posuere eget nulla.
													Quisque ante sem, scelerisque iaculis interdum quis,
													eleifend id mi. Fusce congue leo nec mauris malesuada, id
													scelerisque sapien ultricies.
												</p>
											</div>
										</li>
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-8.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<h5 class="media-heading">
													Fiona Log
												</h5>
												<p>
													Pellentesque dictum in tortor ac blandit. Nulla rutrum eu
													leo vulputate ornare. Nulla a semper mi, ac lacinia sapien.
													Sed volutpat ornare eros, vel semper sem sagittis in.
													Quisque risus ipsum, iaculis quis cursus eu, tristique sed
													nulla.
												</p>
											</div>
										</li>
										<li class="media media-sm">
											<a href="javascript:;" class="pull-left"> <img
													src="assets/img/user-7.jpg" alt=""
													class="media-object rounded-corner" /> </a>
											<div class="media-body">
												<h5 class="media-heading">
													John Doe
												</h5>
												<p>
													Morbi molestie lorem quis accumsan elementum. Morbi
													condimentum nisl iaculis, laoreet risus sed, porta neque.
													Proin mi leo, dapibus at ligula a, aliquam consectetur
													metus.
												</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="panel-footer">
								<form>
									<div class="input-group">
										<input type="text" class="form-control bg-silver"
											placeholder="Enter message" />
										<span class="input-group-btn">
											<button class="btn btn-primary" type="button">
												<i class="fa fa-pencil"></i>
											</button> </span>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- end col-8 -->
					<!-- begin col-4 -->
					<div class="col-md-4">
						<div class="panel panel-inverse" data-sortable-id="index-6">
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
									Analytics Details
								</h4>
							</div>
							<div class="panel-body p-t-0">
								<table class="table table-valign-middle m-b-0">
									<thead>
										<tr>
											<th>
												Source
											</th>
											<th>
												Total
											</th>
											<th>
												Trend
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<label class="label label-danger">
													Unique Visitor
												</label>
											</td>
											<td>
												13,203
												<span class="text-success"><i class="fa fa-arrow-up"></i>
												</span>
											</td>
											<td>
												<div id="sparkline-unique-visitor"></div>
											</td>
										</tr>
										<tr>
											<td>
												<label class="label label-warning">
													Bounce Rate
												</label>
											</td>
											<td>
												28.2%
											</td>
											<td>
												<div id="sparkline-bounce-rate"></div>
											</td>
										</tr>
										<tr>
											<td>
												<label class="label label-success">
													Total Page Views
												</label>
											</td>
											<td>
												1,230,030
											</td>
											<td>
												<div id="sparkline-total-page-views"></div>
											</td>
										</tr>
										<tr>
											<td>
												<label class="label label-primary">
													Avg Time On Site
												</label>
											</td>
											<td>
												00:03:45
											</td>
											<td>
												<div id="sparkline-avg-time-on-site"></div>
											</td>
										</tr>
										<tr>
											<td>
												<label class="label label-default">
													% New Visits
												</label>
											</td>
											<td>
												40.5%
											</td>
											<td>
												<div id="sparkline-new-visits"></div>
											</td>
										</tr>
										<tr>
											<td>
												<label class="label label-inverse">
													Return Visitors
												</label>
											</td>
											<td>
												73.4%
											</td>
											<td>
												<div id="sparkline-return-visitors"></div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

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
									Visitors User Agent
								</h4>
							</div>
							<div class="panel-body">
								<div id="donut-chart" class="height-sm"></div>
							</div>
						</div>

						<div class="panel panel-inverse" data-sortable-id="index-8">
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
									World Visitors
								</h4>
							</div>
							<div class="panel-body p-0">
								<ul class="todolist">
									<li class="active">
										<a href="javascript:;" class="todolist-container active"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Donec vehicula pretium nisl, id lacinia nisl tincidunt id.
											</div> </a>
									</li>
									<li>
										<a href="javascript:;" class="todolist-container"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Duis a ullamcorper massa.
											</div> </a>
									</li>
									<li>
										<a href="javascript:;" class="todolist-container"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Phasellus bibendum, odio nec vestibulum ullamcorper.
											</div> </a>
									</li>
									<li>
										<a href="javascript:;" class="todolist-container"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Duis pharetra mi sit amet dictum congue.
											</div> </a>
									</li>
									<li>
										<a href="javascript:;" class="todolist-container"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Duis pharetra mi sit amet dictum congue.
											</div> </a>
									</li>
									<li>
										<a href="javascript:;" class="todolist-container"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Phasellus bibendum, odio nec vestibulum ullamcorper.
											</div> </a>
									</li>
									<li>
										<a href="javascript:;" class="todolist-container active"
											data-click="todolist">
											<div class="todolist-input">
												<i class="fa fa-square-o"></i>
											</div>
											<div class="todolist-title">
												Donec vehicula pretium nisl, id lacinia nisl tincidunt id.
											</div> </a>
									</li>
								</ul>
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
									World Visitors
								</h4>
							</div>
							<div class="panel-body p-0">
								<div id="world-map" class="height-sm width-full"></div>
							</div>
						</div>

						<div class="panel panel-inverse" data-sortable-id="index-10">
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
									Calendar
								</h4>
							</div>
							<div class="panel-body">
								<div id="datepicker-inline" class="datepicker-full-width">
									<div></div>
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
