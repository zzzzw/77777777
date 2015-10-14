//文档加载完毕执行
$(function(){	
		//加载新闻
	 $.ajax({
		 type:'POST',
		 dataType:'json',  //json对象
		 url:'main-manager!newsajax.action',
		 success:function(response,status,xhr){	
		 
		    
	       
		   var q="";
		 
		 
		 $.each(response,function(index,value){		 
		 q=q+'<li class="media media-lg"><a href="javascript:;" class="pull-left">';
		 q=q+'<img class="media-object" src="assets/img/gallery/gallery-1.jpg" alt=""/></a>';
		 q=q+'<div class="media-body"><h4 class="media-heading">'+value[4]+'</h4>';			
		 q=q+value[2]+'</div></li>';									

		
		 })
		 $("#mynews").append(q);
		 
		 
		 
	 },
		error:function(XMLHttpRequest, textStatus, errorThrown){
		                alert("加载失败"); 
		                alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
	 } 
		 
	 }) 
	
	
	
	


	
})