$(function(){

     	$.ajax({
			url:'order!queryorder.action',
			data:{
			orderstatus:'所有',
			AllOrder:true
		},
			type:'post',
			dataType:'json',
			success:function(data,textStatus){
			$.each(data,function(index,value){
			var planedate=value[2].substring(0,10);
			var starttime=value[4].substring(11,16);
			var endtime=value[6].substring(11,16);
				$("#allorder").append("<table class=\"table table-bordered\">"+
"							<thead>"+
"								<tr style=\"background-color: #96D2FF;\">"+
"									<th colspan=5>"+
"										订单号：<span class=\"ordernum\">"+value[9]+" </span>下单时间："+value[10]+
"									</th>"+
"								</tr>"+
"							</thead>"+
"							<tbody>"+
"								<tr"+
"									style=\"height: 80px; vertical-align: middle; text-align: center;\">"+
"									<td style=\"padding-top: 14px;\">"+value[0]+value[1]+"<br>"+planedate+
"									</td>"+
"									<td colspan=2 style=\"padding-top: 14px;\">"+value[3]+"--"+value[5]+
"<br>"+starttime+"&nbsp;&nbsp;&nbsp;&nbsp;"+endtime+
"									</td>"+
"									<td style=\"padding-top: 14px;\"><span class=\"orderstatus\">"+value[7]+"</span><br><span class=\"remaintime\">"+value[12]+"</span>"+
"									</td>"+
"									<td style=\"padding-top: 14px;\">"+
"										总价：<span style=\"color:#ff6600\">￥"+value[11]+"</span><br><a class=\"orderdetail\" style=\"margin-top:10px;\" href=\"javascript:;\">查看详情</a>"+
"									</td>"+
"								</tr>"+
"							</tbody>"+
"						</table>");
			});
			$("span.remaintime").each(function(index,value){
			   var str=$(value).text();
			   if(str>0)
		     	{
			      var minute=Math.floor(str/60);
			      var second=str%60;
			      $(value).text(minute+":"+second);		
			       window.setInterval(function(){
			       $(value).text(parseInt(str/60)+":"+str%60);
			        str--;  
			       },1000) 
			          
			     }
			    else{
			       $(value).text("");
			    }
			});
		},
		error:function(){
			alert("出错");
		}			
		})

	$("#myTab li").click(function(){
		var orderstatus=$(this).attr("orderstatus");
		var isAll=false;
		var divid;
		if(orderstatus=="所有")
		{
			divid="allorder";
			isAll=true;
		}
		if(orderstatus=="等待付款")
		{
			divid="unpay";

		}
		if(orderstatus=="已经付款")
		{
			divid="payed";

		}
		if(orderstatus=="交易完成")
		{
			divid="complete";

		}
		if(orderstatus=="订单失效")
		{
			divid="failure";
		}
		if(orderstatus=="已退款")
		{
			divid="refund";
		}
		
		$.ajax({
			url:'order!queryorder.action',
			data:{
			orderstatus:orderstatus,
			AllOrder:isAll
		},
			type:'post',
			dataType:'json',
			success:function(data,textStatus){
			if(data=="")
			{
			$("#"+divid).text("没有相关订单");
			}
			else{
			$("#"+divid).html("");
			$.each(data,function(index,value){
			var planedate=value[2].substring(0,10);
			var starttime=value[4].substring(11,16);
			var endtime=value[6].substring(11,16);
				$("#"+divid).append("<table class=\"table table-bordered\">"+
"							<thead>"+
"								<tr style=\"background-color: #96D2FF;\">"+
"									<th colspan=5>"+
"										订单号：<span class=\"ordernum\">"+value[9]+" </span>下单时间："+value[10]+
"									</th>"+
"								</tr>"+
"							</thead>"+
"							<tbody>"+
"								<tr"+
"									style=\"height: 80px; vertical-align: middle; text-align: center;\">"+
"									<td style=\"padding-top: 14px;\">"+value[0]+value[1]+"<br>"+planedate+
"									</td>"+
"									<td colspan=2 style=\"padding-top: 14px;\">"+value[3]+"--"+value[5]+
"<br>"+starttime+"&nbsp;&nbsp;&nbsp;&nbsp;"+endtime+
"									</td>"+
"									<td style=\"padding-top: 14px;\"><span class=\"orderstatus\">"+value[7]+"</span><br><span class=\"remaintime\">"+value[12]+"</span>"+
"									</td>"+
"									<td style=\"padding-top: 14px;\">"+
"										总价：<span style=\"color:#ff6600\">￥"+value[11]+"</span><br><a class=\"orderdetail\" style=\"margin-top:10px;\" href=\"javascript:;\">查看详情</a>"+
"									</td>"+
"								</tr>"+
"							</tbody>"+
"						</table>");
$("span.remaintime").each(function(index,value){
			   var str=$(value).text();
			   if(str>0)
		     	{
			      var minute=Math.floor(str/60);
			      var second=str%60;
			      $(value).text(minute+":"+second);		
			       window.setInterval(function(){
			       $(value).text(parseInt(str/60)+":"+str%60);
			        str--;  
			       },1000) 
			          
			     }
			    else{
			       $(value).text("");
			    }
			});
			})
			
			};
			
		},
		error:function(){
			alert("出错");
		}			
		})
		
	})
	
	$("body").on("click",".orderdetail",function(){
	var ordernum=$(this).parents("tbody").prev("thead").children("tr").children("th").children("span").text();
	location.href="order!orderdetail.action?ordernum="+ordernum;
	})
	
})

