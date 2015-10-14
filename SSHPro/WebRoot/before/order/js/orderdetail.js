$(function(){
	var orderstatus=$("input[name='orderstatus']").attr("value");
	if(orderstatus=='等待付款')
	{
		$("#ordercontrol").html("<div class=\"col-lg-1\">"+
				"						      <button class=\"btn btn-default ordercancel\" >取消订单</button>"+
				"						      </div>"+
				"						      <div class=\"col-lg-1\">"+
"						      <button class=\"btn btn-warning payment\" >去支付</button>"+
"						      </div>")
	}
	if(orderstatus=='已经付款')
	{
		$("#ordercontrol").html("<div class=\"col-lg-1\">"+
"						      <button class=\"btn btn-default orderrefund\" >退票</button>"+
"						      </div>"+
"						      <div class=\"col-lg-1\">"+
"						      <button class=\"btn btn-info orderchange\" >改签</button>"+
"						      </div>")
	}
	
	$("#ordercontrol button.orderrefund").click(function(){
		var ordernum=$("input[name='ordernum']").attr("value");
		location.href='order!ordermsg1.action?ordernum='+ordernum;
	})
	
	$("#ordercontrol button.ordercancel").click(function(){
		var ordernum=$("input[name='ordernum']").attr("value");
		location.href='order!ordermsg1.action?ordernum='+ordernum;
	})
	$("#ordercontrol button.orderchange").click(function(){
		var ordernum=$("input[name='ordernum']").attr("value");
		location.href='order!ordermsg2.action?ordernum='+ordernum;
	})
	
	$("#ordercontrol button.payment").click(function(){
		var ordernum=$("input[name='ordernum']").attr("value");
		location.href='order!ybpayment.action?ordernum='+ordernum;
	})
	$.ajax({
		url:'ajaxorder!syck.action',
		type:'post',
		dataType:'json',
		data:{
		ordernum:$("input[name='ordernum']").attr("value")
	},
		success:function(data,textStatus){
		$.each(data,function(index,value){
			$("#myTab").append("<li >"+
					"							<a href=\"#"+value[1]+"\" role=\"tab\" data-toggle=\"tab\">"+value[0]+"</a>"+
					"						</li>");
			$("#myTabContent").append("<div class=\"tab-pane\" id=\""+value[1]+"\">"+
					"							<div class=\"row\">"+
					"								<h5 class=\"col-lg-2\">"+
					"									证件类型:"+
					"								</h5>"+
					"								<h5 class=\"col-lg-4\">"+
					"									身份证"+
					"								</h5>"+
					"								<h5 class=\"col-lg-2\">"+
					"									个人总价:"+
					"								</h5>"+
					"								<h5 class=\"col-lg-4\">"+
					"									<b style=\"color: #ff6600;\">"+value[2]+"</b>"+
					"								</h5>"+
					"							</div>"+
					"							<div class=\"row\">"+
					"								<h5 class=\"col-lg-2\">"+
					"									证件号码:"+
					"								</h5>"+
					"								<h5 class=\"col-lg-4\">"+value[1]+
					"								</h5>"+
					"								<h5 class=\"col-lg-2\">"+
					"									票价:"+
					"								</h5>"+
					"								<h5 class=\"col-lg-4\">"+(value[2]-70)+
					"								</h5>"+
					"							</div>"+
					"							<div class=\"row\">"+
					"								<h5 class=\"col-lg-2\">"+
					"									保险:"+
					"								</h5>"+
					"								<h5 class=\"col-lg-4\">"+
					"									￥ 20"+
					"								</h5>"+
					"								<h5 class=\"col-lg-2\">"+
					"									税费:"+
					"								</h5>"+
					"								<h5 class=\"col-lg-2\">"+
					"									￥ 50"+
					"								</h5>"+
					"								<h5 class=\"col-lg-2\">"+value[4]+
					"								</h5>"+
					"							</div>"+
					"						</div>");
		})
		},
		error:function(){}
	})	
})