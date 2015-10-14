<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>


	</head>
	<!-- END HEAD -->
	<!-- BEGIN BODY -->
	<body class="page-header-fixed">
		<!-- 头部导入 -->
		<jsp:include page="../header.jsp"></jsp:include>

		<!-- BEGIN CONTAINER -->

		<div class="page-container">
			<!-- 菜单导入 -->
			<jsp:include page="../menu.jsp"></jsp:include>

			<!-- BEGIN PAGE -->
			<!-- BEGIN PAGE LEVEL STYLES -->

	 



<script type="text/javascript" src="<%=basePath%>/behind/airinfo/js/update.js"></script>

			<!-- BEGIN PAGE CONTENT-->

			<div class="row-fluid">

				<div class="span12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->

					<h3 class="page-title">


					</h3>

					<ul class="breadcrumb">

						<li>

							<i class="icon-home"></i>

							<a href="<%=basePath%>/behind/management-index.jsp">首页</a>

							<i class="icon-angle-right"></i>

							<a>航班详细信息</a>

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

					<div class="portlet-title">

						<div class="caption">
							<i class="icon-edit"></i>航班信息
						</div>



					</div>

					<div >
						<div class="portlet-body form">

											<!-- BEGIN FORM-->

											<div class="form-horizontal form-view">

												<s:iterator value="hblist" var="hb">

												<h3 class="form-section">基本信息</h3>

												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" for="firstName">航班号:</label>

															<div class="controls">

																<span class="text bold">${hb[1]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" for="lastName">公司:</label>

															<div class="controls">

																<span class="text bold">${hb[16]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

												</div>

												<!--/row-->

												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >出发城市:</label>

															<div class="controls">

																<span class="text bold">${hb[12]}</span> 

															</div>

														</div>

													</div>

													<!--/span-->

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >到达城市:</label>

															<div class="controls">

																<span class="text bold">${hb[13]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

												</div>

												<!--/row-->        

												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >出发时间:</label>

															<div class="controls">

																<span class="text bold">${hb[10]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >到达时间:</label>

															<div class="controls">                                                

																<span class="text bold">${hb[11]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

												</div>
												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >出发日期:</label>

															<div class="controls">

																<span class="text bold">${hb[2]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >距离:</label>

															<div class="controls">                                                

																<span class="text bold">${hb[15]}公里</span>

															</div>

														</div>

													</div>

													<!--/span-->

												</div>
												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >飞机:</label>

															<div class="controls">

																<span class="text bold">${hb[26]}</span>

															</div>

														</div>

													</div>

													<!--/span-->

												

													<!--/span-->

												</div>

												<!--/row-->                

												<h3 class="form-section">座位信息</h3>

												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >头等舱:</label>

															<div class="controls">

																<span class="text">已预订：${hb[3]} (总数：${hb[18]})--${hb[22]}元</span>

															</div>

														</div>

													</div>
													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >公务舱:</label>

															<div class="controls">

																<span class="text">已预订：${hb[4]} (总数：${hb[19]})--${hb[23]}元</span>

															</div>

														</div>

													</div>

												</div>

												<div class="row-fluid">

													<div class="span6 ">

														<div class="control-group">

															<label class="control-label" >经济舱:</label>

															<div class="controls">

																<span class="text">已预订：${hb[5]} (总数：${hb[20]})--${hb[24]}元</span>

															</div>

														</div>

													</div>

													<!--/span-->

													<div class="span6">

														<div class="control-group">

															<label class="control-label" >特惠舱:</label>

															<div class="controls">

																<span class="text">已预订：${hb[6]} (总数：${hb[21]})--${hb[25]}元</span>

															</div>

														</div>

													</div>

													<!--/span-->

												</div>

												<!--/row-->           

												

												<div class="form-actions">

													<a href="line-manager!querybyid.action?seatid=${hb[0]}&&k=1" class="btn blue"><i class="icon-pencil"></i>更改</a>

													<button type="button" class="btn" onclick="history.go(-1)" >返回</button>
													<s:set name="tdc" value="#hb[3]"></s:set>
													<s:set name="swc" value="#hb[4]"></s:set>
													<s:set name="jjc" value="#hb[5]"></s:set>
													<s:set name="thc" value="#hb[6]"></s:set>
													<s:if test="#tdc==0&&#swc==0&&jjc==0&&thc==0">
													<button type="button" class="btn red" onclick="history.go(-1)" >删除</button>
													</s:if>
													
													<s:else>
													<button type="button" class="btn red"  disabled="disabled">删除</button>
													</s:else>
													

												</div>
												</s:iterator>
											</div>






					

					</div>













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
		<jsp:include page="../foot.jsp"></jsp:include>

	</body>

	<!-- END BODY -->

</html>