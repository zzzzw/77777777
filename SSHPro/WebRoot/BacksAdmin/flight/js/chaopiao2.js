 var validator;
$(function(){
	
	var flag=0;
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';
	
	bdyz();
	
	

});
//表单验证
	function bdyz(){
	validator= $("#zzw1").validate({
            rules: {
               　　　　                   "ticket.idcard":{
                     required: true,
                     idcard:true,
                      
                      },
                     "radio2":{
                     required: true,
                   
                      
                      },
                         
            },
            messages: {
                    "ticket.idcard": {
                    required: '请输入证件号码',
                    idcard:'证件号不合法',
                   
                     },
                      "radio2":{
                      required: '请输入折扣类型',
                   
                      
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



