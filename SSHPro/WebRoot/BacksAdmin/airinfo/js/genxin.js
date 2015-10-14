$().ready(function() {
	
 $("#updateform").validate({
 	
	
	
    rules: {

  
   "l.startplace":{
   required: true,
   
   
   },
  
   "l.endplace":{
   required: true,
   
   },
   "p.id":{
   required: true,
   number:true,
   },
   
   
 
   
   
   
   "l.distance":{
    required:true,
	number:true,
	min:10
	
   },
   "l.starttime":{
    required:true
   },
   "l.endtime":{
    required:true
   },
   "companyid":{
    required:true
   },
   "p.tdcprice":{
    required:true,
	number:true,
	min:100
   },
   "p.swcprice":{
    required:true,
	number:true,
	min:100
   },
   "p.jjcprice":{
    required:true,
	number:true,
	min:100
	
   },
   "p.thcprice":{
    required:true,
	number:true,
	min:100
   }
   
   
   
 			},
  messages: {
 
  
   "l.startplace":{
   required: "不能为空",
  
   
   },
   
   "l.endplace":{
   required: "不能为空",
  
   },
   "p.id":{
   required: "不能为空",
  
   },
  
   "l.distance":{
    required:"不能为空",
	number:"必须是数字",
	min:"必须大于等于10"
   },
   "l.starttime":{
    required:"不能为空",
   },
   "l.endtime":{
    required:"不能为空",
   },
   "companyid":{
    required:"不能为空",
   },
   "p.tdcprice":{
    required:"不能为空",
	number:"必须是数字",
	min:"必须大于等于100"
   },
   "p.swcprice":{
    required:"不能为空",
	number:"必须是数字",
	min:"必须大于等于100"
   },
   "p.jjcprice":{
    required:"不能为空",
	number:"必须是数字",
	min:"必须大于等于100"
   },
   "p.thcprice":{
    required:"不能为空",
	number:"必须是数字",
	min:"必须大于等于100"
   }
   
 
   
  			},
					
    
    
    
    });
    
    
    var validator1 = $("#updateform").validate({
        submitHandler:function(form){
           
            form.submit();
        }    
    });
    $("#reset").click(function() {
        validator1.resetForm();
    });
    
});