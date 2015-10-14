 var validator2;
$(function(){

jzgrxx();//加载个人信息
bdyz();
$('#save').hide();



//点击修改隐藏自身显示保存
$('#update').click(function(){
$('#update').hide();
$('#save').show();

xggrxx();//修改个人信息

})




//点击保存隐藏自身显示修改
$('#save').click(function(){

//验证是否全部通过
if(validator2.form())
{


$.ajax( {
		type : 'POST',
	   dataType : 'json', // json对象
		url : 'tuser!updateGrxx.action',
		data:$("#grxxform").serialize(),   
		success : function(response, status, xhr) {
                         
                           flag=response;
                         
                         
    if(flag==1)
    {
   alert('修改成功！');
   } 	
   jzgrxx();
$('#update').show();

$('#save').hide();
		},
		error : function() {
			alert("error");
		}


	})
     

	}
	
	
	
	
	


})






})


//修改个人信息
function xggrxx(){	

	$.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'tuser!showGrxx.action',
		data:$("#grxxform").serialize(),  
		success : function(response, status, xhr) {
			var s = "";
		
			// 组合
s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">账户名称:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text" name="tue.account" id="tue.account" readonly value="'+response.account+'"/>';
s +='                 </div>';
s +='	              <label class="col-lg-2">账户类型:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text"  name="tue.type" value="'+response.type+'" readonly/>';
s +='                 </div>';
s +='	         </div>';

s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">姓名:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text" name="tue.name" value="'+response.name+'"/>';
s +='                 </div>';
s +='	              <label class=" col-lg-2">密码:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text" name="tue.psw" id="psw" value="'+response.psw+'"/>';
s +='                 </div>';
s +='	         </div>';

s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">性别:</label>';
s +='                 <div class="col-lg-3" >';
s +='	               <input type="text" name="tue.sex" value="'+response.sex+'" readonly/>';
s +='                 </div>';
s +='	              <label class="col-lg-2">联系方式:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text" name="tue.phone" value="'+response.phone+'"/>';
s +='                 </div>';
s +='	         </div>';

s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">证件类型:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text" name="sfz" value="身份证" readonly/>';
s +='                 </div>';
s +='	              <label class="col-lg-2">证件号码:</label>';
s +='                 <div class="col-lg-3" >';
s +='	              <input type="text"  name="tue.idcard" value="'+response.idcard+'"/>';
s +='                 </div>';
s +='	         </div>';



			
			
					      
		   
			$("#grxx").html(s); 
			


		},
		error : function() {
			alert("加载失败");
		}

	})

}


//加载个人信息
function jzgrxx(){	
	$.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'tuser!showGrxx.action',
		data:$("#grxxform").serialize(),  
		success : function(response, status, xhr) {
			var s = "";
			
								// 组合
s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">账户名称:</label>';
s +='	              <div class="col-lg-4">'+ response.account+ '</div>';
s +='	              <label class="col-lg-2">账户类型:</label>';
s +='	              <div class="col-lg-4">'+ response.type+ '</div>';
s +='	         </div>';

s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">姓名:</label>';
s +='	              <div class="col-lg-4">'+ response.name+ '</div>';
s +='	              <label class=" col-lg-2">密码:</label>';
s +='	              <div class="col-lg-4">'+ response.psw+ '</div>';
s +='	         </div>';

s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">性别:</label>';
s +='	              <div class="col-lg-4">'+ response.sex+ '</div>';
s +='	              <label class="col-lg-2">联系方式:</label>';
s +='	              <div class="col-lg-4">'+ response.phone+ '</div>';
s +='	         </div>';

s +='	         <div class="form-group">';
s +='	              <label class="col-lg-2">证件类型:</label>';
s +='	              <div class="col-lg-4"><input type="text" name="sfz" value="身份证" readonly/></div>';
s +='	              <label class="col-lg-2">证件号码:</label>';
s +='	              <div class="col-lg-4">'+ response.idcard+ '</div>';
s +='	         </div>';



			
			
					      
		   
			$("#grxx").html(s); 
		},
		error : function() {
			alert("加载失败");
		}

	})

}


//表单验证
	function bdyz(){
	validator2= $("#grxxform").validate({
         
            rules: {
                "tue.account": {
                    required: true,
                    minlength: 2,
                    maxlength: 10,
                  
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
                },
               
                
               
            },
            messages: {
                "tue.account": {
                    required: '请输入用户名',
                    minlength: '用户名不能小于2个字符',
                    maxlength: '用户名不能超过10个字符',
              
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
                },
               
               
            }
           
	})
	 $.validator.addMethod("idcard", function(value, element, params){
            var isIDCard1=/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
            var isIDCard2=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
            if(isIDCard1.test(value)||isIDCard2.test(value))
            return true;
            else
            return false;
        }, $.validator.format("请填写正确证件号码！"));
	}