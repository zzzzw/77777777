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
		
		<link href="<%=basePath%>/behind/plane/bootstrap/css/bootstrap.min.css"
			rel="stylesheet" type="text/css" />
			
		<!-- 引入dataTables -->
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/behind/plane/css/jquery.dataTables.css" />



		<link
			href="<%=basePath%>/resource/media/css/bootstrap-responsive.min.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/font-awesome.min.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/style-metro.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/style.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/style-responsive.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/default.css"
			rel="stylesheet" type="text/css" id="style_color" />

		<link href="<%=basePath%>/resource/media/css/uniform.default.css"
			rel="stylesheet" type="text/css" />

		<!-- END GLOBAL MANDATORY STYLES -->

		<!-- BEGIN PAGE LEVEL STYLES -->

		<link href="<%=basePath%>/resource/media/css/jquery.gritter.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/daterangepicker.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/fullcalendar.css"
			rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>/resource/media/css/jqvmap.css"
			rel="stylesheet" type="text/css" media="screen" />

		<link
			href="<%=basePath%>/resource/media/css/jquery.easy-pie-chart.css"
			rel="stylesheet" type="text/css" media="screen" />

		<!-- END PAGE LEVEL STYLES -->

		<link rel="shortcut icon"
			href="<%=basePath%>/resource/media/image/favicon.ico" />
			
		


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


				<!-- BEGIN EXAMPLE TABLE PORTLET-->

				<div>

					<table id="example" class="table" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>
									Name
								</th>
								<th>
									Position
								</th>
								<th>
									Office
								</th>
								<th>
									Age
								</th>
								<th>
									Start date
								</th>
								<th>
									Salary
								</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>
									Name
								</th>
								<th>
									Position
								</th>
								<th>
									Office
								</th>
								<th>
									Age
								</th>
								<th>
									Start date
								</th>
								<th>
									Salary
								</th>
							</tr>
						</tfoot>
						<tbody>
							<tr>
								<td>
									Tiger Nixon
								</td>
								<td>
									System Architect
								</td>
								<td>
									Edinburgh
								</td>
								<td>
									61
								</td>
								<td>
									2011/04/25
								</td>
								<td>
									$320,800
								</td>
							</tr>
							<tr>
								<td>
									Prescott Bartlett
								</td>
								<td>
									Technical Author
								</td>
								<td>
									London
								</td>
								<td>
									27
								</td>
								<td>
									2011/05/07
								</td>
								<td>
									$145,000
								</td>
							</tr>
							<tr>
								<td>
									Gavin Cortez
								</td>
								<td>
									Team Leader
								</td>
								<td>
									San Francisco
								</td>
								<td>
									22
								</td>
								<td>
									2008/10/26
								</td>
								<td>
									$235,500
								</td>
							</tr>
							<tr>
								<td>
									Airi Satou
								</td>
								<td>
									Accountant
								</td>
								<td>
									Tokyo
								</td>
								<td>
									33
								</td>
								<td>
									2008/11/28
								</td>
								<td>
									$162,700
								</td>
							</tr>
							<tr>
								<td>
									Brielle Williamson
								</td>
								<td>
									Integration Specialist
								</td>
								<td>
									New York
								</td>
								<td>
									61
								</td>
								<td>
									2012/12/02
								</td>
								<td>
									$372,000
								</td>
							</tr>
							<tr>
								<td>
									Herrod Chandler
								</td>
								<td>
									Sales Assistant
								</td>
								<td>
									San Francisco
								</td>
								<td>
									59
								</td>
								<td>
									2012/08/06
								</td>
								<td>
									$137,500
								</td>
							</tr>
							<tr>
								<td>
									Rhona Davidson
								</td>
								<td>
									Integration Specialist
								</td>
								<td>
									Tokyo
								</td>
								<td>
									55
								</td>
								<td>
									2010/10/14
								</td>
								<td>
									$327,900
								</td>
							</tr>
							<tr>
								<td>
									Colleen Hurst
								</td>
								<td>
									Javascript Developer
								</td>
								<td>
									San Francisco
								</td>
								<td>
									39
								</td>
								<td>
									2009/09/15
								</td>
								<td>
									$205,500
								</td>
							</tr>
							<tr>
								<td>
									Sonya Frost
								</td>
								<td>
									Software Engineer
								</td>
								<td>
									Edinburgh
								</td>
								<td>
									23
								</td>
								<td>
									2008/12/13
								</td>
								<td>
									$103,600
								</td>
							</tr>
							<tr>
								<td>
									Garrett Winters
								</td>
								<td>
									Accountant
								</td>
								<td>
									Tokyo
								</td>
								<td>
									63
								</td>
								<td>
									2011/07/25
								</td>
								<td>
									$170,750
								</td>
							</tr>
							<tr>
								<td>
									Ashton Cox
								</td>
								<td>
									Junior Technical Author
								</td>
								<td>
									San Francisco
								</td>
								<td>
									66
								</td>
								<td>
									2009/01/12
								</td>
								<td>
									$86,000
								</td>
							</tr>
							<tr>
								<td>
									Cedric Kelly
								</td>
								<td>
									Senior Javascript Developer
								</td>
								<td>
									Edinburgh
								</td>
								<td>
									22
								</td>
								<td>
									2012/03/29
								</td>
								<td>
									$433,060
								</td>
							</tr>
						</tbody>


					</table>

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
		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

		<!-- BEGIN CORE PLUGINS -->

		<!-- 自定义 -->
		<script type="text/javascript"
			src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
		<script src="<%=basePath%>/behind/plane/js/jquery.dataTables.js"></script>
		<script src="<%=basePath%>/behind/plane/js/dataTables.bootstrap.css"></script>
		<script type="text/javascript"
			src="<%=basePath%>/behind/plane/js/search.js"></script>

		<script src="<%=basePath%>/resource/media/js/bootstrap.min.js"
			type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script
			src="<%=basePath%>/resource/media/js/jquery-ui-1.10.1.custom.min.js"
			type="text/javascript"></script>



		<!--[if lt IE 9]>

	<script src="<%=basePath%>/resource/media/js/excanvas.min.js"></script>

	<script src="<%=basePath%>/resource/media/js/respond.min.js"></script>  

	<![endif]-->

		<script src="<%=basePath%>/resource/media/js/jquery.slimscroll.min.js"
			type="text/javascript"></script>

		<script src="<%=basePath%>/resource/media/js/jquery.blockui.min.js"
			type="text/javascript"></script>

		<script src="<%=basePath%>/resource/media/js/jquery.cookie.min.js"
			type="text/javascript"></script>

		<script src="<%=basePath%>/resource/media/js/jquery.uniform.min.js"
			type="text/javascript"></script>

		<!-- END CORE PLUGINS -->

		<!-- BEGIN PAGE LEVEL PLUGINS 

	

	<script src="<%=basePath%>/resource/media/js/jquery.flot.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/jquery.flot.resize.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/jquery.pulsate.min.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/date.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/daterangepicker.js" type="text/javascript"></script>     

	<script src="<%=basePath%>/resource/media/js/jquery.gritter.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/fullcalendar.min.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

	<script src="<%=basePath%>/resource/media/js/jquery.sparkline.min.js" type="text/javascript"></script>  

	<!-- END PAGE LEVEL PLUGINS -->

		<!-- BEGIN PAGE LEVEL SCRIPTS -->

		<script src="<%=basePath%>/resource/media/js/app.js"
			type="text/javascript"></script>

		<script src="<%=basePath%>/resource/media/js/index.js"
			type="text/javascript"></script>

		<!-- END PAGE LEVEL SCRIPTS -->

		<script>
	jQuery(document).ready(function() {

		App.init(); // initlayout and core plugins

			Index.init();

			Index.initJQVMAP(); // init index page's custom scripts

			Index.initCalendar(); // init index page's custom scripts

			Index.initCharts(); // init index page's custom scripts

			Index.initChat();

			Index.initMiniCharts();

			Index.initDashboardDaterange();

			Index.initIntro();

		});
</script>

		<!-- END JAVASCRIPTS -->
	</body>

	<!-- END BODY -->

</html>