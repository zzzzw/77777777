 var validator;
$(function(){
	
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	
	bdyz();
	
	
	//注册验证
$('#addHkgsxx').click(function(){

if(validator.form())            //判断表单验证是否都有效，无效则不执行ajax提交
{
$.ajax( {
		type : 'POST',
	   dataType : 'json', // json对象
		url : 'air-company!addHkxx.action',
		data:$("#addHkgsxxform").serialize(),   
		success : function(response, status, xhr) {

                           flag=response;
                            alert(flag);
                         
    if(flag==1)
    {
   alert('添加成功！');
    window.location.href=basePath+"/BacksAdmin/aircompany/add.jsp";
   } 
   else
   {
    alert('添加失败！');
   }	
		},
		error : function() {
			alert("error");
		}


	})
	}
})







	
})


//表单验证
	function bdyz(){
	validator= $("#addHkgsxxform").validate({
         
            rules: {
                "ae.name": {
                    required: true,
                    minlength: 2,
                    maxlength: 10,
                    remote:
               {                                          //验证用户名是否存在
               type:"POST",
               url:"air-company!verifyAircompany.action",           
               data:{
                 name:function(){return $("#ae.name").val();}
               } 
              } 
          
                }, 
                "ae.address": {
                    required: true,
                    minlength: 2,
                    maxlength: 30,
                },
                "ae.summary": {
                    required: true,
            
                    maxlength: 11,
                },
                "ae.phone": {
                    required: true,
                    digits:true,
                   
                    maxlength:11,
         
                },
    
               
                
               
            },
            messages: {
                "ae.name": {
                    required: '请输入公司名',
                    minlength: '名称不能小于2个字符',
                    maxlength: '名称不能超过10个字符',
                    remote: '名称已存在',
                },
                "ae.address": {
                    required: '请输入地址',
                    minlength: '地址不能小于2个字符',
                    maxlength: '地址不能超过30个字符'
        
                },
       
                "ae.summary": {
                    required: '请输入评价',
                
                  
                },
                "ae.phone": {
                    required: '请输入手机号码',
                    digits:'请输入数字',
            
                    maxlength: '输入位数大于12位',
           
                },
         
               
               
            }
           
	})
	
	}
