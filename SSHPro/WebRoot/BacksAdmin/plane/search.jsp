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
<title>AirPlane| searcPlane</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" 
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
<link href="<%=basePath%>BacksAdmin/assets/plugins/DataTables/css/data-table.css"
	rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="<%=basePath%>BacksAdmin/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->

<!-- ================== BEGIN PAGE CSS STYLE ================== -->
    <link href="<%=basePath%>BacksAdmin/assets/plugins/morris/morris.css" rel="stylesheet" />
	<!-- ================== END PAGE CSS STYLE ================== -->
	
	 <link href="<%=basePath%>BacksAdmin/plane/css/search.css" rel="stylesheet" />

<script src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>

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

								<li class="active">
									<a href="<%=basePath%>/BacksAdmin/index.jsp">主控面板</a>
								</li>

							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-file-o"></i> <span>购票管理</span> </a>
							<ul class="sub-menu">
								<li>
									<a href="<%=basePath%>/BacksAdmin/flight/chapiao.jsp">在线购票</a>
								</li>
								<li>
									<a href="<%=basePath%>/BacksAdmin/order_approve/list.jsp">订单审核</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-newspaper-o"></i> <span>航空公司管理</span> </a>
							<ul class="sub-menu">
								<li>
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
						<li class="has-sub active">
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
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-users"></i> <span>客户管理</span> </a>
							<ul class="sub-menu">
								<li class="active">
									<a href="<%=basePath%>/BacksAdmin/ordermd/tuser!show.action">查询</a>
								</li>
								<li>
									<a href="<%=basePath%>/BacksAdmin/ordermd/Tuser1.jsp">添加</a>
								</li>
							</ul>
						</li>
						<li class="has-sub">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-list-alt"></i> <span>季度报表</span> </a>
							<ul class="sub-menu">
								<li>
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
						<li>
							<a href="javascript:;" class="sidebar-minify-btn"
								data-click="sidebar-minify"><i
								class="fa fa-angle-double-left"></i>
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

			<div class="row">
				<!-- begin breadcrumb -->
				<ol class="breadcrumb pull-right">
					<li><a href="javascript:;">主页</a></li>
					<li><a href="javascript:;">飞机管理</a></li>
					<li class="active">查询</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- begin page-header -->
				<h1 class="page-header">
					神圣航空 <small>每一架飞机都是纸飞机...</small>
				</h1>
			</div>
			<!-- end page-header -->
			<!-- begin row -->
			<div class="row">

				
				
					<!-- begin panel -->
					<div class="panel panel-inverse">
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-default"
									data-click="panel-expand"><i class="fa fa-expand"></i> </a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-success"
									data-click="panel-reload"><i class="fa fa-repeat"></i> </a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-warning"
									data-click="panel-collapse"><i class="fa fa-minus"></i> </a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-danger"
									data-click="panel-remove"><i class="fa fa-times"></i> </a>
							</div>
							<h4 class="panel-title">飞机管理</h4>
						</div>
						<div class="alert alert-info fade in">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span>
							</button>
							                 点击飞机型号显示座位分布图(  F:头等舱 B：商务舱  E：经济舱 C：特惠舱)|   红色：报废  | 蓝色：空闲    | 黄色：需修理|白色：正常
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table id="data-table"
									class="table table-bordered nowrap" width="100%">
									<thead>
										<tr>

											<th style="display:none;">编号</th>
											<th><input type="checkbox" id="selectall"/></th>
											<th>型号</th>
											<th>航班号</th>
											<th>F价格</th>
											<th>B价格</th>
											<th>E价格</th>
											<th>C价格</th>
											<th>F数量</th>
											<th>B数量</th>
											<th>E数量</th>
											<th>C数量</th>
											<th style="display:none;">图片地址</th>
											<th style="display:none;">状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="planelist" var="plane">
											<tr>
												<td style="display:none;"><s:property value="#plane.id" /></td>
												<td><input type="checkbox" name="pid" value="<s:property value="#plane.id" />"/></td>
												<td class="ptype" style="cursor:pointer;"><s:property value="#plane.planetype" /></td>
												<td><s:property value="#plane.lname" /></td>
												<td><s:property value="#plane.tdcprice" /></td>
												<td><s:property value="#plane.swcprice" /></td>
												<td><s:property value="#plane.jjcprice" /></td>
												<td><s:property value="#plane.thcprice" /></td>
												<td><s:property value="#plane.tdcnum" /></td>
												<td><s:property value="#plane.swcnum" /></td>
												<td><s:property value="#plane.jjcnum" /></td>
												<td><s:property value="#plane.thcnum" /></td>
												<td style="display:none;"><s:property value="#plane.imgurl" /></td>
												<td class="pstatus" style="display:none;"><s:property value="#plane.status" /></td>
												<td>
													<button class="btn btn-primary edit-btn" data-toggle="modal"
														data-target="#myModal">修改</button> 
												</td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
								<button style="float:right;" class="btn btn-danger col-md-2 del-btn">删除</button> 
							</div>
						</div>
					</div>
				
				<!-- end panel -->
			</div>
			<!-- end row -->

			<!-- begin row -->
			<div class="row">

				<!-- begin col-md-6 -->
				<div class="col-md-6" >
					<!-- begin panel -->
					<div class="panel panel-inverse" data-sortable-id="morris-chart-4" >
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-default"
									data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-success"
									data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-warning"
									data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-danger"
									data-click="panel-remove"><i class="fa fa-times"></i></a>
							</div>
							<h4 class="panel-title">舱位数量</h4>
						</div>
						<div class="panel-body">
							<h4 class="text-center">此飞机舱位数量</h4>
							<div id="morris-donut-chart" class="height-sm"></div>
