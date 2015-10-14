$(function(){

chushihua();

  $('#ssexit').click(function(){   //退出销毁session
  
  zhuxiao();
}) 
   
   
   

})
//页面初始化
function chushihua(){
if($('#ssflag').val()==null||$('#ssflag').val()==""||$('#ssflag').val()=='null')
{
$('#loginstate1').hide();          //用户隐藏
$('#loginstate2').hide(); 
$('#sslogin').show();            //登录显示
$('#sszhuce').show();            //注册显示
}
else
{
$('#loginstate1').show();          //用户名显示
$('#loginstate2').show(); 
$('#sslogin').hide();            //登录隐藏
$('#sszhuce').hide();            //注册隐藏
}
}



//注销session
function zhuxiao(){
$.ajax( {
		type : 'POST',
	   dataType : 'json', // json对象
		url : 'tuser!noSession.action',
		data:null,  
		success : function(response, status, xhr) {
         
                           flag=response;
    var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';         
                         
    if(flag==1)
    {
   alert('注销成功！');
   window.location.href=basePath+"before/f-index.jsp";
   } 


		},
		error : function() {
			alert("error");
		}


	})

	}