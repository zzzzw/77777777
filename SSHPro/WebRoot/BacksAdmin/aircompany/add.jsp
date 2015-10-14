<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>         
	<head>
		<meta charset="utf-8" />
		<title>航空后台管理系统</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
		<!-- ================== BEGIN BASE CSS STYLE ================== -->
		<link
			href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700"
			rel="stylesheet">
		<link
			href="<%=basePath%>BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
			rel="stylesheet" />
		<link
			href="<%=basePath%>BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css"
			rel="stylesheet" />
		<link
			href="<%=basePath%>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css"
			rel="stylesheet" />
		<link href="<%=basePath%>BacksAdmin/assets/css/animate.min.css"
			rel="stylesheet" />
		<link href="<%=basePath%>BacksAdmin/assets/css/style.min.css"
			rel="stylesheet" />
		<link
			href="<%=basePath%>BacksAdmin/assets/css/style-responsive.min.css"
			rel="stylesheet" />
		<link href="<%=basePath%>BacksAdmin/assets/css/theme/default.css"
			rel="stylesheet" id="theme" />
		<!-- ================== END BASE CSS STYLE ================== -->

		<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
		<link
			href="<%=basePath%>BacksAdmin/assets/plugins/DataTables/css/data-table.css"
			rel="stylesheet" />
		<!-- ================== END PAGE LEVEL STYLE ================== -->

		<!-- ================== BEGIN BASE JS ================== -->
		<script src="<%=basePath%>BacksAdmin/assets/plugins/pace/pace.min.js"></script>
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
					<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span> 航空后台管理</a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
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
						<li class="has-sub ">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-home"></i> <span>首页</span> </a>
							<ul class="sub-menu">

								<li ">
									<a href="<%=basePath%>/BacksAdmin/index.jsp">主控面板</a>
								</li>

							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-file-o"></i> <span>购票管理</span> </a>
							<ul class="sub-menu">
								<li >
									<a href="<%=basePath%>/BacksAdmin/flight/chapiao.jsp">在线购票</a>
								</li>
								<li >
									<a href="<%=basePath%>/BacksAdmin/order_approve/list.jsp">订单审核</a>
								</li>
							</ul>
						</li>
						<li class="has-sub active">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-newspaper-o"></i> <span>航空公司管理</span> </a>
							<ul class="sub-menu">
								<li >
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
						<li class="has-sub  ">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-users"></i> <span>客户管理</span> </a>
							<ul class="sub-menu">
								<li >
									<a href="<%=basePath%>/BacksAdmin/ordermd/tuser!show.action">查询</a>
								</li>
								<li >
									<a href="<%=basePath%>/BacksAdmin/ordermd/Tuser1.jsp">添加</a>
								</li>
							</ul>
						</li>
						<li class="has-sub ">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-list-alt"></i> <span>季度报表</span> </a>
							<ul class="sub-menu">
								<li ">
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
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
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

				<div class="row">
					<!-- begin breadcrumb -->
					<ol class="breadcrumb pull-right">
						<li>
							<a href="javascript:;">主页</a>
						</li>
						<li>
							<a href="javascript:;">航空公司管理</a>
						</li>
						<li class="active">
							添加
						</li>
					</ol>
					<!-- end breadcrumb -->
					<!-- begin page-header -->
					<h1 class="page-header">
						神圣航空
						<small>每一架飞机都是纸飞机...</small>
					</h1>
				</div>
				<!-- end page-header -->
				<div class="row">

					<!-- begin row -->
					<div>
						<!-- begin panel -->
						<div class="panel panel-inverse">
							<div class="panel-heading">
								<div class="panel-heading-btn">
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-default"
										data-click="panel-expand"><i class="fa fa-expand"></i> </a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-success"
										data-click="panel-reload"><i class="fa fa-repeat"></i> </a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-warning"
										data-click="panel-collapse"><i class="fa fa-minus"></i> </a>
									<a href="javascript:;"
										class="btn btn-xs btn-icon btn-circle btn-danger"
										data-click="panel-remove"><i class="fa fa-times"></i> </a>
								</div>
								<h4 class="panel-title">
									航空公司管理
								</h4>
							</div>
							<div class="alert alert-info fade in">
								<button type="button" class="close" data-dismiss="alert">
									<span aria-hidden="true">&times;</span>
								</button>
								添加航空公司信息
							</div>
							<div class="panel-body">
								<div class="center">
									<form id="addHkgsxxform" class="form-horizontal">
										<!--<table class="table text-left">
											<tr>
												<td>
													公司名称：
													<input type="text" name="ae.name" id="ae.name" />
												</td>
												<td width="50%">
													地址：
													<input type="text" name="ae.address" id="ae.address" />
												</td>
											</tr>
											<tr>
												<td>
													联系方式：
													<input type="text" name="ae.phone" />
												</td>
												<td>
													评价：
													<input type="text" name="ae.summary" />
												</td>
											</tr>

										</table>
										-->
										<div class="form-group">
										     <label class="control-label col-md-2">公司名称：</label>
										     <div class="col-md-4">
										         <input class="form-control" name="ae.name" id="ae.name"/>
										     </div>
										     <label class="control-label col-md-2">地址：</label>
										     <div class="col-md-4">
										         <input class="form-control" name="ae.address" id="ae.address" />
										     </div>
										</div>
										<div class="form-group">
										     <label class="control-label col-md-2">联系方式：</label>
										     <div class="col-md-4">
										         <input class="form-control"  name="ae.phone" />
										     </div>
										     <label class="control-label col-md-2">评价：</label>
										     <div class="col-md-4">
										         <input class="form-control" name="ae.summary" />
										     </div>
										</div>
										<div style="text-align: center;">
											<input type="button" name="addHkgsxx" id="addHkgsxx"
												class="btn btn-info" value="添加"  />
										</div>
									</form>
								</div>

							</div>
						</div>
					</div>

					<!-- end row -->

					<!-- begin row -->
					<div class="row">

						<!-- begin col-md-6 -->

						<!-- end col-md-6 -->

						<!-- begin col-md-6 -->


						<!-- end col-md-6 -->

					</div>
					<!-- end row -->

					<!-- begin row -->
					<div class="row">
						<!-- begin col-md-8 -->

						<!-- end col-md-8 -->

						<!-- begin col-md-4 -->

					</div>

					<!-- end row -->
				</div>
				<!-- end #content -->



				<!-- begin theme-panel -->
				<div class="theme-panel">
					<a href="javascript:;" data-click="theme-panel-expand"
						class="theme-collapse-btn"><i class="fa fa-cog"></i> </a>
					<div class="theme-panel-content">
						<h5 class="m-t-0">
							Color Theme
						</h5>
						<ul class="theme-list clearfix">
							<li class="active">
								<a href="javascript:;" class="bg-green" data-theme="default"
									data-click="theme-selector" data-toggle="tooltip"
									data-trigger="hover" data-container="body" data-title="Default">
									&nbsp;</a>
							</li>
							<li>
								<a href="javascript:;" class="bg-red" data-theme="red"
									data-click="theme-selector" data-toggle="tooltip"
									data-trigger="hover" data-container="body" data-title="Red">
									&nbsp;</a>
							</li>
							<li>
								<a href="javascript:;" class="bg-blue" data-theme="blue"
									data-click="theme-selector" data-toggle="tooltip"
									data-trigger="hover" data-container="body" data-title="Blue">
									&nbsp;</a>
							</li>
							<li>
								<a href="javascript:;" class="bg-purple" data-theme="purple"
									data-click="theme-selector" data-toggle="tooltip"
									data-trigger="hover" data-container="body" data-title="Purple">
									&nbsp;</a>
							</li>
							<li>
								<a href="javascript:;" class="bg-orange" data-theme="orange"
									data-click="theme-selector" data-toggle="tooltip"
									data-trigger="hover" data-container="body" data-title="Orange">
									&nbsp;</a>
							</li>
							<li>
								<a href="javascript:;" class="bg-black" data-theme="black"
									data-click="theme-selector" data-toggle="tooltip"
									data-trigger="hover" data-container="body" data-title="Black">
									&nbsp;</a>
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
									data-click="reset-local-storage"> <i
									class="fa fa-refresh m-r-3"></i>Reset Local Storage </a>
							</div>
						</div>
					</div>
				</div>
				<!-- end theme-panel -->
				<!-- begin scroll to top btn -->
				<a href="javascript:;"
					class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
					data-click="scroll-top"><i class="fa fa-angle-up"></i> </a>
				<!-- end scroll to top btn -->
			</div>
			<!-- end page container -->
			<!-- ================== BEGIN BASE JS ================== -->
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
			<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
			<!-- ================== END BASE JS ================== -->

			<!-- ================== BEGIN PAGE LEVEL JS ================== -->
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/DataTables/js/jquery.dataTables.js"></script>
			<script
				src="<%=basePath%>BacksAdmin/assets/plugins/DataTables/js/dataTables.tableTools.js"></script>
			<script
				src="<%=basePath%>BacksAdmin/assets/js/table-manage-tabletools.demo.min.js"></script>
			<script src="<%=basePath%>BacksAdmin/assets/js/apps.min.js"></script>
			<script src="<%=basePath%>/resource/foreground/js/jquery.validate.js"></script>
			<script src="<%=basePath%>BacksAdmin/aircompany/js/addHkgsxx.js"></script>
			<!-- ================== END PAGE LEVEL JS ================== -->

			<script>
	$(document).ready(function() {
		App.init();
		//TableManageTableTools.init();
		});

	$(function() {
		var table = $("#data-table").dataTable( {
			language : {
				"sProcessing" : "处理中...",
				"sLengthMenu" : "显示 _MENU_ 项结果",
				"sZeroRecords" : "没有匹配结果",
				"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
				"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
				"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
				"sInfoPostFix" : "",
				"sSearch" : "搜索:",
				"sUrl" : "",
				"sEmptyTable" : "表中数据为空",
				"sLoadingRecords" : "载入中...",
				"sInfoThousands" : ",",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上页",
					"sNext" : "下页",
					"sLast" : "末页"
				},
				"oAria" : {
					"sSortAscending" : ": 以升序排列此列",
					"sSortDescending" : ": 以降序排列此列"
				}
			}
		});

		/*	 $('#data-table tbody').on('click', 'td.details-control', function () {
			 
		    var tr = $(this).closest('tr');
		    var tr2=$(tr.next());
		    var i=tr.children("td").eq(0).children("i").eq(0);
		    if(i.hasClass("glyphicon-plus"))
		    {
		    i.removeClass("glyphicon-plus");
		   i.addClass("glyphicon-minus");
		   // tr.after(format());
		    }
		    else{
		     i.removeClass("glyphicon-minus");
		     i.addClass("glyphicon-plus");
		    }
		   
		} );*/

		/*  $('#data-table tbody').on('click', 'td.details-control', function () {
		      var tr = $(this).closest('tr');
		      var row = table.row( tr );
		      if ( row.child.isShown() ) {
		          // This row is already open - close it
		          row.child.hide();
		          tr.removeClass('shown');
		      }
		      else {
		          // Open this row
		          row.child( format(row.data()) ).show();
		          tr.addClass('shown');
		      }
		  } );*/

	})
</script>
	</body>
</html>