<script>
$(function(){
$('#data-table tbody tr td.ptype').click( function () {
var pid=$(this).prev("td").prev("td").eq(0).text()
$.ajax({
type:"post",
url:'plane!planeinfo.action?plane.id='+pid,
dataType:"json",
data:{
},
success:function(data,textStatus){
var h=$("#morris-donut-chart").parent().parent().parent().offset().top;
$("#morris-donut-chart").prev("h4").text(data.planetype+"的座位数量");
$(document).scrollTop(h);
$("#morris-donut-chart").html("");
var blue = "#348fe2", 
blueLight = "#5da5e8", blueDark = "#1993E4", aqua = "#49b6d6", 
aquaLight = "#6dc5de", aquaDark = "#3a92ab", green = "#00acac", 
greenLight = "#33bdbd", greenDark = "#008a8a", orange = "#f59c1a", 
orangeLight = "#f7b048", orangeDark = "#c47d15", dark = "#2d353c", 
grey = "#b6c2c9", purple = "#727cb6", purpleLight = "#8e96c5", purpleDark = "#5b6392",
 red = "#ff5b57";
 var Path=getRootPath();
$("#planeimg").attr("src",Path+data.imgurl);
$("#planeimg").parent().prev("h4").text(data.planetype+'的舱位分布图');
    Morris.Donut({
      element: 'morris-donut-chart',
      data: [
        {value: data.tdcnum, label: '头等舱'},
        {value: data.swcnum, label: '商务舱'},
        {value: data.jjcnum, label: '经济舱'},
        {value: data.thcnum, label: '特惠舱'}
      ],
       colors: ['#E75045', '#5FBBEC', '#69C7A3', grey],
       resize: true,
      formatter: function (x) { return x + "个"}
    }).on('click', function(i, row){
      console.log(i, row);
    });
},
error:function(){
alert("错误！");
}
})
})
})

function getRootPath(){
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
    var curWwwPath=window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName=window.document.location.pathname;
    var pos=curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083
    var localhostPaht=curWwwPath.substring(0,pos);
    //获取带"/"的项目名，如：/uimcardprj
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
    return(localhostPaht+projectName);
}

