<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!--引入struts标签 -->
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/css/animate.min.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
    <!-- END HEAD -->
	<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
    <script src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
	<!--css框架--引入bootstrap-->
	
	<!-- 引入自己的js/css -->
	<style>
	/*标签选择器*/
	input[type="text"] {
		width: 60%;
    }
	</style>
    <!-- ================== END BASE JS ================== -->
</head>
<body  onload="showLeftTime()">
		<!-- begin #page-loader -->
		<div id="page-loader" class="fade in">
			<span class="spinner"></span>
		</div>
		<!-- end #page-loader -->

		<!-- begin #page-container -->
		<div id="page-container"
			class="fade page-sidebar-fixed page-header-fixed">
			<!-- begin #header -->
			<div id="header"
				class="header navbar navbar-default navbar-fixed-top">
				<!-- begin container-fluid -->
				<div class="container-fluid">
					<!-- begin mobile sidebar expand / collapse button -->
					<div class="navbar-header">
						<a href="index.html" class="navbar-brand"><span
							class="navbar-logo"></span> 航空后台管理</a>
						<button type="button" class="navbar-toggle"
							data-click="sidebar-toggled">
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
								<li>
									<a href="<%=basePath%>/BacksAdmin/flight/chapiao.jsp">在线购票</a>
								</li>
								<li >
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
						<li class="has-sub active">
							<a href="javascript:;"> <b class="caret pull-right"></b> <i
								class="fa fa-list-alt"></i> <span>季度报表</span> </a>
							<ul class="sub-menu">
								<li class="active">
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
        <div class="sidebar-bg">
        </div>
        <!-- end #sidebar -->
        <!-- begin #content -->
       
		

		  <div id="content" class="content">
			<!-- begin breadcrumb -->
            <ol class="breadcrumb pull-right">
                <li><a href="javascript:;">主页</a></li>
                <li><a href="javascript:;">用户管理</a></li>
                <li class="active">修改或保存信息</li>
            </ol>
            <!-- end breadcrumb -->
            <!-- begin page-header -->
            <h1 class="page-header">
                                 季度报表 <small>以下报表的信息...</small></h1>
            <!-- end page-header -->
			
			<!-- begin row -->
			<!-- end row -->
			<!-- begin row -->
			<div class="row">			           
				<div class="panel panel-inverse" data-sortable-id="index-1">
					<div class="panel-heading">
						<div class="panel-heading-btn">
					    	<a href="javascript:;" onclick="window.print()" class="btn btn-xs btn-icon btn-circle btn-success" ><i class="fa fa-print"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
							<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						</div>
						<h4 class="panel-title">年销售额</h4>
					</div>
					<div class="alert alert-info fade in">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span>
							</button>
							
						<label class="control-label" for="input01" style="font-weight:bold">
							 根据图形的变化可以看出销售额的增减情况/鼠标移动到指定图标可以查看对应的具体数值
						</label>	
						 
			    	</div>
			    	<div class="panel-body">
						<div id="interactive-chart" class="height-sm"></div>
					</div>				
				</div>
			
				<!-- begin col-4 -->
				
				<!-- end col-4 -->
			</div>
			<!-- end row -->
		</div>
        <!-- end #content -->
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Header Styling</div>
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
                    <div class="col-md-5 control-label double-line">Sidebar Styling</div>
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
                    <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
       <!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
    </div>
    <!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	
	<script src="<%=basePath %>/BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
    <script>
    /*
			Template Name: Color Admin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
			Version: 1.4.0
			Author: Sean Ngu
			Website: http://www.seantheme.com/color-admin-v1.4/
	*/
	
	
    </script>	
    <script>
    	$.ajax( {
			type : 'POST',
			dataType : 'json', // json对象
			url : "ticket!result.action",
			data : null,
			success : function(response, status, xhr) {
				//var s = "";
				var a = [];
				$.each(response,function(index, value) {
					//alert(index);
					a[index+1]=this;
					// alert(this);
					})			
				App.init();		
				var blue="#348fe2",blueLight="#5da5e8",blueDark="#1993E4",aqua="#49b6d6",aquaLight="#6dc5de",aquaDark="#3a92ab",green="#00acac",greenLight="#33bdbd",greenDark="#008a8a",orange="#f59c1a",orangeLight="#f7b048",orangeDark="#c47d15",dark="#2d353c",grey="#b6c2c9",purple="#727cb6",purpleLight="#8e96c5",purpleDark="#5b6392",red="#ff5b57";
				var handleInteractiveChart=function()
				{
				"use strict";
				function e(e,t,n)
				{
				$('<div id="tooltip" class="flot-tooltip">'+n+"</div>").css({top:t-45,left:e-55}).appendTo("body").fadeIn(200)}
				if($("#interactive-chart").length!==0)
				{
				//销售额
				var t=[[1,a[1]],[2,a[2]],[3,a[3]],[4,a[4]],[5,a[5]],[6,a[6]],[7,a[7]],[8,a[8]],[9,a[9]],[10,a[10]],[11,a[11]],[12,a[12]]];
				//金牌折扣
				//var n=[[1,0.10],[2,0.6],[3,0.10],[4,0.12],[5,0.18],[6,0.20],[7,0.25],[8,0.23],[9,0.24],[10,0.25],[11,0.18],[12,0.30],[13,0.25],[14,0.25],[15,0.30],[16,0.27],[17,0.20],[18,0.18],[19,0.31],[20,0.23]];
				//银牌折扣
				//var p=[[1,0.30],[2,0.16],[3,0.11],[4,0.2],[5,0.28],[6,0.10],[7,0.15],[8,0.23],[9,0.14],[10,0.15],[11,0.28],[12,0.20],[13,0.15],[14,0.15],[15,0.20],[16,0.17],[17,0.10],[18,0.28],[19,0.21],[20,0.23]];
				//成人
				//var q=[[1,1],[2,1],[3,1],[4,1],[5,1],[6,1],[7,1],[8,1],[9,1],[10,1],[11,1],[12,1],[13,1],[14,1],[15,1],[16,1],[17,1],[18,1],[19,1],[20,1]];
				//儿童 
				//var q1=[[1,0.5],[2,0.5],[3,0.5],[4,0.5],[5,0.5],[6,0.5],[7,0.5],[8,0.5],[9,0.5],[10,0.5],[11,0.5],[12,0.5],[13,0.5],[14,0.5],[15,0.5],[16,0.5],[17,0.5],[18,0.5],[19,0.5],[20,0.5]];
				//一年的数据的话需要一年的时间	
				var r=[[1,"一月"],[2,"二月"],[3,"三月"],[4,"四月"],[5,"五月"],[6,"六月"],[7,"七月"],[8,"八月"],[9,"九月"],[10,"十月"],[11,"十一月"],[12,"十二月"]];
				$.plot($("#interactive-chart"),[{data:t,label:"销售额统计",color:blue,lines:{show:true,fill:false,lineWidth:2},points:{show:true,radius:3,fillColor:"#fff"},shadowSize:0},
				                            ],
				                                {xaxis:{ticks:r,tickDecimals:0,tickColor:"#ddd"},
				                                 yaxis:{ticks:10,tickColor:"#ddd",min:0,max:10000},
				                                 grid:{hoverable:true,clickable:true,tickColor:"#ddd",borderWidth:1,backgroundColor:"#fff",borderColor:"#ddd"},legend:{labelBoxBorderColor:"#ddd",margin:10,noColumns:1,show:true}});
				var i=null;
				$("#interactive-chart").bind("plothover",function(t,n,r){
				$("#x").text(n.x.toFixed(2));
				$("#y").text(n.y.toFixed(2));
				if(r)
				{
				if(i!==r.dataIndex)
				{
				i=r.dataIndex;
				$("#tooltip").remove();
				var s=r.datapoint[1].toFixed(2);
				var o=r.series.label+" "+s;e(r.pageX,r.pageY,o)}
			
				}
				else{
				$("#tooltip").remove();
				i=null
				}
				t.preventDefault()})}};
				var Dashboard=function(){"use strict";
				return{init:function(){handleInteractiveChart();}}}()
				Dashboard.init();
				
			    
			},
			error : function() {
				alert("加载失败");
			}
	
		})
			
			
    </script>
    <script>
   
		
	</script>


</body>
</html>
