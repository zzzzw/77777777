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
			
			<div>
                 <br>
				<form action="tuser!check.action" method="post">
					<div class="col-md-4">
						<label class="control-label" for="input01">
							姓名
						</label>
						<input type="text" placeholder="placeholder" class="input-xlarge"
							name="tue.name">
					</div>
					<div class="col-md-4">
						<label class="control-label" for="input01">
							身份证号
						</label>
						<input type="text" placeholder="placeholder" class="input-xlarge"
							name="tue.idcard">
					</div>
					<div class="col-md-4">
						<input type="submit" value="搜索" class="btn green"/>
					</div>

				</form>
			</div>
			<br />

			<p class="text-right">
				<a href="behind/ordermd/Tuser1.jsp" class="btn green">添加</a>
				<a href="" class="btn green">返回</a>
			</p>

			<table border=1
				class="table table-bordered table-hover table-condensed text-center">
				<tr>
					<td width="20%">
						姓名
					</td>
					<td width="10%">
						身份证号
					</td>
					<td width="10%">
						性别
					</td>
					<td width="10%"> 
						电话
					</td>
					<td width="10%">
					           类型 
					</td>
					<td width="10%">
					            账户
					</td>
					<td>
					           密码
					</td>
				</tr>


				<s:iterator value="userlist" var="u">
					<tr>
						<td>
							${u.name}
						</td>
						<td>
							${u.idcard}
						</td>
						<td>
							${u.sex}
						</td>
						<td>
							${u.phone}
						</td>
						<td>
							${u.type}
						</td>
						<td>
							${u.account}
						</td>
						<td>
							${u.psw}
						</td>
						<td>
							<a class="btn green"
								href="tuser!tz.action?tue.id=${u.id}">修改</a>
							<a class="btn green"
								href="tuser!delete.action?tue.id=${u.id}">删除</a>
						</td>
					</tr>
				</s:iterator>
			</table>
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
