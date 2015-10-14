$().ready(function() {
 $("#Myform").validate({
 	

    rules: {

   "dis.description": {
    required: true,
    minlength: 3
   },
   "dis.adult":{
   required: true,
   number:true,
   
   },
   "dis.children":{
   required: true,
   number:true,
   },
   "dis.golden":{
   required: true,
   number:true,
   },
   "dis.silver":{
   required: true,
   number:true,
   },
   "dis.discount":{
   required: true,
   number:true,
   },
   "dis.starttime":{
    required:true
   },
   "dis.endtime":{
    required:true
   }
   
 			},
  messages: {
 
   "dis.description": {
    required: "请输入描述",
    minlength: "不能少于三个字"
   },
   "dis.adult":{
   required: "不能为空",
   number:"请输入数字",
   
   },
   "dis.children":{
   required: "不能为空",
   number:"请输入数字",
   
   },
   "dis.golden":{
   required: "不能为空",
   number:"请输入数字",
   
   },
   "dis.silver":{
   required: "不能为空",
   number:"请输入数字",
   
   },
   "dis.discount":{
   required: "不能为空",
   number:"请输入数字",
   },
   "dis.starttime":{
    required:"不能为空"
   },
   "dis.endtime":{
    required:"不能为空"
   }
   
 
   
  			}		
    
    
    
    });
    
    
    var validator1 = $("#Myform").validate({
        submitHandler:function(form){
           
            form.submit();
        }    
    });
    $("#reset").click(function() {
        validator1.resetForm();
    });
    
});