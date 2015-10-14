<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/animate.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/style-responsive.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
    <!-- ================== END BASE CSS STYLE ================== -->
    <!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-calendar/css/bootstrap_calendar.css" rel="stylesheet" />

    <link href="<%=basePath %>/BacksAdmin/assets/plugins/morris/morris.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
      <link href="<%=basePath %>/BacksAdmin/ordermd/css/tuser.css" rel="stylesheet" />
     
    <!-- ================== END PAGE LEVEL CSS STYLE ================== -->
    <!-- ================== BEGIN BASE JS ================== -->
       <script src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
     <style>
		/*标签选择器*/
		input[type="text"] {
			width: 80%;
		}
	</style>
  
    
    <!-- ================== BEGIN BASE JS ================== -->

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
    <!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
	
	<!--css框架--引入bootstrap-->

	<!-- 引入自己的js/css -->	
	<script src="<%=basePath %>/BacksAdmin/ordermd/js/tuser.js"></script>	

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
						<li class="has-sub active">
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
                <li><a href="javascript:;">客户管理</a></li>
                <li class="active">客户管理信息</li>
            </ol>
            <!-- end breadcrumb -->
            <!-- begin page-header -->
             <h1 class="page-header">
                               客户管理 <small>以下是所有客户信息...</small></h1>
            <!-- end page-header -->
                 
			  <!-- begin row -->
			    
              <div class="panel panel-inverse">
			    <div class="panel-heading">
			        <div class="panel-heading-btn">
			           <a href="javascript:;" onclick="window.print()" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-remove"><i class="fa fa-print m-r-5"></i></a>
			           <a href="#modal-dialog" data-toggle="modal"" class="btn btn-xs btn-icon btn-circle btn-danger"><i class="fa fa-2x fa-plus"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			            
			        </div>
			        <!-- #modal-dialog -->
														<div class="modal fade" id="modal-dialog">
															<div class="modal-dialog ">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																		<h4 class="modal-title">添加客户信息</h4>
																	</div>
																	<div class="modal-body">
																		<form class="form-horizontal" action="tuser!add.action" method=" post" id="zzw1">

				<div class="control-group">
                   <input type="hidden"  value="${ tue.id}" name="tue.id"/>
					<!-- Text input-->
					<label class="control-label" for="input01">
						姓名
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入姓名" class="input-xlarge form-control"
							name="tue.name" value="${tue.name}" style="color:#000000">

					</div>
				</div>

				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01 form-control">
						身份证
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入身份证" class="input-xlarge form-control"
							name="tue.idcard" value="${tue.idcard}" style="color:#000000">

					</div>
				</div>
				
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						性别
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入性别" class="input-xlarge form-control"
							name="tue.sex" value="${tue.sex}" style="color:#000000">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						联系电话
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入联系电话" class="input-xlarge form-control"
							name="tue.phone" value="${tue.phone}" style="color:#000000">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						设置账户
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入你想要设置的账户" class="input-xlarge form-control"
							name="tue.account" value="${tue.account}" style="color:#000000">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						密码
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入设置的密码" class="input-xlarge form-control"
							name="tue.psw" value="${tue.psw}" style="color:#000000">

					</div>
				</div>
				
				<div class="control-group">

					<!-- Text input-->
					<label class="control-label" for="input01">
						会员类型
					</label>
					<div class="controls">
						<input type="text" placeholder="请输入会员类型" class="input-xlarge form-control"
							name="tue.type" value="${tue.type}" style="color:#000000">

					</div>
				</div>			
				<br />
			
