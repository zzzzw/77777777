 var validator3;
$(function(){
	
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	
	bdyz2();
	
	
	//注册验证
$('#savehkgsxx').click(function(){

if(validator3.form())            //判断表单验证是否都有效，无效则不执行ajax提交
{

$("#hkgsform").submit();

	}
	
	
//end if
})







	
})


//表单验证
	function bdyz2(){
	validator3= $("#hkgsform").validate({
         
            rules: {
                "ae.name": {
                    required: true,
                    minlength: 2,
                    maxlength: 10,
                  
          
                }, 
                "ae.address": {
                    required: true,
                    minlength: 2,
                    maxlength: 30,
                },
                "ae.summary": {
                    required: true,
            
                 
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
