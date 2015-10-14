$(function(){
	$('.form_date').datetimepicker({
		language:'zh-CN',
		weekStart : 1,
		todayBtn : 1,
		todayHighlight : 1,
		startView : 2,
		minView : 2,
		pickerReferer:"input",
		forceParse:1,
		autoclose:true,
		pickerPosition : 'bottom-right',
		format: "yyyy-MM-dd",
		showMeridian : false
    }).on("changeDate",function(){
    	var data=$("#dtp_input2").attr("value");
    	var startcity =$("input[name='startcity']").attr("value");
    	var endcity =$("input[name='endcity']").attr("value");
    	var planedate=$("#dtp_input2").attr("value");
    	$.ajax({
    		url:'line!czhb.action',
    		dataType:'json',
    		type:'post',
    		data:{
    		sfz:startcity,
    		ddz:endcity,
    		cfrq:planedate   		
    	},
    		success:function(data,textStatus){
    		 if(data==null||data=='')
    		     $("#searchhb").html("<h3>查不到您的航班...</p>");
    		 $.each(data, function(index, value)
    				    {  				    
    				    var st=value[3].substring(11,16);
    				    var et=value[5].substring(11,16);
    				   var ct= datediff(st,et);
    				       $("#searchhb").html("<tr><td>"+"<div class='name'>"+
    				       "<img src='./before/flight/img/logo.png' alt='...'>" +
    				       "<input type='hidden' name='line.linename' value=\""+value[1]+"\"/>"+value[0]+value[1]+
    				       "</div>"+st+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+et+"<br>"+value[2]+"--直达--"+value[4]+  									
    								"</td>"+
    								"<td  class='lineinfo'>详<br>情<br>"+
    								"<img style='padding-top:10px' src='./before/flight/img/down_showinfo.png'></td>"+
    								"<td><input type='radio' name=seatnum value='tdc'>"+value[6]+"RMB"+
    								"  <div >剩余：<b class='seatnum'>"+value[7]+"</b>张</div></td>"+
    								"<td><input type='radio' name=seatnum value='swc'>"+value[8]+"RMB"+
    								"<div>剩余：<b class='seatnum'>"+value[9]+"</b>张</td>"+						 
    								"<td><input type='radio' name=seatnum value='jjc'>"+value[10]+"RMB"+
    								"<div>剩余：<b class='seatnum'>"+value[11]+"</b>张</td>"+						
    								"<td><input type='radio' name=seatnum"+value[15]+" value='thc'>"+value[12]+"RMB"+
    								"<div>剩余:<b class='seatnum'>"+value[13]+"</b>张</td>"+
    								"<td><a id='"+value[15]+"' class='btn btn-warning ydjp'>改签</a></td>"+
    							"</tr>"+
    							"<tr class='detailmsg' style='display:none'><td>出发   "+st+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
    							value[2]+
    							"<br>"+
    							"到达  "+et+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+value[4]+ 
    							"<br>行程时间："+ct+"</td>"+
    							"<td colspan=6>"+value[0]+value[1]+"<div>机型:"+value[14]+"</div></td></tr>");
    				    });   
    		 $(".lineinfo").on("click",function() {
    			  if($(".detailmsg").is(":hidden"))
    			    $(".detailmsg").show();
    			    else{
    			    $(".detailmsg").hide();
    			    }});
    		 
    		 $(".lineinfo").on("mouseover",function() {
              	$(this).css("background","gray");
 	})
 	$(".lineinfo").on("mouseout",function() {
              	$(this).css("background","#fff");
 	})
 	
 	$(".ydjp").on("click",function(){
 		var seattype=$("input[type='radio']:checked").val();
 	    $("input[name='seattype']").attr("value",seattype);
 	
    	var planedate=$("#dtp_input2").attr("value");
 		$("form").submit();
 		
 		
 	})
    	},
    		error:function(){
    		alert("数据出错")
    		
    	}
    	})
    });
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
	
	
})

