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

		<meta charset="utf-8" />
	</head>
	<!-- END HEAD -->
	<!-- BEGIN BODY -->
	<body class="page-header-fixed">
    <!-- 头部导入 -->
	<jsp:include page="header.jsp"></jsp:include>

		<!-- BEGIN CONTAINER -->

		<div class="page-container">
			<!-- 菜单导入 -->
			<jsp:include page="menu.jsp"></jsp:include>		
				
			<!-- BEGIN PAGE -->
			
			

						<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">
							<!-- BEGIN PAGE TITLE & BREADCRUMB-->

							<h3 class="page-title">

								首页
								<small>Welcome！</small>

							</h3>

							<ul class="breadcrumb">

								<li>

									<i class="icon-home"></i>

									<a href="#">首页</a>

									<i class="icon-angle-right"></i>

								</li>

								<li>
									<a href="#"></a>
								</li>

								<li class="pull-right no-text-shadow">

									<div id="dashboard-report-range"
										class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive"
										data-tablet="" data-desktop="tooltips" data-placement="top"
										data-original-title="Change dashboard date range">

										<i class="icon-calendar"></i>

										<span></span>

										<i class="icon-angle-down"></i>

									</div>

								</li>

							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>
						<!-- BEGIN EXAMPLE TABLE PORTLET-->

						<div class="portlet box blue">

							这里填写你们想添加的内容

						</div>

						<!-- END EXAMPLE TABLE PORTLET-->

					</div>

				</div>

				
					<!-- END PAGE HEADER-->

				</div>

				<!-- END PAGE CONTAINER-->

			</div>

			<!-- END PAGE -->

		</div>

		<!-- END CONTAINER -->
	<!-- 尾部导入 -->
	<jsp:include page="foot.jsp"></jsp:include>
	</body>

	<!-- END BODY -->

</html>