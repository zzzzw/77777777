		
		$(document).ready(function(){
	
	   
		$("#messagename").hide();
		$("#messagepsw").hide();
		
		//用户账号验证
				$("#username").change(function(){
				alert("aa");
						var user=$("#username").val();
						$.ajax({
							type:'post',
							dataType:'json',
							cache:'false',
							async:'false',
							data:{
							username:user
							},
							url:'employee!AjaxloginUsername.action',
							
							success:function(response){
								if(response==1){
									$("#messagename").hide();
								}else{
									$("#messagename").show();
								}
							},  //success
						 error : function() {  
                  		     alert("异常！");  
  					    }  
					});  //ajax
				});  //username-change
				
				
		
				
				
		});//document
	