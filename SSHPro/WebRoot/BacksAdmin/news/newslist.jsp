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
<title>Color Admin | Gallery</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link
	href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>/BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="<%=basePath%>/BacksAdmin/assets/css/animate.min.css"
	rel="stylesheet" />
<link href="<%=basePath%>/BacksAdmin/assets/css/style.min.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>/BacksAdmin/assets/css/style-responsive.min.css"
	rel="stylesheet" />
<link href="<%=basePath%>/BacksAdmin/assets/css/theme/default.css"
	rel="stylesheet" id="theme" />
<!-- ================== END BASE CSS STYLE ================== -->

<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
<link href="<%=basePath%>/BacksAdmin/assets/plugins/isotope/isotope.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>/BacksAdmin/assets/plugins/lightbox/css/lightbox.css"
	rel="stylesheet" />
<link href="<%=basePath%>/BacksAdmin/discount/css/fancybox.css"
	rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="<%=basePath%>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container"
		class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar navbar-default navbar-fixed-top">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand"><span
						class="navbar-logo"></span> Color Admin</a>
					<button type="button" class="navbar-toggle"
						data-click="sidebar-toggled">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->

				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form full-width">
						<!-- 	<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Enter keyword" />
								<button type="submit" class="btn btn-search">
									<i class="fa fa-search"></i>
								</button>
							</div> -->
						</form></li>
					
					<li class="dropdown navbar-user"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="<%=basePath%>/BacksAdmin/assets/img/user-13.jpg" alt="" />
							<span class="hidden-xs">Adam Schwartz</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="javascript:;">Edit Profile</a>
							</li>
							<li><a href="javascript:;"><span
									class="badge badge-danger pull-right">2</span> Inbox</a>
							</li>
							<li><a href="javascript:;">Calendar</a>
							</li>
							<li><a href="javascript:;">Setting</a>
							</li>
							<li class="divider"></li>
							<li><a href="javascript:;">Log Out</a>
							</li>
						</ul></li>
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
							<a href="javascript:;"><img
								src="<%=basePath%>/BacksAdmin/assets/img/user-13.jpg" alt="" />
							</a>
						</div>
						<div class="info">
							Sean Ngu <small>Front end developer</small>
						</div></li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">Navigation</li>
					<li class="has-sub"><a href="javascript:;"> <b
							class="caret pull-right"></b> <i class="fa fa-laptop"></i> <span>Dashboard</span>
					</a>
						<ul class="sub-menu">
							<li><a href="index.html">Dashboard v1</a>
							</li>
							<li><a href="index_v2.html">Dashboard v2</a>
							</li>
						</ul></li>
					<li class="has-sub"><a href="javascript:;"> <span
							class="badge pull-right">10</span> <i class="fa fa-inbox"></i> <span>Email</span>
					</a>
						<ul class="sub-menu">
							<li><a href="email_inbox.html">Inbox v1</a>
							</li>
							<li><a href="email_inbox_v2.html">Inbox v2</a>
							</li>
							<li><a href="email_compose.html">Compose</a>
							</li>
							<li><a href="email_detail.html">Detail</a>
							</li>
						</ul></li>

					<!-- begin sidebar minify button -->
					<li><a href="javascript:;" class="sidebar-minify-btn"
						data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i>
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
				<li><a href="javascript:;">Home</a>
				</li>
				<li class="active">Gallery</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">
				Gallery <small>header small text goes here...</small>
			</h1>
			<!-- end page-header -->

			<div id="options" class="m-b-10">
				<span class="gallery-option-set" id="filter"
					data-option-key="filter"> <a href="#show-all"
					class="btn btn-default btn-xs active" data-option-value="*"> 全部
				</a> <a href="#gallery-group-1" class="btn btn-default btn-xs"
					data-option-value=".gallery-group-discount"> 优惠活动 </a> <a
					href="#gallery-group-2" class="btn btn-default btn-xs"
					data-option-value=".gallery-group-common"> 普通新闻 </a> <a
					href="#gallery-group-3" class="btn btn-default btn-xs"
					data-option-value=".gallery-group-notice"> 公告 </a> </span>
			</div>


			<div id="gallery" class="gallery">

				<s:iterator value="list" var="l">
					<div class="image gallery-group-${l.type}">
					
					<!-- picture -->
						<div class="image-inner">
							<a href="#" data-lightbox="gallery-group-${l.type }"> <img
								src="<%=basePath%>/BacksAdmin/news/image/${l.image}"
								alt="" /> </a>
						</div>
						
						<!-- information -->
						<div class="image-info">
							<a  data-toggle="modal" data-target="#myModal${l.id }">${l.title}</a>
							<div class="pull-right">
								<small>by</small> <a href="javascript:;">${l.author}</a>
							</div><br>
							<div class="pull-right">
								<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal-${l.id}">详细</button>
							</div><br>
							<div class="desc" ><p style="size: 20">${l.content}<p></div>
						</div>
					</div>
				</s:iterator>			

			</div>
		</div>
		<s:iterator value="list" var="l">
		
		<!-- Modal -->
<div class="modal fade" id="myModal-${l.id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">详细</h4>
      </div>
      <div class="modal-body">
					<h5 align="center">${l.title}</h5>
					<div class="image-inner" align="center">
						<a> <img style="width: 50%;height: 25%"
							src="<%=basePath%>/BacksAdmin/news/image/${l.image}"
							alt="" /> </a>

					</div>
					<div class="image-info">
						<a id="modal" href="#inline2" data-toggle="modal"
							data-target="#myModal">${l.title}</a>


						<div class="desc">${l.content}</div>
						<div class="pull-right">
							<small>点击量:</small> <a href="javascript:;">${l.clicknumber}</a>
						</div>
						<br>
						<div class="pull-right">
							<small>来自</small> <a href="javascript:;">${l.author}</a>
						</div>
					</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</div>
	</s:iterator>
		<!-- end #Modal -->

		<!-- begin theme-panel -->
		<div class="theme-panel">
			<a href="javascript:;" data-click="theme-panel-expand"
				class="theme-collapse-btn"><i class="fa fa-cog"></i>
			</a>
			<div class="theme-panel-content">
				<h5 class="m-t-0">Color Theme</h5>
				<ul class="theme-list clearfix">
					<li class="active"><a href="javascript:;" class="bg-green"
						data-theme="default" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Default">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-red" data-theme="red"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-blue" data-theme="blue"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-purple"
						data-theme="purple" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Purple">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-orange"
						data-theme="orange" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Orange">&nbsp;</a>
					</li>
					<li><a href="javascript:;" class="bg-black" data-theme="black"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a>
					</li>
				</ul>
				<div class="divider"></div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Header
						Styling</div>
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
					<div class="col-md-5 control-label double-line">Sidebar
						Styling</div>
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
					<div class="col-md-5 control-label double-line">Sidebar
						Gradient</div>
					<div class="col-md-7">
						<select name="content-gradient" class="form-control input-sm">
							<option value="1">disabled</option>
							<option value="2">enabled</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Content
						Styling</div>
					<div class="col-md-7">
						<select name="content-styling" class="form-control input-sm">
							<option value="1">default</option>
							<option value="2">black</option>
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


	<!-- Modal -->
	


	<!-- end page container -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/isotope/jquery.isotope.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/lightbox/js/lightbox-2.6.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/discount/js/jquery.fancybox-1.3.1.pack.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/gallery.demo.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	<script type="text/javascript">
		
	</script>
	<script>
		$(document).ready(function() {
			App.init();
			Gallery.init();
		});
	</script>

</body>
</html>
