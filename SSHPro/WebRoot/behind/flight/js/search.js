/**
 * 
 */
$(function() {
		$('.form_datetime').datetimepicker({
			language:'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0,
			pickerPosition : 'bottom-right',
			showMeridian : 1
		});
		
		$("#search").click(function(){
		$("#searchhb").html("<h3>正在为你查询航班，请稍等...</p>")
		    $.ajax({
		    data:{
		    sfz:$("#sfz").val(),
		    ddz:$("#ddz").val(),
		    cfrq:$("#cfrq").val()
		    },
		    dataType:'json',
		    error:function(data,status){
		    $("#searchhb").html("<h3>没有您要找的航班...</p>")
		    },
		    success:function(data,status){
		    
		    $.each(data, function(index, value)
		    {
		    
		    var st=value[3].substring(11,16);
		    var et=value[5].substring(11,16);
		   var ct= datediff(st,et);
		       $("#searchhb").html("<tr><td>"+"<div class='name'>"+
		       "<img src='./before/flight/img/logo.png' alt='...'>"+value[0]+value[1]+
		       "</div>"+st+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+et+"<br>"+value[2]+"--直达--"+value[4]+
							
						"</td>"+
						"<td  class='lineinfo'>详<br>情<br>"+
						"<img style='padding-top:10px' src='./before/flight/img/down_showinfo.png'></td>"+
						"<td><input type='radio' name='seat' value='tdc' checked>"+value[6]+"RMB"+
						"  <div>剩余："+value[7]+"张</div></td>"+
						"<td><input type='radio' name='seat' value='swc'>"+value[8]+"RMB"+
						"<div>剩余："+value[9]+"张</td>"+						 
						"<td><input type='radio' name='seat' value='jjc'>"+value[10]+"RMB"+
						"<div>剩余："+value[11]+"张</td>"+						
						"<td><input type='radio' name='seat' value='thc'><b>"+value[12]+"RMB"+
						"<div>剩余:"+value[13]+"张</b></td>"+
						"<td><a href='#' id='"+value[15]+"' class='btn btn-warning'>预定</a></td>"+
					"</tr>"+
					"<tr class='detailmsg' style='display:none'><td>出发   "+st+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
					value[2]+
					"<br>"+
					"到达  "+et+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+value[4]+ 
					"<br>行程时间："+ct+"</td>"+
					"<td colspan=6>"+value[0]+value[1]+"<div>机型:"+value[14]+"</div></td></tr>");
		    }
		    )
		  $(".lineinfo").on("click",function() {
		  if($(".detailmsg").is(":hidden"))
		    $(".detailmsg").show();
		    else{
		    $(".detailmsg").hide();
		    }
		    
	});
	$(".lineinfo").on("mouseover",function() {
             	$(this).css("background","gray");
	})
	$(".lineinfo").on("mouseout",function() {
             	$(this).css("background","#fff");
	})
	
		    },
		    type:'post',
		    url:'line!czhb.action'
		    })
		    return false;
		})
		
		
		 
	})
	function datediff(st, et){
	
	var shour=st.substring(0,2);
	var sminute=st.substring(3,5);
	var ehour=et.substring(0,2);
	var eminute=et.substring(3,5);
	var chour;
	var cminute;
	var ct;
	if(ehour>=shour)
	{
	chour=ehour-shour;
	}
	else{
	chour=ehour-shour+24;
	}
	if(eminute>=sminute)
	{
	cminute=eminute-sminute;
	}
	else{
	chour=chour-1;
	cminute=60+eminute-sminute;
	}
	ct=chour+"小时"+cminute+"分钟";
	return ct;
	}
	