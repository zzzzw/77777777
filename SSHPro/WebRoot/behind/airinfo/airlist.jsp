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



			<!-- BEGIN PAGE CONTENT-->
			<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="<%=basePath%>/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath%>/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath%>/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath%>/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath%>/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath%>/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="<%=basePath%>/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="<%=basePath%>/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
			
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

							<a href="<%=basePath%>/behind/management-index.jsp">首页</a>

							<i class="icon-angle-right"></i>

							<a>航班管理</a>

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
							<i class="icon-edit"></i>航班列表
						</div>



					</div>

					<div class="portlet-body">

						<div class="clearfix">

							<div class="btn-group">

								
								<a href="<%=basePath%>/behind/airinfo/airupdate.jsp" id="sample_editable_1_new" class="btn green">
									添加
									<i class="icon-plus"></i>
								</a>

							</div>

							<div class="btn-group pull-right">
							
							

								<button id="sample_editable_1_new" type="button" class="btn blue" data-toggle="modal" data-target="#myModal">

									查询
									<i class="icon-plus"></i>

								</button>
								
								<!-- Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog" style="width: 300px" align="center"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												
											</div>
											<div class="modal-body ">
										
											<div class="tab-pane">
											<h4>航班查询</h4>

											<form action="line-manager!querybyproperties.action" method="post">

												<input type="text" class="m-wrap"  name="l.startcity" placeholder="出发城市"  style="height: 30px"/><br />

												<input type="text" class="m-wrap" name="l.endcity" placeholder="到达城市"  style="height: 30px"/>
												<br>
												<input type="date" class="m-wrap"  name="l.planedate" style="height: 30px"/>
												<br>

												

												<button type="submit" class="btn green">查询</button>

											</form>
											</div>
											
												
											</div>
											
										</div>
									</div>
								</div>
								<!-- end -->
								<button class="btn dropdown-toggle" data-toggle="dropdown">
									工具
									<i class="icon-angle-down"></i>

								</button>

								<ul class="dropdown-menu pull-right">

									<li>
										<a href="#">打印</a>
									</li>

									<li>
										<a href="#">Save as PDF</a>
									</li>

									<li>
										<a href="#">Export to Excel</a>
									</li>

								</ul>

							</div>

						</div>

						
						
					


						<table
							class="table table-striped table-hover table-bordered"
							id="table_id">

							<thead>

								<tr>

									<th>
										航班号
									</th>

									<th>
										出发城市
									</th>

									<th>
										到达城市
									</th>

									<th>
										日期
									</th>

									<th>
										时间
									</th>

									<th>
										操作
									</th>

								</tr>

							</thead>

							<tbody>
								<s:iterator value="hblist" var="hb">
									<tr class="">
										<td>
											${hb[1]}
										</td>
										<td>
											<s:property value="#hb[11]" />
											(${hb[7]})
										</td>
										<td>
											<s:property value="#hb[12]" />
											(${hb[8] })
										</td>
										<td>
											<s:property value="#hb[2]" />
										</td>
										<td>
											<s:property value="#hb[9]" />
											-
											<s:property value="#hb[10]" />
										</td>
										<td>
											<a href="line-manager!querybyid.action?seatid=${hb[0]}" class="btn green" style="height: 15px">详细</a>
										</td>
									</tr>
								</s:iterator>
							</tbody>

						</table>
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.7/css/jquery.dataTables.css">
 
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
 
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.7/js/jquery.dataTables.js"></script>

						
						<script type="text/javascript">
	                        $('#table_id').DataTable({
   			 language: {
        "sProcessing": "处理中...",
        "sLengthMenu": "显示 _MENU_ 项结果",
        "sZeroRecords": "没有匹配结果",
        "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
        "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
        "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
        "sInfoPostFix": "",
        "sSearch": "搜索:",
        "sUrl": "",
        "sEmptyTable": "表中数据为空",
        "sLoadingRecords": "载入中...",
        "sInfoThousands": ",",
        "oPaginate": {
            "sFirst": "首页",
            "sPrevious": "上页",
            "sNext": "下页",
            "sLast": "末页"
        },
        "oAria": {
            "sSortAscending": ": 以升序排列此列",
            "sSortDescending": ": 以降序排列此列"
        }
    }
});
                        </script>





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