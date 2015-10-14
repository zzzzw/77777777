 var validator;
$(function(){
	
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	
	bdyz();
	
 //回车提交事件
         $("body").keydown(function() {
             if (event.keyCode == "13") {//keyCode=13是回车键
                 $('#register').click();
             }
         });
         //--------回车提交事件完毕---------------------//
	
	
	
	
	//注册验证
$('#register').click(function(){

if(validator.form())            //判断表单验证是否都有效，无效则不执行ajax提交
{
$.ajax( {
		type : 'POST',
	   dataType : 'json', // json对象
		url : 'tuser!addTuser.action',
		data:$("#registerform").serialize(),   
		success : function(response, status, xhr) {

                           flag=response;
     
                         
    if(flag==1)
    {
   alert('注册成功！');
    window.location.href=basePath+"before/user/login.jsp";
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
	validator= $("#registerform").validate({
         
            rules: {
                "tue.account": {
                    required: true,
                    minlength: 2,
                    maxlength: 15,
                    remote:
               {                                          //验证用户名是否存在
               type:"POST",
               url:"tuser!verifyTuser.action",           
               data:{
                 account:function(){return $("#tue.account").val();}
               } 
              } 
          
                },
                "tue.psw": {
                    required: true,
                    minlength: 2,
                    maxlength: 16,
                },
                 pswqr: {
                    equalTo:'#psw'
                },
                
                "tue.name": {
                    required: true,
                    minlength: 3,
                    maxlength: 11,
                },
                "tue.phone": {
                    required: true,
                    digits:true,
                    minlength: 11,
                    maxlength:11,
                    
         
                },
                "tue.idcard": {
                    required: true,
                    idcard:true,
                    
                    remote:
               {                                          //验证用户名是否存在
               type:"POST",
               url:"tuser!verifyIdcard.action",           
               data:{
                 idcard:function(){return $("#tue.idcard").val();}
               } 
              } 
                },
               
                
               
            },
            messages: {
                "tue.account": {
                    required: '请输入用户名',
                    minlength: '用户名不能小于2个字符',
                    maxlength: '用户名不能超过15个字符',
                    remote: '用户名已存在',
                },
                "tue.psw": {
                    required: '请输入密码',
                    minlength: '密码不能小于2个字符',
                    maxlength: '密码不能超过16个字符'
        
                },
                pswqr: {
                    equalTo:'请确认两次输入的密码一致',
                },
                "tue.name": {
                    required: '请输入姓名',
                    minlength: '姓名不能少于3个字符',
                    maxlength: '姓名不能超过11个字符',
                },
                "tue.phone": {
                    required: '请输入手机号码',
                    digits:'请输入数字',
                    minlength: '请输入11位数字',
                    maxlength: '输入位数大于12位',
           
                },
                "tue.idcard": {
                    required: '请输入证件号码',
                    idcard:'证件号不合法',
                     remote: '该身份证已注册',
                },
               
               
            }
           
	})
	//自定义验证规则
	 $.validator.addMethod("idcard", function(value, element, params){
            var isIDCard1=/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
            var isIDCard2=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
            if(isIDCard1.test(value)||isIDCard2.test(value))
            return true;
            else
            return false;
        }, $.validator.format("请填写正确证件号码！"));
	}
