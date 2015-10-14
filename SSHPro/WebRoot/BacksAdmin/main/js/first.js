window.onload=function(){
		var initializationTime = (new Date()).getTime();
		function showLeftTime() {
	
		var now = new Date();
		var year = now.getYear();
		var month = now.getMonth();
		var day = now.getDate();
		var hours = now.getHours();
		var minutes = now.getMinutes();
		var seconds = now.getSeconds();
		document.all.show.innerHTML =hours + ":" + minutes + ":" + seconds + "";
		//一秒刷新一次显示时间
		var timeID = setTimeout(
		showLeftTime,1000);
		}
	
	
	
	
	
	   $.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'main-manager!firstajax.action',
		success : function(response, status, xhr) {			
			
					 $("#xiaoshou").append(response[0]); 
					 $("#dis").append('金牌：'+response[1]+'，银牌：'+response[2]+'<br>普通：'+response[3]+',成人：'+response[4]); 
					 $("#tuser").append(response[5]); 
					 showLeftTime()
		
			
      		     				
		},
		error : function() {
			alert("加载失败");
			alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
		}
	})		
	

}