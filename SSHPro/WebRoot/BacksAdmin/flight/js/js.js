
 $(function(){  
 // alert(1);
  var a=$("#a004").val();
    var a1=$("#b004").val();
  if(a==0)
  {
       $("#a0041").attr("disabled","true");
  }
  var b=$("#a003").val();
    var b1=$("#b003").val();
  if(b==0)
  {
       $("#a0031").attr("disabled","true");
  }
  var c=$("#a002").val();
    var c1=$("#b002").val();
  if(c==0)
  {
       $("#a0021").attr("disabled","true");
  }
  var d=$("#a001").val();
    var d1=$("#b001").val();
   if(d==0)
  {
       $("#a0011").attr("disabled","true");
  }   
    if(a==0&b==0&c==0&d==0)
  {
       $("#yuding").attr("disabled","true");
  }
  
  
  
       bdyz();


 });
 
 //表单验证
	function bdyz(){
	validator= $("#zzw1").validate({
            rules: {
               　　　　                   
                     "radio1":{
                     required: true,
                   
                      
                      },
                         
            },
            messages: {
                    
                      "radio1":{
                      required: '请选择舱位类型',
                   
                      
                      },
              
   
            }
           
	});

 }



 
