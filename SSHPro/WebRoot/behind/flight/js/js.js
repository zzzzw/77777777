
 $(function(){  
  var a=$("#a004").val();
    var a1=$("#b004").val();
  if(a==a1)
  {
       $("#a0041").attr("disabled","true");
  }
  var b=$("#a003").val();
    var b1=$("#b003").val();
  if(b==b1)
  {
       $("#a0031").attr("disabled","true");
  }
  var c=$("#a002").val();
    var c1=$("#b002").val();
  if(c==c1)
  {
       $("#a0021").attr("disabled","true");
  }
  var d=$("#a001").val();
    var d1=$("#b001").val();
   if(d==d1)
  {
       $("#a0011").attr("disabled","true");
  }   
    if(a==a1&b==b1&c==c1&d==d1)
  {
       $("#yuding").attr("disabled","true");
  }

 });
