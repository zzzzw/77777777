<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<base href="<%=basePath%>">

		<title>My JSP 'test.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/BacksAdmin/discount/css/jquery-ui.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/BacksAdmin/discount/css/fancybox.css" />
		<link
			href="<%=basePath%>/BacksAdmin/airinfo/js/bootstrap-datetimepicker.min.css"
			rel="stylesheet" />


		<script
			src="<%=basePath%>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
			
		<script
			src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script
			src="<%=basePath%>/BacksAdmin/discount/js/jquery.fancybox-1.3.1.pack.js"></script>


		<script src="<%=basePath%>/BacksAdmin/discount/js/jquery.form.min.js"></script>
		<script
			src="<%=basePath%>/BacksAdmin/airinfo/js/bootstrap-datetimepicker.js"></script>
		<script
			src="<%=basePath%>/BacksAdmin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		
		
			
		<script src="<%=basePath%>/BacksAdmin/discount/js/jquery.validate.js" type="text/javascript"></script>
				<script src="<%=basePath%>/BacksAdmin/discount/js/form.js" type="text/javascript"></script>
		
		<script src="<%=basePath%>/BacksAdmin/discount/js/jquery.metadata.js" type="text/javascript"></script>		





	</head>

	<body>

	


		<div class="row" align="center">
			<form action="discount-manager!savedis.action" method="post" class="form-horizontal" id="Myform">
				<input type="hidden" name="dis.id" value="${dis.id}">
				<fieldset>
					<legend></legend>
					<div class="form-group">
						
						<label for=""description"" class="col-md-4 control-label">
							折扣描述：
						</label>

						<div class="col-md-5">
							<input type="text" id="description"  class="form-control" placeholder=""  value="${dis.description}"
								name="dis.description">
						</div>
						
					</div>
					<div class="form-group">
						<label for="pwd" class="col-md-4 control-label ">
							成&nbsp;&nbsp;&nbsp;人：
						</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="" id="adult"  value="${dis.adult}" name="dis.adult">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd" class="col-md-4 control-label ">
							儿&nbsp;&nbsp;&nbsp;童：
						</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="" id="children"  value="${dis.children}" name="dis.children">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd" class="col-md-4 control-label ">
							&nbsp;&nbsp;金牌会员：
						</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="" id="golden"  value="${dis.golden}" name="dis.golden">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd" class="col-md-4 control-label ">
							&nbsp;&nbsp;银牌会员：
						</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="" id="silver"  value="${dis.silver}" name="dis.silver">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd" class="col-md-4 control-label ">
							&nbsp;&nbsp;普通会员：
						</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="" id="discount"  value="${dis.discount}" name="dis.discount">
						</div>
					</div>
					
					
			<div class="form-group">
               			 <label for="dtp_input2" class="col-md-4 control-label">&nbsp;&nbsp;起始日期：</label>
                <div class="input-group date form_date col-md-4 col-md-pull-1" data-date="" data-date-format="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control"  type="text"  readonly value="${dis.starttime}"  name="dis.starttime">
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				
            </div>
            
			<div class="form-group">
               			 <label for="dtp_input2" class="col-md-4 control-label">&nbsp;&nbsp;截止日期：</label>
                <div class="input-group date form_date col-md-4 col-md-pull-1" data-date="" data-date-format="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control"  type="text"  readonly value="${dis.endtime }" name="dis.endtime">
                   
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				
            </div>


					<div class="col-md-2 col-md-offset-3">
						<button type="submit" class="btn btn-success">
							保存
						</button>
					</div>

					<div class="col-md-2 col-md-offset-1">
						<button type="reset" class="btn btn-info" id="reset">
							重置
						</button>
					</div>
					<s:if test="%{dis.id!=null}">
					<div class="col-md-2 col-md-offset-1">
						<a href="discount-manager!deletebyid.action?id=${dis.id}" class="btn btn-danger">删除</a>
					</div>
					</s:if>
				</fieldset>

			</form>

		</div>

		<script type="text/javascript">
	$(function() {
		$(".datepicker").datepicker();
		$("#isallday").click(function() {
			if ($("#sel_start").css("display") == "none") {
				$("#sel_start,#sel_end").show();
			} else {
				$("#sel_start,#sel_end").hide();
			}
		});

		$("#isend").click(function() {
			if ($("#p_endtime").css("display") == "none") {
				$("#p_endtime").show();
			} else {
				$("#p_endtime").hide();
			}
			$.fancybox.resize();//调整高度自适应
			});

		//提交表单
		$('#add_form').ajaxForm( {
			beforeSubmit : showRequest, //表单验证
			success : showResponse
		//成功返回
				});
	});

	function showRequest() {
		var events = $("#event").val();
		if (events == '') {
			alert("请输入日程内容！");
			$("#event").focus();
			return false;
		}
	}

	function showResponse(responseText, statusText, xhr, $form) {
		if (statusText == "success") {
			if (responseText == 1) {
				$.fancybox.close();
				$('#calendar').fullCalendar('refetchEvents'); //重新获取所有事件数据
				alert("sbsb")
			} else {
				alert(responseText);
			}
		} else {
			alert(statusText);
		}
	}
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
	
	</body>



</html>