</div>
          <div class="modal-footer">
																
                                                                      
					<input type="button" class="btn btn-sm btn-white" data-dismiss="modal"
						onclick="location.href='tuser!show.action'" value="关闭" />
						<input type="submit" class="btn btn-sm btn-success" value="保存" />
																		
																	</div>

			</form>
																	
																</div>
															</div>
														</div>
			        <h4 class="panel-title">客户管理</h4>
			    </div>
			     <div class="alert alert-info fade in">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span>
							</button>
							客户信息查询
						</div>
			    <div class="panel-body">
			<div>
		
            
			
			</div>     
			
			<div>
                 <br>
           
               
				<form action="tuser!check.action" method="post">
				  
					<div class="col-md-4 ">
						<label class="control-label" for="input01">
							<b>姓名</b>
						</label>
						<input type="text" placeholder="输入名字" class="input-xlarge form-control"
							name="tue.name">
					</div>
					<div class="col-md-4">
						<label class="control-label" for="input01">
							<b>身份证号</b>
						</label>
						<input type="text" placeholder="输入身份证" class="input-xlarge form-control"
							name="tue.idcard">
					</div>
					<div class="col-md-4">
						<input type="submit" value="搜索" class="btn btn-info "/>
			       </div>
				</form>
				
				
			</div>
			
			    
			   
		     
			
			<br />
          
		
			</div>
              <!-- end row -->               
			  <!-- begin row -->
			<div class="row">
			    <!-- begin col-12 -->
			    
			    
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        
                        <div class="panel-body">
                            <div class="table-responsive">                           
                                <table id="table_id" class="table table-condensed table-striped table-bordered">
                                    <thead>
                                        <tr>
                                      
                                            <td><input type="checkbox" id="select"/></td>
                                            <th>姓名</th>
                                            <th>身份证号</th>
                                            <th>性别</th>
                                            <th>电话</th>
                                            <th>类型</th>
                                            <th>账户</th>
                                            <th>密码</th>
                                            <th>修改</th>
                                            <th>删除</th>                                          
                                            
                                        </tr>
                                    </thead>
                                
                                    <tbody>
                        
                                        <s:iterator value="userlist" var="u">
                                        <tr >
                                            <td>
												<input type="checkbox" name="ckb" value="${u.id}">
											</td>
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
												<a class="btn btn-info"
													href="tuser!tz.action?tue.id=${u.id}">修改</a>
											</td>
											<td>
												<a class="btn btn-sm btn-danger"
													href="tuser!delete.action?tue.id=${u.id}" data-toggle="modal">删除</a>															
											</td>
                                        </tr>   
                                      </s:iterator>  
                                                                   
                                    </tbody>
                                   
                                </table>
                                           <div >
						                     <form action="tuser!deletes.action" method="post" id="hkgslist">						
							              	<input type="hidden" name="ajaxtext" value="" id="1"/>
							              	<input type="submit" id="submit" value="多选删除" class="btn btn-danger" >
											</form>
										     </div>	
                            </div>
                                           
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
            </div>
            
            <!-- end row -->
		</div>
		<!-- end #content -->
		
		
            <!-- end row -->
            <!-- begin row -->
          
            <!-- end row -->
            <!-- begin row -->
            <!-- end row -->
        </div>
        <!-- end #content -->
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i
                class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">
                    Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">
                        &nbsp;</a></li>
                </ul>
                <div class="divider">
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">
                        Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">
                        Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage">
                            <i class="fa fa-refresh m-r-3"></i>Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
        <!-- begin scroll to top btn -->
        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
            data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
        <!-- end scroll to top btn -->
    </div>
    <!-- end page container -->
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
    <script src="<%=basePath %>/BacksAdmin/assets/plugins/DataTables/js/jquery.dataTables.js"></script>
    <script src="<%=basePath %>/BacksAdmin/assets/js/table-manage-default.demo.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/morris/raphael.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/morris/morris.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-merc-en.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-calendar/js/bootstrap_calendar.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/gritter/js/jquery.gritter.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/js/dashboard-v2.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/js/apps.min.js"></script>
    <script src="<%=basePath%>/resource/foreground/js/jquery.validate.js"></script>
	<!--<script src="<%=basePath%>/BacksAdmin/ordermd/js/check1.js"></script>


    --><!-- ================== END PAGE LEVEL JS ================== -->
    <script type="text/javascript">
	  $(document).ready( function () {
                
                
                $('#table_id').DataTable({
    language: {
        "sProcessing": "处理中...",
        "sLengthMenu": "显示 _MENU_ 项结果",
        "sZeroRecords": "没有匹配结果",
        "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
        "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
        "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
        "sInfoPostFix": "",
        "sSearch": "任意搜索:",
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
            } );
	</script>
    <script>
    
        	$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
	</script>
	

</body>
</html>
