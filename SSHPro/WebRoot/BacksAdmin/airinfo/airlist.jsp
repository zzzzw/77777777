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
	<title>Color Admin | Dashboard</title>
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
	<link href="<%=basePath%>/BacksAdmin/airinfo/js/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	
    <link href="<%=basePath%>/BacksAdmin/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
 
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	
	<!-- ================== END BASE JS ================== -->
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
						<li class="has-sub active">
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
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">首页</a></li>
				<li class="active">航班管理</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">查询航班 <small>当天航班</small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
		   	
			<!-- end row -->
			<!-- begin row -->
			
			
		
			
			
			
			
			
			
			
			<div class="row">
				<div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="#modal-dialog" class="btn btn-xs btn-icon btn-circle btn-info" data-toggle="modal" ><i class="fa fa-plus"></i></a>
                                <a href="#modal-dialog1" class="btn btn-xs btn-icon btn-circle btn-danger" data-toggle="modal"><i class="fa fa-search"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                            </div>
                            
                            <!-- #添加航班 -->
							<div class="modal fade" id="modal-dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											<h4 class="modal-title">航班添加</h4>
										</div>
										<div class="modal-body">
											<!-- start form -->
											
							 <form class="form-horizontal"   id="addform"  action="line-manager!saveline.action" method="post">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">出发城市</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="l.startcity" />
                                    </div>
                                    <div class="error">
									</div>
                                    <div class="col-md-3">
                                        <input type="text" class="form-control" placeholder="机场" name="l.startplace" />
                                    </div>
                                    
                                    <div class="error">
									</div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">到达城市</label>
                                     <div class="col-md-6">
                                        <input type="text" class="form-control" name="l.endcity" />
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" class="form-control" placeholder="机场"  name="l.endplace"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">飞机</label>
                                    <div class="col-md-9">
                                        <select class="form-control" id="planeselect" name="p.id">
                                            <option value="">
												请选择飞机
											</option>
                                        </select>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label class="col-md-3 control-label">航班号</label>
                                    <div class="col-md-5">
                                       <input type="text" class="form-control" name="l.linename" id="linename" />
                                    </div>
                                    
                                    
                                    <div class="col-md-4">
                                       <input type="text" class="form-control" placeholder="距离" name="l.distance" />
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                                
                                <div class="form-group">
									<label class="control-label col-md-3">时间</label>
									<div class="col-md-5">
										<div class="input-group bootstrap-timepicker">
											<input id="timepicker1" type="text" class="form-control timepicker-24"  readonly="readonly" name="l.starttime"/>
											<span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
										</div>
									</div>
									
									<div class="col-md-4">
										<div class="input-group bootstrap-timepicker">
											<input id="timepicker2" type="text" class="form-control" readonly="readonly"   name="l.endtime" />
											<span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
										</div>
									</div>
								</div>
								
								
								 <div class="form-group">
                                    <label class="col-md-3 control-label">航空公司</label>
                                    <div class="col-md-9">
                                        <select class="form-control" id="companyselect" name="companyid">
                                         			<option value="">
														请选择航空公司
													</option>
                                        </select>
                                    </div>
                                </div>
							
								
								 <div class="form-group">
                                    <label class="col-md-3 control-label">头等舱</label>
                                     <div class="col-md-9 input-group">
                               			 <span class="input-group-addon">￥</span>
                                			<input type="text" class="form-control"  name="p.tdcprice"/>
                                		 <span class="input-group-addon">.00</span>
                            		</div>
                                 </div>
								 <div class="form-group">
                                    <label class="col-md-3 control-label">商务舱</label>
                                     <div class="col-md-9 input-group">
                               			 <span class="input-group-addon">￥</span>
                                			<input type="text" class="form-control" name="p.swcprice"/>
                                		 <span class="input-group-addon">.00</span>
                            		</div>
                                 </div>
								 <div class="form-group">
                                    <label class="col-md-3 control-label">经济舱</label>
                                     <div class="col-md-9 input-group">
                               			 <span class="input-group-addon">￥</span>
                                			<input type="text" class="form-control" name="p.jjcprice"/>
                                		 <span class="input-group-addon">.00</span>
                            		</div>
                                 </div>
								 <div class="form-group">
                                    <label class="col-md-3 control-label">特惠舱</label>
                                     <div class="col-md-9 input-group">
                               			 <span class="input-group-addon">￥</span>
                                			<input type="text" class="form-control" name="p.thcprice"/>
                                		 <span class="input-group-addon">.00</span>
                            		</div>
                                 </div>
								
                                
                                <div class="form-group">
                                    <label class="col-md-3 control-label">提示</label>
                                    <div class="col-md-9">
                                        
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="build" />
                                              	  是否生成未来五天的售票信息（含今天）
                                            </label>
                                        </div>
                                    </div>
                                </div>
                              
                                <div class="form-group">
                                    <label class="col-md-3 control-label"></label>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-sm btn-success">提交</button>
                                    </div>
                                </div>
                            </form>
                            
                            
                            
											<!-- end form -->
											
											
											
										</div>
										<div class="modal-footer">
											<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">关闭</a>
										
										</div>
									</div>
								</div>
							</div>
                            <!-- #查询航班 -->
							<div class="modal fade" id="modal-dialog1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											<h4 class="modal-title">航班查询</h4>
										</div>
										<div class="modal-body">
											<!-- start form -->
											
											
										<form action="line-manager!querybyproperties.action" class="form-horizontal"  role="form" method="post">
        <fieldset>
            
       		 <div class="form-group">
                                    <label class="col-md-2 control-label">城市</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-daterange">
                                            <input type="text" class="form-control" placeholder="出发" name="l.startcity" />
                                            <span class="input-group-addon">到</span>
                                            <input type="text" class="form-control"  placeholder="到达"  name="l.endcity"/>
                                        </div>
                                    </div>
                                </div>
			<div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">日期</label>
                <div class="input-group date form_date col-md-8" data-date="" data-date-format="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text"  readonly name="l.planedate">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				
            </div>
           <div class="form-group">
                                    <label class="col-md-3 control-label"></label>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-sm btn-success">提交</button>
                                    </div>
                                </div>
            
            
				
        </fieldset>
    </form>
											
											
											
											
											
											<!-- end form -->
											
											
											
										</div>
										<div class="modal-footer">
											<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">关闭</a>
										
										</div>
									</div>
								</div>
							</div>
                            
                            
                            
                            <h4 class="panel-title">航班列表</h4>
                        </div>
                        <div class="alert alert-info fade in">
                            <button type="button" class="close" data-dismiss="alert">
                                <span aria-hidden="true">&times;</span>
                            </button>
                             ${tips }    	
                        </div>
                        
                        
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table id="data-table" class="table table-striped table-bordered">
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
											
											<a href="line-manager!querybyid.action?seatid=${hb[0]}" class="btn btn-success m-r-5 m-b-5" >详细</a>
										</td>
									</tr>
								</s:iterator>
                                        
                                    </tbody>
                                    
                                </table>
                               
                            </div>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
			
		
			
			
			
			
			
			
				</div>		
			<!-- end row -->
		</div>
		<!-- end #content -->
		
        <!-- begin theme-panel -->
        
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
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/DataTables/js/dataTables.fixedHeader.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/masked-input/masked-input.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	
	
	
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/masked-input/masked-input.min.js"></script>
	
	
	
	<script src="<%=basePath%>/BacksAdmin/airinfo/js/bootstrap-datetimepicker.js"></script>
	<script src="<%=basePath%>/BacksAdmin/airinfo/js/bootstrap-datetimepicker.zh-CN.js"></script>
	
	
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/password-indicator/js/password-indicator.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/form-plugins.demo.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	
	<!-- 引入自己的js -->
	<script src="<%=basePath%>/BacksAdmin/airinfo/js/update.js"></script>
	
	
	<!-- 表单验证 -->
	<script src="<%=basePath%>/BacksAdmin/airinfo/js/jquery.validate.js"></script>
	<script src="<%=basePath%>/BacksAdmin/airinfo/js/jquery.metadata.js"></script>
	<script src="<%=basePath%>/BacksAdmin/airinfo/js/form.js"></script>
	
	<!-- ================== END PAGE LEVEL JS ================== -->
	<script type="text/javascript">
	                       $('#data-table').DataTable({
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
              
   <script type="text/javascript">
    $('.form_date').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
  autoclose: 1,
  todayHighlight: 1,
  startView: 2,
  minView: 2,
  forceParse: 0
    });
</script>    
<SCRIPT type="text/javascript">
$(function () {
                $('#timepicker1').timepicker({
                	  minuteStep: 5,
    					showInputs: false,
    				  disableFocus: true,
                     showMeridian:false,
                     showSeconds:true
                     
                });
                $('#timepicker2').timepicker({
                	 showSeconds:true,
                	  minuteStep: 5,
    					showInputs: false,
    				  disableFocus: true,
                     showMeridian:false
                });
                
                
                
                
            });


</SCRIPT>       
              
                    
                        
	<script>
		$(document).ready(function() {
			App.init();
			
		});
	</script>
	
	
 
</body>
</html>