<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	<link href="<%=basePath%>/BacksAdmin/assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/BacksAdmin/discount/css/fancybox.css" />
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
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
						<li class="has-sub active">
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
				<li><a href="javascript:;">Home</a></li>
				<li class="active">Calendar</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">折扣管理 <small></small></h1>
			<!-- end page-header -->
			<!-- begin panel -->
			<div class="panel panel-inverse">
			    <div class="panel-heading">
			        <div class="panel-heading-btn">
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			        </div>
			        <h4 class="panel-title">折扣操作</h4>
			    </div>
			    <div class="panel-body p-0">
			        <div class="vertical-box">
			            <div class="vertical-box-column p-15 bg-silver width-sm">
                            <div id="external-events" class="calendar-event">
                                <h4 class=" m-b-20">节假日折扣 </h4>
                                <div class="external-event bg-purple" data-bg="bg-purple" data-title="国庆折扣" data-media="<i class='fa fa-paperclip'></i>" data-desc="成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0" data-discount="1" data-children="0.5" data-adult="0.9" data-golden="0.8" data-silver="0.85">
                                    <h5><i class="fa fa-comments fa-lg fa-fw"></i> 国庆黄金周</h5>
                                    <p>成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0</p>
                                </div>
                                <div class="external-event bg-blue" data-bg="bg-blue" data-title="五一折扣" data-media="<i class='fa fa-paperclip'></i>" data-desc="成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0" data-discount="1" data-children="0.5" data-adult="0.9" data-golden="0.8" data-silver="0.85">
                                    <h5><i class="fa fa-comments fa-lg fa-fw"></i> 五一黄金周</h5>
                                    <p>成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0</p>
                                </div>
                                <div class="external-event bg-green" data-bg="bg-green" data-title="春节折扣" data-media="<i class='fa fa-paperclip'></i>" data-desc="成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0" data-discount="1" data-children="0.5" data-adult="0.9" data-golden="0.8" data-silver="0.85">
                                    <h5><i class="fa fa-comments fa-lg fa-fw"></i> 春节</h5>
                                    <p>成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0</p>
                                </div>
                                <div class="external-event bg-orange" data-bg="bg-purple" data-title="端午折扣" data-media="<i class='fa fa-paperclip'></i>" data-desc="成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0" data-discount="1" data-children="0.5" data-adult="0.9" data-golden="0.8" data-silver="0.85">
                                    <h5><i class="fa fa-comments fa-lg fa-fw"></i> 端午节</h5>
                                    <p>成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0</p>
                                </div>
                                <div class="external-event bg-red" data-bg="bg-red" data-title="中秋折扣" data-media="<i class='fa fa-paperclip'></i>" data-desc="成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0" data-discount="1" data-children="0.5" data-adult="0.9" data-golden="0.8" data-silver="0.85">
                                    <h5><i class="fa fa-comments fa-lg fa-fw"></i> 中秋节</h5>
                                    <p>成人：0.9，儿童：0.5，金牌：0.8，银牌：0.85，普通：1.0</p>
                                </div>
                               	
								<div class="alert alert-success fade in m-b-15">
								<strong>消息!</strong>
								 <p id="myp">${applicationScope.tips}</p>
								<span class="close" data-dismiss="alert">&times;</span>
							</div>
                               
                            </div>
                            
                        </div>
                        <div id="calendar" class="vertical-box-column p-15 calendar"></div>
			        </div>
			    </div>
			</div>
			<!-- end panel -->
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
                <div class="divider">1234</div>
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
		
							<div class="modal fade" id="modal-alert">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											<h4 class="modal-title">错误提示</h4>
										</div>
										<div class="modal-body">
											<div class="alert alert-danger m-b-0">
												<h4><i class="fa fa-info-circle"></i> 原因</h4>
												<p>折扣日期不能与其他折扣日期重叠，请重新修改！</p>
											</div>
										</div>
										<div class="modal-footer">
											<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">关闭</a>
										</div>
									</div>
								</div>
							</div>
		
		
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
	<script src="<%=basePath%>/BacksAdmin/assets/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/calendar.demo.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/assets/js/apps.min.js"></script>
	<script src="<%=basePath%>/BacksAdmin/discount/js/jquery.fancybox-1.3.1.pack.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	
	<div>
	<script type="text/javascript">  
    $(document).ready(function() {  
   
       var date = new Date();  
       var d = date.getDate();  
       var m = date.getMonth();  
       var y = date.getFullYear();  
       
       
       
       	var e={left:"today prev,next ",center:"title",right:"month"};
		var t=new Date;
		var n=t.getMonth();
		var r=t.getFullYear();
       $('#calendar').fullCalendar({  
           header:e,
				selectable:true,
				selectHelper:true,
				droppable:true,
            drop:function(e,t){
					var n=$(this).data("eventObject");
					var r=$.extend({},n);
					r.start=e;r.allDay=t;
					$("#calendar").fullCalendar("renderEvent",r,true);
					if($("#drop-remove").is(":checked")){$(this).remove()}},
            
          eventRender:function(e,t,n){
						var r=e.media?e.media:"";
						var i=e.description?e.description:"";
						t.find(".fc-event-title").after($('<span class="fc-event-icons"></span>').html(r));
						t.find(".fc-event-title").append("<small>"+i+"</small>")},
           editable: true,  
           slotEventOverlap:false,
           events:function(start, end, callback) { //在日历中的天显示相应日程  
           var urlR ="discount-manager!queryall.action";//后台查询日程，返回json格式  
           $.ajax({    
            url: urlR,  
             
            editable:true,
            success:function(data) {
            
            	  
            	
                var events = [];    
                var info = eval(data); 
                var color; 
                var k=0  
                for (var i = 0; i < info.length; i++) { 
                	if(k>=10)
                	 k=0;
                	//颜色的选择的变化
                	if(k%10==0||k%10==5)
                	 color='bg-green'
                	else if(k%10==1||k%10==6)
                	 color='bg-red' 
                	else if(k%10==2||k%10==7)
                	 color='bg-red' 
                	else if(k%10==3||k%10==8)
                	 color='bg-orange' 
                	else if(k%10==4||k%10==9)
                	 color='bg-purple' 
                	
                	 k++;
                   var ev = info[i];    
                    var title = ev.id;   
                  
                    var x;   
                  
                   var evtstart=formatJson(ev.starttime);  
                     var evtend=formatJson(ev.endtime);  
                     
                      events.push({   //设置在日历中的天显示相应日程的样式  
                        title:ev.description,    
                        start:evtstart,    
                        end:evtend,    
                        media:'<i class="fa fa-paperclip"></i>',
                        description:'成人：'+ev.adult+',儿童：'+ev.children+',金牌：'+ev.golden+',银牌：'+ev.silver+',普通：'+ev.discount,
                        ids:ev.id,
                        className:color,   
                        allDay:true
                   });    
                }    
                callback(events); 
                }   
              
          })    
         },eventClick: function(calEvent, jsEvent, view) {   //点击日程事件  
              
                $.fancybox({//调用fancybox弹出层 
                
                'title':'更改折扣',
                'autoDimensions':false,
                'centerOnScroll':true,
                'autoHeight':true,	
                'autoWidth':true,
                
                'onClosed':function(){ location.reload() },
               
                'onStart':function(){$.fancybox.resize},
                
                'width':550,
                'height':500,
                'padding':20,
                'margin':20,
                'type':'ajax', 
                'href':'discount-manager!querybyid.action?id='+calEvent.ids
            }); 
               
               
               
            },
            
             eventDrop: function(calEvent, dayDelta, minuteDelta, allDay, revertFunc, jsEvent, ui, view) 
			{  		
					var updateCrmCalendarDate="discount-manager!change.action";  
                    var fstart  = $.fullCalendar.formatDate(calEvent.start, "yyyy-MM-dd HH:mm:ss");  
                    var fend  = $.fullCalendar.formatDate(calEvent.end, "yyyy-MM-dd HH:mm:ss");  
                    var fullDate = $.fullCalendar.formatDate(calEvent.start, "yyyy-MM-dd"); 
                   
                 $.getJSON
				(   
                    updateCrmCalendarDate+"?starttime="+fstart+"&&endtime="+fend+"&&id="+calEvent.ids,  
                    {  
                    },  
                    function(data){  
                    
                    	if(data=='error'){
                    	$("#modal-alert").modal()
                    	
                    	
                    	$('#modal-alert').on('hidden.bs.modal', function (e) {  
  							location.reload() 
							})  
                    	
                    	}
                    
                      var events = [];  
                        if(data != "{}"){  
                            var termMap = eval("("+data+")");  
                            $.each(termMap,function(key,value) {  
                             toast(value);  
                             if(value=='操作成功'){  
                                refetchEvents: $("#calendar").fullCalendar("refetchEvents");                               
                             }else{  
                             revertFunc();//操作失败可以复原  
                             }  
                            });  
                        }  
                      
                    }  
                )  
              
            },  
            eventResize:function(calEvent, dayDelta, minuteDelta, allDay, revertFunc, jsEvent, ui, view) {
            	
            		var updateCrmCalendarDate="discount-manager!change.action";  
                    var fstart  = $.fullCalendar.formatDate(calEvent.start, "yyyy-MM-dd HH:mm:ss");  
                    var fend  = $.fullCalendar.formatDate(calEvent.end, "yyyy-MM-dd HH:mm:ss");  
                    var fullDate = $.fullCalendar.formatDate(calEvent.start, "yyyy-MM-dd"); 
                   
                 $.getJSON
				(   
                    updateCrmCalendarDate+"?starttime="+fstart+"&&endtime="+fend+"&&id="+calEvent.ids,  
                    {  
                    },  
                    function(data){  
                    
                    
                      var events = [];
                        
                      if(data=='error'){
                    	$("#modal-alert").modal()
                    	$('#modal-alert').on('hidden.bs.modal', function (e) {  
  							location.reload() 
							}) 
                    	}
                      
                        if(data != "{}"){  
                            var termMap = eval("("+data+")");  
                            $.each(termMap,function(key,value) {  
                             toast(value);  
                             if(value=='操作成功'){  
                                refetchEvents: $("#calendar").fullCalendar("refetchEvents");                               
                             }else{  
                             revertFunc();//操作失败可以复原  
                             }  
                            });  
                        }  
                      
                    }  
                )  
            
            
            
            },
            
         	eventAfterRender:function(event, element, view ){
         		if(event.ids==null){
         			var updateCrmCalendarDate="discount-manager!addbyUI.action";  
                    var fstart  = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");  
                    var fend  = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");  
                    var fullDate = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd"); 
                 ch=new Array;  
                 ch[0]=event.description.substring(3,6)
                 ch[1]=event.description.substring(10,13)
                 ch[2]=event.description.substring(17,20)
                 ch[3]=event.description.substring(24,28)
                 ch[4]=event.description.substring(32)
               	result=ch[0]+','+ch[1]+','+ch[2]+','+ch[3]+','+ch[4]
                 
                 
                
                
         $.ajax({
        url:   updateCrmCalendarDate+"?starttime="+fstart+"&&endtime="+fend,
        datatype: "json",
        type: 'post',
        data : {
			'dis.description':event.title,
			'result':result
		},
        success: function (response, status, xhr) {   //成功后回调
        
        	if(response==1){
        	
        		$("#modal-alert").modal()
                    	$('#modal-alert').on('hidden.bs.modal', function (e) {  
  							location.reload() 
				}) 
        	}else{
        		event.ids=response
        		event.end=event.start
                 }
        },
        error: function(e){    //失败后回调
            alert(e);
        },
        
})  
         		
         		
         		
         		}
         		
         	},
            
            dayClick:function(date){   //点击天事件  
           
       	    var selDate =$.fullCalendar.formatDate(date,'yyyy-MM-dd');
                $.fancybox({//调用fancybox弹出层 
                
           
                'title':'新建折扣',
                'autoDimensions':false,
                'centerOnScroll':true,
                'autoHeight':true,	
                'autoWidth':true,
                
                'onClosed':function(){ location.reload() },
              
                'onStart':function(){$.fancybox.resize},
                
                'width':550,
                'height':500,
                'padding':20,
                'margin':20,
                'type':'ajax', 
                
                'href':'discount-manager!test.action'
            }); 
         }     
       });  
       	
   });  
 </script> 
 </div>
 
 <script type="text/javascript">
 $("#external-events .external-event").each(function(){
																				var e= {title:$.trim($(this).attr("data-title")),
																						className:$(this).attr("data-bg"),
																						media:$(this).attr("data-media"),
																						description:$(this).attr("data-desc")
																					    };
																			
																			
																			$(this).data("eventObject",e);
																			$(this).draggable({
																								zIndex:999,
																								revert:true,
																								revertDuration:0
																							  })
																});
 
 </script>
 
 
  <script type="text/javascript">  
 //格式化时间函数,此函数为了处理json格式中带date类型数据的  
function formatJson(time)  
{  
var jsonDate=new Date(time);  

var result = jsonDate.format("yyyy-MM-dd hh:mm:ss");  
return result;  
}  
  
Date.prototype.format = function(format){  
    var o =  
    {  
        "M+" : this.getMonth()+1, //month  
        "d+" : this.getDate(),    //day  
        "h+" : this.getHours(),   //hour  
        "m+" : this.getMinutes(), //minute  
        "s+" : this.getSeconds(), //second  
        "q+" : Math.floor((this.getMonth()+3)/3),  //quarter  
        "S" : this.getMilliseconds() //millisecond  
    }  
    if(/(y+)/.test(format))  
    format=format.replace(RegExp.$1,(this.getFullYear()+"").substr(4 - RegExp.$1.length));  
    for(var k in o)  
    if(new RegExp("("+ k +")").test(format))  
    format = format.replace(RegExp.$1,RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));  
    return format;  
}  

   
 </script>  

	
	
	
	<script>
		$(document).ready(function() {
			App.init();

		});
	</script>
	 
</body>
</html>