</script>
						</div>
					</div>
					<!-- end panel -->


				</div>

				<!-- end col-md-6 -->

				<!-- begin col-md-6 -->
				<div class="col-md-6">
					<!-- begin panel -->
					<div class="panel panel-inverse" style="height:409px;" >
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-default"
									data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-success"
									data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-warning"
									data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-danger"
									data-click="panel-remove"><i class="fa fa-times"></i></a>
							</div>
							<h4 class="panel-title">飞机舱位图</h4>
						</div>
						<div class="panel-body">
							<h4 class="text-center">舱位分布</h4>
							<div>
							    <img id="planeimg" style="width:100%" src="<%=basePath %>BacksAdmin/plane/img/波音777.jpg" alt="..."/>							
							</div>
						</div>
					</div>
					<!-- end panel -->


				</div>

				<!-- end col-md-6 -->

			</div>
			<!-- end row -->

			<!-- begin row -->
			<div class="row">
			     <!-- begin col-md-8 -->
				<div class="col-md-8">
					<div class="widget-chart with-sidebar bg-black">
						<div class="widget-chart-content">
							<h4 class="chart-title">
								乘坐此飞机人数统计 <small>今年乘坐此飞机人数
									</small>
							</h4>
							<div id="visitors-line-chart" class="morris-inverse"
								style="height: 260px;"></div>
						</div>
						<div class="widget-chart-sidebar bg-black-darker">
							<div class="chart-number">
								1,225,729 <small>visitors</small>
							</div>
							<div id="visitors-donut-chart" style="height: 160px"></div>
							<ul class="chart-legend">
								<li><i class="fa fa-circle-o fa-fw text-success m-r-5"></i>34.0%
									<span>New Visitors</span></li>
								<li><i class="fa fa-circle-o fa-fw text-primary m-r-5"></i>56.0%
									<span>Return Visitors</span></li>
							</ul>
						</div>
					</div>
					
				</div>
				<!-- end col-md-8 -->
				
				<!-- begin col-md-4 -->
				<div class="col-md-4">
				      <div class="panel panel-inverse">
				           <div class="panel-heading">
                            <h4 class="panel-title">
                                飞机最新消息 <span class="label label-success pull-right">4 message</span></h4>
                        </div>
                         <div class="panel-body bg-silver">
                         <p>某年某月购入此飞机</p>
                         <p>某年某月飞机出故障</p>
                         <p>某年某月飞机维修成功</p>
                         <p>某年某月购入此飞机</p>
                         <p>某年某月飞机出故障</p>
                         <p>某年某月飞机维修成功</p>
                         <p>某年某月购入此飞机</p>
                         <p>某年某月飞机出故障</p>
                         <p>某年某月飞机维修成功</p>
                         <p>某年某月飞机维修成功</p>
                        </div>
				          
				      
				      </div>
				</div>
			</div>

			<!-- end row -->
		</div>
		<!-- end #content -->

		<!-- 开始模态弹出框 -->
		 <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:70%;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">修改</h4>
					</div>
					<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
						<input  type="hidden" id="planeid"
								placeholder="航班编号">
						<label class="control-label col-md-3">航班号：</label>
						  <div class="col-md-3">
							<input  type="text" class="form-control" id="lname"
								placeholder="航班号"></div>
								<label class="control-label col-md-3">飞机型号：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="planetype"
								placeholder="飞机型号"></div>
						</div>
						<div class="form-group">
						   <label class="control-label col-md-3">飞机状态：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="status"
								placeholder="飞机类型"></div>
								<label class="control-label col-md-3">舱位图url：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="planeurl"
								placeholder="舱位图url"></div>
						</div>
						<div class="form-group">
						<label class="control-label col-md-3">头等舱数量：</label>
						  <div class="col-md-3">
							<input  type="text" class="form-control" id="tdcnum"
								placeholder="头等舱数量"></div>
								<label class="control-label col-md-3">头等舱价格：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="tdcprice"
								placeholder="头等舱价格"></div>
						</div>
						<div class="form-group">
						    	<label class="control-label col-md-3">商务舱数量：</label>
						  <div class="col-md-3">
							<input  type="text" class="form-control" id="swcnum"
								placeholder="商务舱数量"></div>
								<label class="control-label col-md-3">商务舱价格：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="swcprice"
								placeholder="商务舱价格"></div>
						</div>
						<div class="form-group">
						<label class="control-label col-md-3">经济舱数量：</label>
						  <div class="col-md-3">
							<input  type="text" class="form-control" id="jjcnum"
								placeholder="经济舱数量"></div>
								<label class="control-label col-md-3">经济舱价格：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="jjcprice"
								placeholder="经济舱价格"></div>
						</div>
						<div class="form-group">
						<label class="control-label col-md-3">特惠舱数量：</label>
						  <div class="col-md-3">
							<input  type="text" class="form-control" id="thcnum"
								placeholder="特惠舱数量"></div>
								<label class="control-label col-md-3">特惠舱价格：</label>
							<div class="col-md-3">	<input type="text" class="form-control"  id="thcprice"
								placeholder="特惠舱价格"></div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="save">保存</button>
					</div>
					</form>
				</div>
			</div>
		</div>



		<!-- begin theme-panel -->
		<div class="theme-panel">
			<a href="javascript:;" data-click="theme-panel-expand"
				class="theme-collapse-btn"><i class="fa fa-cog"></i> </a>
			<div class="theme-panel-content">
				<h5 class="m-t-0">Color Theme</h5>
				<ul class="theme-list clearfix">
					<li class="active"><a href="javascript:;" class="bg-green"
						data-theme="default" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Default"> &nbsp;</a></li>
					<li><a href="javascript:;" class="bg-red" data-theme="red"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Red">
							&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-blue" data-theme="blue"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Blue">
							&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-purple"
						data-theme="purple" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Purple"> &nbsp;</a></li>
					<li><a href="javascript:;" class="bg-orange"
						data-theme="orange" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Orange"> &nbsp;</a></li>
					<li><a href="javascript:;" class="bg-black" data-theme="black"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Black">
							&nbsp;</a></li>
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
							data-click="reset-local-storage"> <i
							class="fa fa-refresh m-r-3"></i>Reset Local Storage
						</a>
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
	<script src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="<%=basePath%>BacksAdmin/assets/plugins/morris/raphael.min.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/plugins/morris/morris.js"></script>	
	<script
		src="<%=basePath%>BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script
		src="<%=basePath%>BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script
		src="<%=basePath%>BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
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
		
	
    
	<script src="<%=basePath%>BacksAdmin/assets/js/chart-morris.demo.min.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	

	

	<script>
		$(document).ready(function() {
			App.init();
		});

		$(function() {
			var table = $("#data-table").dataTable({
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
    
       
			
		
		$("#selectall").click(function(){
		if($(this).prop("checked"))
		$("input[type='checkbox'][name='pid']").prop("checked",true);
		else
		$("input[type='checkbox'][name='pid']").prop("checked",false);
		})
		});
		
		$(function(){
		$(".del-btn").click(function(){
		var url='plane!delplane.action?';
		$("input[name='pid']").each(function(index,value){
		    if($(value).prop("checked")){
		       url+='pid='+$(value).prop("value")+'&';
		    }
		})
		$.ajax({
		type:'post',
		url:url,
		success:function(){
		alert("删除成功");
		 location.reload();
		},
		error:function(){}
		})
		})
		})
		
		$(function(){
		$(".pstatus").each(function(index,value){
		var status=$(value).text();
		    if(status=="需修理")
		    {
		    $(value).parent("tr").css("background-color","#FFFFBB");
		     $(value).parent("tr").css("color","#00000");
		    }
		    if(status=="报废")
		    {
		    $(value).parent("tr").css("background-color","#FFCCCC");
		    $(value).parent("tr").css("color","#00000");
		    }
		    if(status=="空闲")
		    {
		    $(value).parent("tr").css("background-color","#CCEEFF");
		    $(value).parent("tr").css("color","#00000");
		    }
		})
		})
		
		
		$(function(){
		  $("#save").click(function(){
		    $.ajax({
		    type:'post',
		    url:'plane!editplane.action',
		    data:{
		    "plane.id":$("#planeid").attr("value"),
		   "plane.lname" :$("#lname").attr("value"),
			 "plane.planetype" :$("#planetype").attr("value"),
			 "plane.imgurl" :$("#planeurl").attr("value"),
			 "plane.tdcprice" :$("#tdcprice").attr("value"),
			 "plane.swcprice" :$("#swcprice").attr("value"),
			 "plane.jjcprice" :$("#jjcprice").attr("value"),
			 "plane.thcprice" :$("#thcprice").attr("value"),
			 "plane.thcnum" :$("#thcnum").attr("value"),
			 "plane.swcnum" :$("#swcnum").attr("value"),
			 "plane.jjcnum" :$("#jjcnum").attr("value"),
			 "plane.tdcnum" :$("#tdcnum").attr("value"),
			 "plane.status" :$("#status").attr("value")
		    },
		    success:function(){
		    alert("修改成功");
		    location.reload();
		    },
		    error:function(){}
		    })
		  })
		})
		
		   $(function(){         
      $("table tbody tr td button").live('click','.edit-btn',function(){
			var planetype=$(this).parent().parent().children("td").eq(2).text();
			var lname=$(this).parent().parent().children("td").eq(3).text();
			var tdcprice=$(this).parent().parent().children("td").eq(4).text();
			var swcprice=$(this).parent().parent().children("td").eq(5).text();
			var jjcprice=$(this).parent().parent().children("td").eq(6).text();
			var thcprice=$(this).parent().parent().children("td").eq(7).text();
			var tdcnum=$(this).parent().parent().children("td").eq(8).text();
			var swcnum=$(this).parent().parent().children("td").eq(9).text();
			var jjcnum=$(this).parent().parent().children("td").eq(10).text();
			var thcnum=$(this).parent().parent().children("td").eq(11).text();
			var planeurl=$(this).parent().parent().children("td").eq(12).text();
			var status=$(this).parent().parent().children("td").eq(13).text();
			var planeid=$(this).parent().parent().children("td").eq(0).text();
			$("#lname").attr("value",lname);
			$("#planetype").attr("value",planetype); 
			$("#planeurl").attr("value",planeurl);
			$("#tdcprice").attr("value",tdcprice);
			$("#swcprice").attr("value",swcprice);
			$("#jjcprice").attr("value",jjcprice);
			$("#thcprice").attr("value",thcprice);
			$("#thcnum").attr("value",thcnum);
			$("#swcnum").attr("value",swcnum);
			$("#jjcnum").attr("value",jjcnum);
			$("#tdcnum").attr("value",tdcnum);
			$("#status").attr("value",status);
			$("#planeid").attr("value",planeid);
			})
       })
		
		
		
	</script>

</body>
</html>
