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
    
    <title>My JSP 'foot.jsp' starting page</title>
    
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
   	<!-- BEGIN FOOTER -->

		<div class="footer">

			<div class="footer-inner">

				2015 &copy; Nothing is impossible.

			</div>

			<div class="footer-tools">

				<span class="go-top"> <i class="icon-angle-up"></i> </span>

			</div>

		</div>

		<!-- END FOOTER -->

		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

		<!-- BEGIN CORE PLUGINS -->

		<script src="<%=basePath%>/resource/media/js/jquery-1.10.1.min.js"
			type="text/javascript"></script>

		<script
			src="<%=basePath%>/resource/media/js/jquery-migrate-1.2.1.min.js"
			type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script
			src="<%=basePath%>/resource/media/js/jquery-ui-1.10.1.custom.min.js"
			type="text/javascript"></script>

		<script src="<%=basePath%>/resource/media/js/bootstrap.min.js"
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
</html>
