//文档加载完毕执行
$(function() {
	 
	
	//在js中获取web路径 http://www.2cto.com/kf/201307/227003.html
	var location = (window.location+'').split('/'); 
	var basePath = location[0]+'//'+location[2]+'/'+location[3]+'/'; 
 
	
	// 首页加载新闻
	$.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'new!showAll.action',
		data : null,
		success : function(response, status, xhr) {
			var h="";
			var i="";
			var j="";
					   
			
			$.each(response, function(index, value) {	
			        h+='<div class="panel panel-default"><div class="panel-heading">';
					h+='<h4 class="panel-title"><a data-toggle="collapse" data-parent="#index" href="#'+index+'">'+value.title+'</a></h4></div>';    
					h+='<div id="'+index+'" class="panel-collapse collapse in">';  
					h+='<div class="panel-body">'+value.content+'</div>'; 
					h+='</div></div>';					
					if(index==9)
					return false;					
				})
			$("#accordion1").append(h);
			$.each(response, function(index, value) {	
			        if(index<=9)
			        {}
			        else
			        {
				        i+='<div class="panel panel-default"><div class="panel-heading">';
						i+='<h4 class="panel-title"><a data-toggle="collapse" data-parent="#index" href="#'+index+'">'+value.title+'</a></h4></div>';    
						i+='<div id="'+index+'" class="panel-collapse collapse ">';  
						i+='<div class="panel-body">'+value.content+'</div>'; 
						i+='</div></div>';					
						if(index==19)
						return false;	
					}				
				})
			$("#accordion2").append(i);
			$.each(response, function(index, value) {	
					if(index<=19){}
			        else
			        {
			            j+='<div class="panel panel-default"><div class="panel-heading">';
						j+='<h4 class="panel-title"><a data-toggle="collapse" data-parent="#index" href="#'+index+'">'+value.title+'</a></h4></div>';    
						j+='<div id="'+index+'" class="panel-collapse collapse ">';  
						j+='<div class="panel-body">'+value.content+'</div>'; 
						j+='</div></div>';					
						if(index==29)
						return false;	
			        }				
			  
			       				
				})
			$("#accordion3").append(j);	

		},
		error : function() {
			alert("加载失败");
		}

	})
	
	
})