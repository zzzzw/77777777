 var validator;
 var validator3;
$(function(){
	
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	



	
	bdyz3();



 //回车提交事件
         $("body").keydown(function() {
             if (event.keyCode == "13") {//keyCode=13是回车键
                 $('#login2').click();
             }
         });
         //--------回车提交事件完毕---------------------//
  
  
    
         
         	
	
	//登录验证
$('#login2').click(function(){


bdyz2();

if(validator.form())            //判断表单验证是否都有效，无效则不执行ajax提交
{



//登录判断
$.ajax( {
		type : 'POST',
	   dataType : 'json', // json对象
		url : 'tuser!UTuserlogin.action',
		data:$("#login2form").serialize(),   
		success : function(response, status, xhr) {

                            flag=response;                         
    if(flag==1)
    {
    window.location.href=basePath+"before/f-index.jsp";
   }
   else if(flag==0)
   alert('动态密码错误');
                            	
		},
		error : function() {
			alert("登陆出错");
		}


	})
	
	
}


})




//验证码点击
$('#hqdtmm').click(function(){

if(validator3.form())            //判断表单验证是否都有效，无效则不执行ajax提交
{

 $.ajax( {

    type : 'POST',

    dataType : 'json', // json对象

    url : 'tuser!Dtmm.action',
   data: {

               uphone:$("#login2form input[name='uphone']").val(),                //kv传值

            }, 

success :function(response, status,xhr) {


if(response==1)
    alert("验证码已经发送至指定号码。");


},

error : function() {

    alert("未知错误");

}



})
 
   	}
else
{
alert('您已有账号，请转至会员登录');
}
 
 })
 

 












	
})


//表单验证1
	function bdyz2(){
	validator= $("#login2form").validate({
         
            rules: {
              
                uphone: {
                    required: true,
                    digits:true,
                    minlength: 11,
                    maxlength:11,
         
             remote:

               {                                          //验证手机注册的用户名是否存在

               type:"POST",

               url:"tuser!verifyPhone.action",          

               data:{
                'uphone':function(){return $("#uphone").val();}

           //      'uphone':$("#login2form input[name='uphone']").val(),

               }

              }
                },
                dtmm: {
                    required: true,
                 
                },
               
                
               
            },
            messages: {
               
                uphone: {
                    required: '请输入手机号码',
                    digits:'请输入数字',
                    minlength: '请输入11位数字',
                    maxlength: '输入位数大于12位',
                    remote:'该号码已有相应会员账号，请转至会员登录'
           
                },
                dtmm: {
                    required: '请输入动态密码',
                   
                },
               
               
            }
           
	})
	
	}
	
	
	//表单验证3
	function bdyz3(){
	validator3= $("#login2form").validate({
         
            rules: {
              
                uphone: {
                    required: true,
                    digits:true,
                    minlength: 11,
                    maxlength:11,
         
             remote:

               {                                          //验证手机注册的用户名是否存在

               type:"POST",

               url:"tuser!verifyPhone.action",          

               data:{
                'uphone':function(){return $("#uphone").val();}

           //      'uphone':$("#login2form input[name='uphone']").val(),

               }

              }
                },
              
                
               
            },
            messages: {
               
                uphone: {
                    required: '请输入手机号码',
                    digits:'请输入数字',
                    minlength: '请输入11位数字',
                    maxlength: '输入位数大于12位',
                    remote:'该号码已有相应会员账号，请转至会员登录'
           
                },
              
               
            }
           
	})
	}
	