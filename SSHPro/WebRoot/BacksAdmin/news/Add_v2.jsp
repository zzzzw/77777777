<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title></title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/animate.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
    <link href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
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
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<%=basePath%>/BacksAdmin/Employee/image/${ session.user.image}" alt="image" /> 
							<span class="hidden-xs"><s:property value="#session.user.account"/></span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
					<!-- 			<li><a href="javascript:;">Edit Profile</a></li>
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
					<li class="has-sub">
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
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>人员管理</span>
					    </a>
						<ul class="sub-menu">
						    <li ><a href="employee!A.action">录入员工信息</a></li>
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
						<li class="has-sub  active">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>新闻管理</span>
					    </a>
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
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">添加新闻 <small></small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
                <!-- begin col-12 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title"> </h4>
                        </div>
                        <div class="panel-body">
                           <form  action="news-manager!Add.action" method="post" enctype="multipart/form-data" data-parsley-validate="true" name="form-wizard">
								<div id="wizard">
									<ol>
										<li>
										   	 新闻标题 
										    <small>请输入新闻标题</small>
										</li> 
										<li>
										            填写新闻内容
										    <small>请输入新闻详细内容</small>
										</li>
										<li>
										    新闻类型
										    <small>请选择新闻类型。（普通，折扣，公告）</small>
										</li> 
										<li>
										   图片上传
										    <small>请上传与新闻相关的图片</small>
										</li>
									</ol>
									<!-- begin wizard step-1 -->
									<div class="wizard-step-1">
                                        <fieldset>
                                            <legend class="pull-left width-full">新闻标题</legend>
                                            <!-- begin row -->
                                            <div class="row">
                                                <!-- begin col-4 -->
                                                <div class="col-md-12">
													<div class="form-group block1">
														<label>标题</label>
														<input type="text" name="entity.title" placeholder="请输入新闻标题..." class="form-control" data-parsley-group="wizard-step-1" required />
													</div>
                                                </div>
                                                <!-- end col-4 -->
                                               
                                            </div>
                                            <!-- end row -->
										</fieldset>
									</div>
									<!-- end wizard step-1 -->
									<!-- begin wizard step-2 -->
									<div class="wizard-step-2">
										<fieldset>
											<legend class="pull-left width-full">新闻内容</legend>
                                            <!-- begin row -->
                                            <div class="row">
                                                <!-- begin col-6 -->
                                                <div class="col-md-12">
													<div class="form-group">
														<label>内容</label>
														 <textarea rows="20%" cols="70%" name="entity.content" class="text-info    form-control " placeholder="此处输入新闻内容..."  required>
           </textarea>
													</div>
                                                </div>
                                                <!-- end col-6 -->

                                            </div>
                                            <!-- end row -->
										</fieldset>
									</div>
									<!-- end wizard step-2 -->
								<!-- begin wizard step-3 -->
									<div class="wizard-step-3">
										<fieldset>
											<legend class="pull-left width-full">新闻类型</legend>
                                            <!-- begin row -->
                                            <div class="row">
                                                <!-- begin col-4 -->
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>类型</label>
                                                        <div class="controls">
                                                             <select name="entity.type"  class="form-control" data-parsley-group="wizard-step-3" required>
                                           						 <option value="common" selected>Common</option>
                                           						 <option value="notice">notice</option>
                                           						 <option value="discount">discount</option>
                                       						 </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end col-4 -->               
                                            </div>
                                            <!-- end row -->
                                        </fieldset>
									</div>
									<!-- end wizard step-3 -->
									<!-- begin wizard step-4 -->
									<div class="wizard-step-4">
							
									 <div class="row fileupload-buttonbar">
                            <div class="col-md-7">
                                <span class="btn btn-success fileinput-button">
                                    <i class="fa fa-plus"></i>
                                    <span>添加文件</span>
                                    <input type="file" name="myFile"  accept="image/*">
                                </span>
                               <input type="submit" class="btn btn-primary" value="确认提交">
                            
                                <!-- The global file processing state -->
                                <span class="fileupload-process"></span>
                            </div>
                            <!-- The global progress state -->
                            <div class="col-md-5 fileupload-progress fade">
                                <!-- The global progress bar -->
                                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                                </div>
                                <!-- The extended global progress state -->
                                <div class="progress-extended">&nbsp;</div>
                            </div>
                        </div>
                        <!-- The table listing the files available for upload/download -->
                        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
							
							
							
							
							
									</div>
									<!-- end wizard step-4 -->
								</div>
							</form>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
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
	<!-- end page container -->
	 <!-- The template to display files available for upload -->
    <script id="template-upload" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-upload fade">
                <td class="col-md-1">
                    <span class="preview"></span>
                </td>
                <td>
                    <p class="name">{%=file.name%}</p>
                    <strong class="error text-danger"></strong>
                </td>
                
                <td>
                    {% if (!i && !o.options.autoUpload) { %}
                       
                    {% } %}
                    {% if (!i) { %}
                        <button class="btn btn-white btn-sm cancel">
                            <i class="fa fa-ban"></i>
                            <span>取消</span>
                        </button>
                    {% } %}
                </td>
            </tr>
        {% } %}
    </script>
    <!-- The template to display files available for download -->
    <script id="template-download" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-download fade">
                <td>
                    <span class="preview">
                        {% if (file.thumbnailUrl) { %}
                            <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                        {% } %}
                    </span>
                </td>
                <td>
                    <p class="name">
                        {% if (file.url) { %}
                            <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                        {% } else { %}
                            <span>{%=file.name%}</span>
                        {% } %}
                    </p>
                    {% if (file.error) { %}
                        <div><span class="label label-danger">Error</span> {%=file.error%}</div>
                    {% } %}
                </td>
                <td>
                    <span class="size">{%=o.formatFileSize(file.size)%}</span>
                </td>
                <td>
                    {% if (file.deleteUrl) { %}
                        <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                            <i class="glyphicon glyphicon-trash"></i>
                            <span>Delete</span>
                        </button>
                        <input type="checkbox" name="delete" value="1" class="toggle">
                    {% } else { %}
                        <button class="btn btn-warning cancel">
                            <i class="glyphicon glyphicon-ban-circle"></i>
                            <span>Cancel</span>
                        </button>
                    {% } %}
                </td>
            </tr>
        {% } %}
    </script>
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
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/parsley/dist/parsley.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-wizard/js/bwizard.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/form-wizards-validation.demo.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/vendor/tmpl.min.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/vendor/load-image.min.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload-image.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload-video.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
    <script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
    <!--[if (gte IE 8)&(lt IE 10)]>
        <script src="assets/plugins/jquery-file-upload/js/cors/jquery.xdr-transport.js"></script>
    <![endif]-->
	<script src="<%=basePath%>/BacksAdmin/assets/js/form-multiple-upload.demo.min.js"></script>
	
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	
	<script>
		$(document).ready(function() {
			App.init();
			FormMultipleUpload.init();
			FormWizardValidation.init();
		});
	</script>
	 
</body>
</html>
