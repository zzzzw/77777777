$().ready(function() {
	
 $("#addform").validate({
 	
	
	
    rules: {

   "l.startcity": {
    required: true,
    
   },
   "l.startplace":{
   required: true,
   
   
   },
   "l.endcity":{
   required: true,
   
   },
   "l.endplace":{
   required: true,
   
   },
   "p.id":{
   required: true,
   number:true,
   },
   
   
   "l.linename":{
   required: true,
    remote: {
		url: 'line-manager!haslinename.action',
		type: 'POST',
		dateType: 'json',
		data: {
			"linename": function(){
				return $('#linename').val();
									}
			  }
		    }
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
 
     "l.startcity": {
    required: "不能为空",
   
   },
   "l.startplace":{
   required: "不能为空",
  
   
   },
   "l.endcity":{
   required: "不能为空",
  
   },
   "l.endplace":{
   required: "不能为空",
  
   },
   "p.id":{
   required: "不能为空",
  
   },
   "l.linename":{
   required: "不能为空",
   remote:"航班已存在"
  
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
    
    
    var validator1 = $("#addform").validate({
        submitHandler:function(form){
           
            form.submit();
        }    
    });
    $("#reset").click(function() {
        validator1.resetForm();
    });
    
});