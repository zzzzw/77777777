$(function(){

 $('#hqdtmm').click(function(){

 $.ajax( {

    type : 'POST',

    dataType : 'json', // json对象

    url : 'tuser!Dtmm.action',
   data: {

               uphone:$("#login2form input[name='uphone']").val(),                //kv传值

            }, 

success :function(response, status,xhr) {

if(response==1)
    alert("验证码已经发送至指定号码。");


},

error : function() {

    alert("加载失败");

}



})
 
 
 
 })







})