window.onload=function(){
	
	   $.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'line-manager!queryfreeplane.action',
		success : function(response, status, xhr) {			
			
			 $.each(response,function(index,value){		
			 
			 			 
					 $("#planeselect").append("<option value='"+value[0]+"'>"+value[0]+":"+value[10]+"</option>");  
		
		
			 			 
			 });			
			company();
      		     				
		},
		error : function() {
			alert("加载失败");
			alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
		}
	})		
	

}
function company(){
	 $.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'line-manager!queryallcompany.action',
		success : function(response, status, xhr) {			
			
			 $.each(response,function(index,value1){		
			 
			 			 
					 $("#companyselect").append("<option value='"+value1.id+"'>"+value1.name+"</option>");  
		
		
			 			 
			 });			
			
      		     				
		},
		error : function() {
			alert("加载失败");
			alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
		}
	})		
	
	
	
	
	
	
	}