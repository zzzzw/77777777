

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!--引入struts标签 -->
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>

	<head>

		<meta charset="utf-8" />
	</head>
	<!-- END HEAD -->
	<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		<script src="<%=basePath%>/resource/jquery/jquery1.11.3.min.js"></script>
		<!--css框架--引入bootstrap-->
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.css"
			rel="stylesheet">


		<!-- 引入自己的js/css -->
<style>
/*标签选择器*/
input[type="text"] {
	width: 60%;
	
}
</style>
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

					

		<div class="container">
		

			<form class="form-horizontal" action="tuser!add.action" method=" post"  >

				<div class="control-group">
                   <input type="hidden"  value="${ tue.id}" name="tue.id"/>
					<!-- Text input-->
					<label class="control-label" for="input01">
						姓名
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入姓名" class="input-xlarge"
							name="tue.name" value="${tue.name}">

					</div>
				</div>

				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						身份证
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入身份证" class="input-xlarge"
							name="tue.idcard" value="${tue.idcard}">

					</div>
				</div>
				
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						性别
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入性别" class="input-xlarge"
							name="tue.sex" value="${tue.sex}">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						联系电话
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入联系电话" class="input-xlarge"
							name="tue.phone" value="${tue.phone}">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						设置账户
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入你想要设置的账户" class="input-xlarge"
							name="tue.account" value="${tue.account}">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						密码
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入设置的密码" class="input-xlarge"
							name="tue.psw" value="${tue.psw}">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						会员类型
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入会员类型" class="input-xlarge"
							name="tue.type" value="${tue.type}">

					</div>
				</div>			
				<br />
				<div class="control-group text-center">

					<input type="submit" class="btn green" value="保存" />
					<input type="button" class="btn green"
						onclick="location.href='tuser!show.action'" value="返回" />

				</div>


			</form>


		</div>
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

