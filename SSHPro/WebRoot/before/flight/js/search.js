/**
 * 
 */
$(function() {
		$('.form_datetime').datetimepicker({
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
		});
		
		$("#search").click(function(){
		$("#searchhb").html("<h3>正在为你查询航班，请稍等...</p>")
		    $.ajax({
		    data:{
		    sfz:$("#sfz").val(),
		    ddz:$("#ddz").val(),
		    cfrq:$("#cfrq").val()
		    },
		    async:false,
		    dataType:'json',
		    error:function(data,status){
		    $("#searchhb").html("<h3>查询出错，请稍后再试...</p>")
		    },
		    success:function(data,status){
		    if(data==null||data=='')
		     $("#searchhb").html("<h3>查不到您的航班...</p>")
		    $.each(data, function(index, value)
		    {
		    
		    var st=value[3].substring(11,16);
		    var et=value[5].substring(11,16);
		   var ct= datediff(st,et);
		       $("#searchhb").html("<tr><td>"+"<div class='name'>"+
		       "<img style=\"height:32px;width:32px;\" src=\"./before/flight/img/"+value[16]+"\" alt='...'>"+value[0]+value[1]+
		       "</div>"+st+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+et+"<br>"+value[2]+"--直达--"+value[4]+
							
						"</td>"+
						"<td  class='lineinfo'>详<br>情<br>"+
						"<div style='padding-top:10px' class=\"glyphicon glyphicon-plus\"></div></td>"+
						"<td><input type='radio' name=seatnum"+value[15]+" value='tdc'>"+value[6]+"RMB"+
						"  <div >剩余：<b class='seatnum'>"+value[7]+"</b>张</div></td>"+
						"<td><input type='radio' name=seatnum"+value[15]+" value='swc'>"+value[8]+"RMB"+
						"<div>剩余：<b class='seatnum'>"+value[9]+"</b>张</td>"+						 
						"<td><input type='radio' name=seatnum"+value[15]+" value='jjc'>"+value[10]+"RMB"+
						"<div>剩余：<b class='seatnum'>"+value[11]+"</b>张</td>"+						
						"<td><input type='radio' name=seatnum"+value[15]+" value='thc'>"+value[12]+"RMB"+
						"<div>剩余:<b class='seatnum'>"+value[13]+"</b>张</td>"+
						"<td><a id='"+value[15]+"' class='btn btn-warning ydjp'>预定</a></td>"+
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
		  {
		    $(".detailmsg").show();
		    $(this).children("div").attr("class","glyphicon glyphicon-minus");
		    }
		    else{
		    $(".detailmsg").hide();
		    $(this).children("div").attr("class","glyphicon glyphicon-plus");
		    }		    
	});
	
	$(".lineinfo").on("mouseover",function() {
             	$(this).css("background","gray");
	})
	$(".lineinfo").on("mouseout",function() {
             	$(this).css("background","#fff");
	})
	
	$("#searchhb tr td .seatnum").each(function(index,value){
	  if($(value).text()==0)
	  {
	      $(value).parent().prev("input").prop("disabled",true);
	  }
	})
	
	$("body").on("click","a.ydjp",function(){
		  var lid=  $(this).attr("id");
		  var seattype;
		  var price;
		seattype=$("input[type='radio']:checked").val();
		  location.href='line!ydjp.action?entity.id='+lid+'&seattype='+seattype;
		    });	
		    },
		    type:'post',
		    url:'line!czhb.action'
		    })
		    return false;
		})
		
		
		 
	})
	
	$(function(){
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
	$(function(){
	LazyLoad.css(["./before/flight/css/cityStyle.css"], function () {
            LazyLoad.js(["./before/flight/js/cityScript.js"], function () {
                var test = new citySelector.cityInit("sfz");
                var test2 = new citySelector.cityInit("ddz");
            });
        });
	})
	
	$(function(){
	$("body div").on("click",".form_datetime",function(){
          var h=$(this).offset().top;
          $(document).scrollTop(0);
        })
	})
	$(function(){
	$(".lineinfo").on("click",function() {
		  if($(".detailmsg").is(":hidden"))
		  {
		    $(".detailmsg").show();
		    $(this).children("div").attr("class","glyphicon glyphicon-minus");
		    }
		    else{
		    $(".detailmsg").hide();
		    $(this).children("div").attr("class","glyphicon glyphicon-plus");
		    }		    
	});
	
	$(".lineinfo").on("mouseover",function() {
             	$(this).css("background","gray");
	})
	$(".lineinfo").on("mouseout",function() {
             	$(this).css("background","#fff");
	})
	
	$("#searchhb tr td .seatnum").each(function(index,value){
	  if($(value).text()==0)
	  {
	      $(value).parent().prev("input").prop("disabled",true);
	  }
	})
	
	$("body").on("click","a.ydjp",function(){
		  var lid=  $(this).attr("id");
		  var seattype;
		  var price;
		seattype=$("input[type='radio']:checked").val();
		  location.href='line!ydjp.action?entity.id='+lid+'&seattype='+seattype;
		    });
	
	})
	