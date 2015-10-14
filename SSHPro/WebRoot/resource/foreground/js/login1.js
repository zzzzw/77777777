
$(function(){
	
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	
	bdyz1();
	
 //回车提交事件
         $("body").keydown(function() {
             if (event.keyCode == "13") {//keyCode=13是回车键
                 $('#login1').click();
             }
         });
         //--------回车提交事件完毕---------------------//


	
	//登录验证
$('#login1').click(function(){


$.ajax( {
		type : 'POST',
	   dataType : 'json', // json对象
		url : 'tuser!Tuserlogin.action',
		data:$("#login1form").serialize(),   
		success : function(response, status, xhr) {

                            flag=response;                         
    if(flag==1)
    {
    window.location.href=basePath+"before/f-index.jsp";
   }
   else if(flag==2)
   alert('密码错误');
   else if(flag==3)
   alert('验证码错误');
   else if(flag==4)
   alert('某项内容为空');
   else 
   alert('该用户不存在');
                            	
		},
		error : function() {
			alert("登陆出错");
		}


	})


})






	
})


//表单验证
	function bdyz1(){
	 $("#login1form").validate({
          
            rules: {
                "tue.account": {
                    required: true,
                    minlength: 2,
                    maxlength: 15,
                 
                },
                "tue.psw": {
                    required: true,
                    minlength: 2,
                    maxlength: 16
                },
               yzm: {
                    required: true,
                    minlength: 1,
                },
               
            },
            messages: {
                "tue.account": {
                    required: '请输入用户名',
                    minlength: '用户名不能小于2个字符',
                    maxlength:'用户名不能大于15个字符',
                    remote: '用户名不存在'
                },
                "tue.psw": {
                    required: '请输入密码',
                    minlength: '密码不能小于2个字符',
                    maxlength: '密码不能超过16个字符'
                },
                yzm: {
                    required: '验证码不能为空',
                    minlength:'验证码位数不足'
                },
               
            }
	})
	}
