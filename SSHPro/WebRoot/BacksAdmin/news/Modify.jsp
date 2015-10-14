<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
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
	<title>航空--新闻管理</title>
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
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- 莫雾玲 -->

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
					<li>
						<form class="navbar-form full-width">
						<!-- 	<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter keyword" />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>  -->
						</form>
					</li>
					
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<%=basePath%>/BacksAdmin/Employee/image/${ session.user.image}" alt="image" /> 
							<span class="hidden-xs"><s:property value="#session.user.account"/></span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"><br></li>
							<!-- 		<li><a href="javascript:;">Edit Profile</a></li>
							<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
							<li><a href="javascript:;">Calendar</a></li> -->
							<li>
									<a href="employee!Setting.action">个人设置</a>
								</li>
							<li class="divider">&lt;</li>
					<!-- 		<li><a href="javascript:;">Log Out</a></li> 
							<li><form action="employee!Logout.action" method="post" >
							<input type="submit" value="Log Out" />
							</form>
							</li>-->
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
					<li class="has-sub">
						<a href="javascript:;">
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
					<li class="has-sub ">
						<a href="javascript:;">
						    <span>人员管理</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="employee!A.action">录入员工信息</a></li>
						    <li><a href="employee!Find.action">删除员工信息</a></li>
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
					<li class="has-sub   active">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>新闻管理</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="news-manager!Anews.action">添加</a></li>
						    <li class=" active"><a href="news-manager!Mnews.action">修改</a></li>
						    <li><a href="news-manager!Dnews.action">删除</a></li>
						      <li><a href="news-manager!Fnews.action">查询</a></li>
						</ul>
					</li>
				   <!-- begin sidebar minify button -->
					<li>ce</li>
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
				<li><a href="javascript:;">首页</a>
				</li>
				<li class="active">修改</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">
				修改信息 <small>头像不可以修改...</small>
			</h1>
		<div id="options" class="m-b-10">
			<span class="gallery-option-set" id="filter"data-option-key="filter"> 
			<a href="#show-all" class="btn btn-default btn-xs active" data-option-value="*"> 全部</a> 
			<a href="#gallery-group-1" class="btn btn-default btn-xs" data-option-value=".gallery-group-discount"> 优惠活动 </a> 
			<a href="#gallery-group-2" class="btn btn-default btn-xs" data-option-value=".gallery-group-common"> 普通新闻 </a>
			 <a href="#gallery-group-3" class="btn btn-default btn-xs" data-option-value=".gallery-group-notice"> 公告 </a> 
			 </span>
		</div>

		<div id="gallery" class="gallery">
			<s:iterator value="NewsList" var="l">
				<div class="image gallery-group-${l.type}">
				<!-- picture -->
					<div class="image-inner">
						<a href="#" data-lightbox="gallery-group-${l.type }">
						 <img src="<%=basePath%>/BacksAdmin/news/image/${l.image}" alt="image" /> 
						 </a>
					</div>
					<!-- information  -->
				<div class="image-info">
					<a  data-toggle="modal" data-target="#myModal${l.id }">${l.title}</a><br>
					<div class="pull-right">
						<small>by</small> <a href="javascript:;">${l.author}</a>
					</div><br><br>
					${l.pubdate}
					<div class="pull-right">
						<button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal-${l.id}">修改</button>
					</div><br><br>
					<div class="desc" ><p style="size: 20">${l.content}<p></div>
				</div>
			</div>
			</s:iterator>			

		</div>
		
		
		<s:iterator value="NewsList" var="l">
		  <!-- Modal -->
			<div class="modal fade" id="myModal-${l.id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">详细</h4>
			      </div>
			      <div class="modal-body">
			      <form  action="news-manager!Modify.action" method="post" enctype="multipart/form-data">
			      <input TYPE="hidden" value="${l.id }" name="entity.id"/>
			      <input TYPE="hidden" value="${l.pubdate}" name="entity.pubdate"/>
			      <input TYPE="hidden" value="${l.type }" name="entity.type"/>
			      <input TYPE="hidden" value="${ session.user.name}" name="entity.author"/>
			      <input TYPE="hidden" value="${l.clicknumber}" name="entity.clicknumber"/>
				   <font size="4" class="text-primary  "> <b>新闻标题：</b></font> 
       			   <input type="text"  name="entity.title" value="${l.title}" class="form-control "  style="font-size:18px;text-align:center;" required/>
			       <font size="4" class="text-primary  "> <b>原新闻插图：</b></font>
				   <div class="image-inner" align="center">
					 <a> 
					    <img style="width: 50%;height: 25%" src="<%=basePath%>/BacksAdmin/news/image/${l.image}" alt="image" />
					 </a>
				   </div>
				  <font size="4" class="text-primary "> <b >如需更改新闻插图，请点击“选择文件”选图：</b></font>  
				  <input type="file" accept="image/*" name="myFile"   /><br>
				  <div class="desc" >
					<font size="4" class="text-primary "> <b >新闻内容为：</b></font>
					<textarea rows="3"  name="entity.content" class="text-info form-control " style="font-size:18px">${l.content}</textarea>
				  </div><br>
				  <div class="image-info">
					<div class="desc">${l.content}</div><br/>
					<!-- <div class="pull-right">
					  <small>点击量:</small> <a href="javascript:;">${l.clicknumber}</a>
					</div><br> --><br>
					<div class="pull-right">
					  <small>来自</small> <a href="javascript:;">${l.author}</a>
					</div>
					  <input type="submit" value="确认修改" class="btn btn-danger " />
				 </div>
				 <div class="modal-footer">
				 </div>
			    </form>
			   </div>
			  </div>
			</div>
		  </div>
		</s:iterator>
		<!-- end #Model -->
		
		
		
		
		
		
		
		
		
		
		
		
		
			<!-- 
				<s:iterator value="NewsList" var="l">
				<div class="image gallery-group-${l.type}">
					<form  action="news-manager!Modify.action" method="post" enctype="multipart/form-data">
					<font size="4" class="text-primary  "> 
					<!-- picture -->
			<!--		<div class="image-inner">
						<input TYPE="hidden" value="${l.id }" name="entity.id"/>
					 <font size="4" class="text-primary  "> <b>新闻标题：</b></font> 
       				  <input type="text"  name="entity.title" value="${l.title}" class="form-control "  style="font-size:18px" required/>
				<!--<font size="4" class="text-primary  "> -->
			<!--		<b>原新闻插图：</b>
				<!--</font>  -->
			<!--		<a href="#" data-lightbox="gallery-group-${l.type }" name="entity.type"> 
					<img style="width: 80%;height: 25%" src="<%=basePath%>/BacksAdmin/news/image/${l.image}" alt="image"/>
					<input type="hidden"  name="entity.image" value="${l.image }"/>
					 </a><br><br>
				<!--	<font size="4" class="text-primary "> -->
			<!--	<b >如需更改新闻插图，请点击“选择文件”选图：</b>
				<!--</font>  -->
			<!--		<input type="file" accept="image/*" name="myFile"   />
					</div>
					
					<div class="image-info">
						<div class="desc" >
					<!--		<font size="4" class="text-primary "> -->
			<!--					<b >新闻内容为：</b>
					<!--		</font> -->
			<!--				<textarea rows="3"  name="entity.content" class="text-info form-control " style="font-size:18px">${l.content}</textarea>
						
						</div><br>
						<div class="pull-right">
							<b><font color="red">by</font>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="javascript:;" name="entity.author">${l.author}</a></b>
						</div><br>
					</div>
				
				<input type="submit" value="修改" class="btn btn-danger " />
				</font>
			</form>
			</div>
			<hr style="color:red"/>
		</s:iterator>	
		 -->
				
		</div>


	
		
			<!-- begin scroll to top btn   回到顶部 -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->

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

	
		</div>
		<!-- begin #footer -->
		<div id="footer" class="footer">
		    &copy; 2014 Color Admin Responsive Admin Template - Sean Ngu All Rights Reserved
		</div>
		<!-- end #footer -->

	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/isotope/jquery.isotope.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/lightbox/js/lightbox-2.6.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/discount/js/jquery.fancybox-1.3.1.pack.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/gallery.demo.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<!-- 莫雾玲 -->

	<script>
		$(document).ready(function() {
			App.init();
			Gallery.init();
		});
	</script>

</body>
</html>