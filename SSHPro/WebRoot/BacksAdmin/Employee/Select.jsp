<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>航空--人员管理</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/animate.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="<%=basePath%>/BacksAdmin/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->

	<!-- 莫雾玲 -->
        
   <style type="text/css">
            .gradeA:hover{
            background:#ffeaac;
            }
            .gradeA td:hover{
         	   border-radius: 2em;
         	  background:#2ab6fe
			 
            }
              input:hover,a:hover,select:hover,select option:hover{
	         cursor:pointer;
	        }
	        

            </style>
	<!-- END -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar navbar-default navbar-fixed-top">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span>欢迎您航空后台管理</a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->
				
				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form full-width">
						<!-- 	<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter keyword" />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div> -->
						</form>
					</li>
					
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<%=basePath%>/BacksAdmin/Employee/image/${ session.user.image}" alt="image" /> 
							<span class="hidden-xs"><s:property value="#session.user.account"/></span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
						<!-- 	<li><a href="javascript:;">Edit Profile</a></li>
							<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
							<li><a href="javascript:;">Calendar</a></li> -->
								<li>
									<a href="employee!Setting.action">个人设置</a>
								</li>
							<li class="divider"></li>
							<li><a href="employee!Logout.action">退出</a></li> 
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
							<a href="javascript:;">
							<img src="<%=basePath%>/BacksAdmin/Employee/image/${ session.user.image}" alt="image" /></a>
						</div>
						<div class="info">
								${ session.user.name}
							<small>欢迎您</small>
						</div>
					</li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">导航</li>
					<li class="has-sub ">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>首页</span>
					    </a>
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
					<li class="has-sub  active">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>人员管理</span>
					    </a>
						<ul class="sub-menu active ">
						    <li><a href="employee!A.action" >录入员工信息</a></li>
						    <li ><a href="employee!Find.action">删除员工信息</a></li>
						     <li ><a href="employee!Find1.action">修改员工信息</a></li>
						    <li class=" active"><a href="employee!Find2.action" >查询员工信息</a></li>
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
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>新闻管理</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="news-manager!Anews.action">添加</a></li>
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
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->


		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">首页</a></li>
				<li><a href="javascript:;">人员管理</a></li>
				<li class="active">查询员工信息</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">查询员工信息<small></small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-2 -->
			    <div class="col-md-2">
			        <h5>
			           您可以进行的操作有：
			        </h5>
                    <ul class="p-l-25 m-b-15">
                         <li>复制信息</li>
                        <li>以 CSV 形式保存信息</li>
                        <li>以excel文件形式保存</li>
                        <li>以PDF文件形式保存</li>
                        <li>打印信息</li>
                        <li>模糊查询</li>

                    </ul>
			    </div>
			    <!-- end col-2 -->
			    <!-- begin col-10 -->
			    <div class="col-md-10">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn"><!-- data-click="panel-expand" 是一个功效的调用，这个是扩张和收缩的的功效。 -->
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" onclick="a()"><i class="fa fa-print"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">人员管理--之--查询员工信息</h4>
                        </div>
                        <div class="alert alert-info fade in">
                            <button type="button" class="close" data-dismiss="alert">
                                <span aria-hidden="true">&times;</span>
                            </button>
                          <i class="fa fa-2x fa-thumb-tack" style="color:red"></i>  请注意：打印操作是个圆圆的绿色小图标哦<br/>

                        </div>
                        <div class="panel-body">
                        <!--   <a  class="btn btn-success m-r-5" onclick="a()"><i class=" fa fa-print"></i>&nbsp;&nbsp;&nbsp;打印</a> -->   
                            <div class="table-responsive" id="ddd">

                                <table id="data-table" class="table table-striped table-bordered nowrap" width="100%">
                                    <thead>
                                    <tr>
  										<th>ID号</th>
					     			      <th>账号</th>
					    		  	 	<th>密码</th>
					         		  <th>工作身份</th>
					         		  <th>姓名</th>
					         		  <th>头像</th>
					         		  </tr>
                                    </thead>
                                     <tbody>
								         <s:iterator value="EmployeeList" var="u">
								         <tr class="gradeA">
								    		  <td> ${u.id }</td>
								       		 <td>${u.account}</td>
								       		 <td> ${u.psw }</td>
								             <td>${u.type} </td>
								              <td> ${u.name }</td>
								             <td> <img src="<%=basePath%>/BacksAdmin/Employee/image/${u.image} " alt="image" style="width: 20px;height: 20px" /> </td>
								            </tr>
								         </s:iterator>
					           </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-10 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->

		
		<!-- begin #footer -->
		<div id="footer" class="footer">
		    &copy; 2014 Color Admin Responsive Admin Template - Sean Ngu All Rights Reserved
		</div>
		<!-- end #footer -->
		
		
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
	
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	滚动条<script src="<%=basePath%>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	设置cookie的<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
		<!-- ================== BEGIN PAGE LEVEL JS ================== --><!--最大化/还原  最小化 小叉叉  窗口大小调整-->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.time.min.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.resize.min.js"></script>
    <!-- 
	圆饼图<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	现状图插件<script src="<%=basePath%>/BacksAdmin/assets/plugins/sparkline/jquery.sparkline.js"></script>
	svg矢量地图插件<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	svg矢量地图<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	时间<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	仪表盘<script src="<%=basePath%>/BacksAdmin/assets/js/dashboard.min.js"></script>
	画数据表的<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	 -->
	<!-- ================== END PAGE LEVEL JS ================== -->


	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath%>BacksAdmin/assets/plugins/DataTables/js/jquery.dataTables.js"></script>
	<!--<script src="<%=basePath%>BacksAdmin/assets/plugins/DataTables/js/dataTables.tableTools.js"></script>--><!-- copy，csv，PDF，excel -->
	<script src="<%=basePath%>BacksAdmin/Employee/jquery/dataTables.tableTools.js"></script>
	<script src="<%=basePath%>BacksAdmin/assets/js/table-manage-tabletools.demo.min.js"></script><!-- 中文化 -->
	<script src="<%=basePath%>BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
			
		<!--
		 dataTables.tableTools.js这个js的第3074行：	
		"aButtons": [ "copy", "csv", "xls", "pdf", "print" ],
		被我修改成了
		"aButtons": [ "copy", "csv", "xls", "pdf"],
		即去掉了最后一个打印的参数。
		 -->	
		 	
		 	<!-- 
		 	修改了2863行                    //2015年10.01日14时22分
		 	 -->
		 
		 
	<!-- 莫雾玲   -->
		<!-- 引入打印jQuery插件：jqpring -->
		<script src="<%=basePath%>BacksAdmin/Employee/jquery/jquery.jqprint-0.3.js"></script>


	<script type="text/javascript">
		function  a(){            //print's plugin
	        $("#ddd").jqprint();
	    }
    
	$(document).ready( function () {         
	
    TableManageTableTools.init();                  //datatable
    
		} );
	</script>
	
	
	<script>
		$(document).ready(function() {
			App.init();
		//	Dashboard.init();
					
		});
	</script>
 
</body>
</html>