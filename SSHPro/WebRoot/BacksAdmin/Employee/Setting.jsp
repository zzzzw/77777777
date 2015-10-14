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
	<!-- 引入bootstrap的js 
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>-->
		  <script src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
	 			
            <!-- 引入删除信息js -->
          <script src="<%=basePath%>/BacksAdmin/Employee/jquery/delete.js"></script>
          
          <!-- 实现全选js -->
          <script src="<%=basePath%>/BacksAdmin/Employee/jquery/myjquery.js"></script> 
          
           	
           	<style type="text/css">
            .gradeA:hover{
            background:#ffeaac;
            }
            .gradeA td:hover{
            border-radius: 2em;
            background:#2ab6fe;
            }
            input:hover,a:hover,select:hover,select option:hover{
	         cursor:pointer;
	        }
            </style>
            
	<!-- END -->
</head>
<body onload="showtime()">
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
					<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span>航空后台管理</a>
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
					<!-- 	<form class="navbar-form full-width">
							<div class="form-group">
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
							<li><a href="javascript:;">Calendar</a></li>  -->
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
						<ul class="sub-menu">
						    <li ><a href="employee!A.action">录入员工信息</a></li>
						    <li class=" active"><a href="employee!Find.action">删除员工信息</a></li>
						     <li ><a href="employee!Find1.action">修改员工信息</a></li>
						    <li><a href="employee!Find2.action">查询员工信息</a></li>
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
				<li><a href="javascript:;">信息</a></li>
				<li class="active">个人信息</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">信息页面 <small>您可以修改个人信息</small></h1>
			<!-- end page-header -->
			
			<div class="panel panel-inverse">
			    <div class="panel-heading">
			        <div class="panel-heading-btn">
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			        </div>
			        <h4 class="panel-title">信息页</h4>
			    </div>
			    <div class="panel-body">
			    
			        <div class="container-fluid">
			
					 <!-- begin wrapper -->
                    <div class="wrapper">
                        <h4 class="m-b-15 m-t-0 p-b-10 underline"><s:property value="#session.user.name"/></h4>
                        <ul class="media-list underline m-b-20 p-b-15">
                            <li class="media media-sm clearfix">
                                <a href="javascript:;" class="pull-left">
                                    <img class="media-object rounded-corner" alt="image" src="<%=basePath%>/BacksAdmin/Employee/image/${ session.user.image}" />
                                </a>
                                <div class="media-body">
                                    <span class="email-from text-inverse f-w-600">
                                      	 联系信息：神圣航空     技科部
                                    </span><span class="text-muted m-l-5">
                                    <i class="fa fa-clock-o fa-fw"></i>
                                    <span   id="clock"></span>
                                    </span><br/>
                                    <span class="email-to">
                                        To: holyvoyage@live.co.cn
                                    </span><br><br>
                                    <div class="col-xs-6 col-md-6">
                                      <span class="email-from text-inverse f-w-600">姓名：</span>
                                      <span class="email-to"><s:property value="#session.user.name"/></span>
                                    </div>
                                    <div class="col-xs-6 col-md-6">
                                      <span class="email-from text-inverse f-w-600"> 账号：</span>
                                      <span class="email-to"><s:property value="#session.user.account"/></span>
                                    </div> 
                                    <div class="col-xs-6 col-md-6">
                                      <span class="email-from text-inverse f-w-600">密码：  </span>
                                      <span class="email-to"><s:property value="#session.user.psw"/></span>
                                    </div>
                                    <div class="col-xs-6 col-md-6">
                                   	  <span class="email-from text-inverse f-w-600">工作身份： </span>
                                      <span class="email-to"><s:property value="#session.user.type"/></span>
                                    </div>
                                </div>
                            </li>
                            <!-- 
                            <li class="media media-sm clearfix">
                            <form action="employee!ModifyMyself.action" method="post" >
                            <div class=" col-md-6">
                				 <span class="email-from text-inverse f-w-600">头像：</span><input type="file" name="entity.image"/>
                				 <input type="submit" class="btn btn-primary btn-xs" value="我要换头像"/>
            				 </div>
            				 </form>
            				 </li>
            				  -->
                            <li class="media media-sm clearfix">
                            <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal-${ session.user.account}">我要修改个人信息</button>
                            </li>
						</ul>
                        <ul class="attached-document clearfix">
                            <li>
                                <div class="document-name"><a href="#">flight_ticket.pdf</a></div>
                                <div class="document-file">
                                    <a href="#">
                                        <i class="fa fa-file-pdf-o"></i>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="document-name"><a href="#">front_end_mockup.jpg</a></div>
                                <div class="document-file">
                                    <a href="#">
                                        <img src="assets/img/login-bg/bg-1.jpg" alt="" />
                                    </a>
                                </div>
                            </li>
                        </ul>
                        
                        <p class="f-s-12 text-inverse"> 
                            Holy Voyage is the best choice <br />
                            We are so glad that you are a part of us.
                        </p>
                        <p class="f-s-12 text-inverse">
                           	 神圣航空创立于2015年，是中国大陆从事国内外、国际航空服务的代理销售公司<br />
                                                                          总部设立于中国广东省肇庆市人才孵化中心 <br />
                                                                          该公司即使是刚刚创立，但是可信度不仅仅只是建立在公司的成立时间上。<br />
                        </p>
                        <p class="f-s-12 text-inverse">
                            
                        </p>
                        <br />
                        <br />
                        <p class="f-s-12 text-inverse">
                            <br />
                            <br /><br />
                           <br />
                           <br />
                        </p>
                    </div>
		            <!-- end wrapper -->
					 
					 
					 
					 
 		  			</div>
 		  			
			    </div>
			</div>
		</div>
		<!-- end #content -->
		
		
		
		
		<!-- begin #footer -->
		<div id="footer" class="footer">
		    &copy; 2014 Color Admin Responsive Admin Template - Sean Ngu All Rights Reserved
		</div>
	
		<!-- end #footer -->

		<!-- 修改页面 -->
				<!-- Modal -->
		<div class="modal fade" id="myModal-${ session.user.account}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">详细</h4>
		      </div>
		      <form action="employee!ModifyMyself.action" method="post" >
		      <div class="modal-body" >
		      
			 	<h5 align="center">账号：${ session.user.account}</h5>  
			 	<div class="image-inner" align="center">
			 	<div class="col-xs-12 col-md-12">
			 	
                 <span class="email-from text-inverse f-w-600">姓名：</span><input type="text" name="entity.name" value="${ session.user.name}" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;" />
               </div><br><br>
               
               <div class="col-xs-12 col-md-12">
                 <span class="email-from text-inverse f-w-600">密码：</span><input type="text" name="entity.psw" id="psw" value="${ session.user.psw}" onKeypress="javascript:if(event.keyCode == 32)event.returnValue = false;"   onkeyup="value=value.replace(/[\W]/g,'') " 
      onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>            
               </div> 
             <!--   <div class="col-xs-12 col-md-12">
                 <span class="email-from text-inverse f-w-600">头像：</span><input type="file" accept="image/*" name="myFile"  id="file" />
               </div>
               -->
               <br><br>
              <input type="hidden" name="entity.id" value="${ session.user.id}"/>
              <input type="hidden" name="entity.type" value="${ session.user.type}"/>
              <input type="hidden" name="entity.account" value="${ session.user.account}"/>
            <!--   <input type="hidden" name="entity.image" value="${ session.user.image}"/>  -->
               <div class="col-xs-12 col-md-12">
               		<input type="submit" class="btn btn-primary btn-xs" id="submit" value="确定修改"/>
               </div>
               </div><br><br>
			  <div class="modal-footer">
			  </div>
			  
		    </div>
		   </form>
		  </div>
		</div>
		</div>


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
	<!--[if lt IE 9]>
		<script src="<%=basePath%>/BacksAdmin/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="<%=basePath%>/BacksAdmin/assets/crossbrowserjs/respond.min.js"></script>
		<script src="<%=basePath%>/BacksAdmin/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/DataTables/js/dataTables.tableTools.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/table-manage-tabletools.demo.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->


	<!-- 莫雾玲  -->
	<script type="text/javascript">
	function showtime()   
	{   
		var today;  
		var hour;  
		var second;  
		var minute;  
		var year;  
		var month;  
		var date;  
		var strDate;   
		today=new Date();   
		var n_day = today.getDay();   
		switch (n_day)   
		{   
		case 0:{   
		strDate = "星期日"   
		}break;   
		case 1:{   
		strDate = "星期一"   
		}break;   
		case 2:{   
		strDate ="星期二"   
		}break;   
		case 3:{   
		strDate = "星期三"   
		}break;   
		case 4:{   
		strDate = "星期四"   
		}break;   
		case 5:{   
		strDate = "星期五"   
		}break;   
		case 6:{   
		strDate = "星期六"   
		}break;   
		case 7:{   
		strDate = "星期日"   
		}break;   
		}   
		//year = today.getYear();   
		year = today.getFullYear();
		month = today.getMonth()+1;   
		date = today.getDate();   
		hour = today.getHours();   
		minute =today.getMinutes();   
		second = today.getSeconds();   
		if(month<10) month="0"+month;   
		if(date<10) date="0"+date;   
		if(hour<10) hour="0"+hour;   
		if(minute<10) minute="0"+minute;   
		if(second<10) second="0"+second; 
		//alert(year);  
		document.getElementById('clock').innerHTML = year + "年" + month + "月" + date + "日 " + strDate +" " + hour + ":" + minute + ":" + second;   
		setTimeout("showtime();", 1000);   
		window.onload=showtime;//不要括号
	}
	
	</script>
	
	

	
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
 
</body>
</html>