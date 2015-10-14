$(function(){
	$("h5.seattype").each(function(index,value){
		var seattype=$(value).text();
		if(seattype=='tdc')
		{
			$(value).text("头等舱")
		}
		if(seattype=='swc')
		{
			$(value).text("商务舱")
		}
		if(seattype=='jjc')
		{
			$(value).text("经济舱")
		}
		if(seattype=='thc')
		{
			$(value).text("特惠舱")
		}
	})
	
	$("#fjp").text($("#fzj").text()-$("#fbx").text()-$("#fsf").text());
	$("#hjp").text($("#hzj").text()-$("#hbx").text()-$("#hsf").text());
	$("#difference").text($("#hzj").text()-$("#fzj").text());
})