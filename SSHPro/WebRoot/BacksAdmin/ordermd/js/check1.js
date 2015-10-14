 var validator;
$(function(){
	//alert(1);
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	
	bdyz();
	
	

});
//表单验证
	function bdyz(){
	validator= $("#zzw1").validate({
            rules: {
               　　　　        "tue.name": {
                    required: true,
                    minlength: 3,
                    maxlength: 11,
                },
                "tue.idcard":{
                     required: true,
                     idcard:true,
                      remote:
		              {                                          //验证身份证是否存在
		               type:"POST",
		               url:"tuser!verifyIdcard.action",           
		               data:{
		                 name:function(){return $("#tue.idcard").val();}
		                 } 
		              } 
                },
                "tue.sex":{
                      required: true,
                },
                 "tue.phone": {
                    required: true,
                    digits:true,
                    minlength: 11,
                    maxlength:11,
         
                },
                 "tue.account": {
                    required: true,
                    minlength: 2,
                    maxlength: 10,
                     remote:
		              {                                          //验证身份证是否存在
		               type:"POST",
		               url:"tuser!verifyAccount.action",           
		               data:{
		                 name:function(){return $("#tue.account").val();}
		                 } 
		              } 
                  
                },
                "tue.psw": {
                    required: true,
                    minlength: 2,
                    maxlength: 16,
                },
                "tue.type":{
                   required: true,
                },             
            },
            messages: {
                  "tue.name": {
                    required: '请输入姓名',
                    minlength: '姓名不能少于3个字符',
                    maxlength: '姓名不能超过11个字符',
                },
                  "tue.idcard": {
                    required: '请输入证件号码',
                    idcard:'证件号不合法',
                    remote: '身份证已存在',
                },
                 "tue.sex": {
                    required: '请输入性别',        
                },
                 "tue.phone": {
                    required: '请输入手机号码',
                    digits:'请输入数字',
                    minlength: '请输入11位数字',
                    maxlength: '输入位数大于12位',
           
                },
                 "tue.account": {
                    required: '请输入用户名',
                    minlength: '用户名不能小于2个字符',
                    maxlength: '用户名不能超过10个字符',
                    remote: '账号已存在',
              
                },
                "tue.psw": {
                    required: '请输入密码',
                    minlength: '密码不能小于2个字符',
                    maxlength: '密码不能超过16个字符'
        
                },
                "tue.type": {
                    required: '请输入用户类型',                                  
                },
   
            }
           
	});
	 $.validator.addMethod("idcard", function(value, element, params){
            var isIDCard1=/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
            var isIDCard2=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
            if(isIDCard1.test(value)||isIDCard2.test(value))
            return true;
            else
            return false;
        }, $.validator.format("请填写正确证件号码！")
        
      );
 }



