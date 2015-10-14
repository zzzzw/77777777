<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <!-- BEGIN SIDEBAR -->

			<div class="page-sidebar nav-collapse collapse">

				<!-- BEGIN SIDEBAR MENU -->

				<ul class="page-sidebar-menu">

					<li>

						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

						<div class="sidebar-toggler hidden-phone"></div>

						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					</li>

					<li>

						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

						<form class="sidebar-search">

							<div class="input-box">

								<a href="javascript:;" class="remove"></a>

								<input type="text" placeholder="Search..." />

								<input type="button" class="submit" value=" " />

							</div>

						</form>

						<!-- END RESPONSIVE QUICK SEARCH FORM -->

					</li>

					<li class="start active ">

						<a href="#"> <i class="icon-home"></i> <span
							class="title">首页</span> <span class="selected"></span> </a>

					</li>

					<li class="">

						<a href="javascript:;"> <i class="icon-cogs"></i> <span
							class="title">订单管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">


							<li>

								<a href="layout_boxed_not_responsive.html"> Non-Responsive
									Boxed Layout</a>

							</li>

						</ul>

					</li>

					<li class="">

						<a href="javascript:;"> <i class="icon-bookmark-empty"></i> <span
							class="title">航空公司管理</span> <span class="arrow "></span> </a>
						<ul class="sub-menu">

							

						</ul>

					</li>

					<li class="">

						<a href="javascript:;"> <i class="icon-table"></i> <span
							class="title">人员管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">

							<li>
								<a href="form_layout.html"> Form Layouts</a>
							</li>
						</ul>

					</li>

					<li class="">

						<a href="javascript:;"> <i class="icon-briefcase"></i> <span
							class="title">折扣管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">


							<li>

								<a href="page_calendar.html"> <i class="icon-calendar"></i>

									Calendar</a>

							</li>

						</ul>

					</li>

					<li class="">

						<a href="javascript:;"> <i class="icon-gift"></i> <span
							class="title">航班管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">


								<li >

							<a href="line-manager!queryLineToday.action">

							查询航班</a>

						</li>

						<li >

							<a href="table_responsive.html">

							添加航班</a>

						</li>

						<li >

							<a href="table_managed.html">

							航班管理帮助</a>

						</li>

						</ul>

					</li>

					<li>

						<a class="active" href="javascript:;"> <i class="icon-sitemap"></i>

							<span class="title">飞机管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">

							<li>

								<a href="javascript:;"> 查询 </a>



							</li>

							<li>

								<a href="javascript:;"> 增加 </a>

							</li>


						</ul>

					</li>

					<li>

						<a href="javascript:;"> <i class="icon-folder-open"></i> <span
							class="title">客户管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">

							<li>

								<a href="javascript:;"> <i class="icon-cogs"></i> 查询 </a>

							</li>
							<li>
								<a href="javascript:;"> <i class="icon-globe"></i> 增加 </a>
							</li>
						</ul>
					</li>
					<li class="">
						<a href="javascript:;"> <i class="icon-user"></i> <span
							class="title">座位管理</span> <span class="arrow "></span> </a>

						<ul class="sub-menu">

							<li>
								<a href="login.html"> Login Form 1</a>
							</li>



						</ul>

					</li>









				</ul>

				<!-- END SIDEBAR MENU -->

			</div>

			<!-- END SIDEBAR -->
			<div class="page-content">

				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

				<div id="portlet-config" class="modal hide">

					<div class="modal-header">

						<button data-dismiss="modal" class="close" type="button"></button>

						<h3>
							Widget Settings
						</h3>

					</div>

					<div class="modal-body">

						Widget settings form goes here

					</div>

				</div>

				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

				<!-- BEGIN PAGE CONTAINER-->

				<div class="container-fluid">

					<!-- BEGIN PAGE HEADER-->

					<div class="row-fluid">

						<div class="span12">

							<!-- BEGIN STYLE CUSTOMIZER -->

							<div class="color-panel hidden-phone">



								<div class="color-mode-icons icon-color-close"></div>

								<div class="color-mode">

									<p>
										THEME COLOR
									</p>

									<ul class="inline">

										<li class="color-black current color-default"
											data-style="default"></li>

										<li class="color-blue" data-style="blue"></li>

										<li class="color-brown" data-style="brown"></li>

										<li class="color-purple" data-style="purple"></li>

										<li class="color-grey" data-style="grey"></li>

										<li class="color-white color-light" data-style="light"></li>

									</ul>

									<label>

										<span>Layout</span>

										<select class="layout-option m-wrap small">

											<option value="fluid" selected>
												Fluid
											</option>

											<option value="boxed">
												Boxed
											</option>

										</select>

									</label>

									<label>

										<span>Header</span>

										<select class="header-option m-wrap small">

											<option value="fixed" selected>
												Fixed
											</option>

											<option value="default">
												Default
											</option>

										</select>

									</label>

									<label>

										<span>Sidebar</span>

										<select class="sidebar-option m-wrap small">

											<option value="fixed">
												Fixed
											</option>

											<option value="default" selected>
												Default
											</option>

										</select>

									</label>

									<label>

										<span>Footer</span>

										<select class="footer-option m-wrap small">

											<option value="fixed">
												Fixed
											</option>

											<option value="default" selected>
												Default
											</option>

										</select>

									</label>

								</div>

							</div>

							<!-- END BEGIN STYLE CUSTOMIZER -->
  </body>
</html>
