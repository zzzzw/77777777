$(function(){
	 $('#multiselect').multiselect({
         keepRenderingSort: true
     });
     
     
})

$(function(){
    $("input[type='button']").click(function(){
      $("#mymodal").modal("toggle");
    });
    var handleStatus=$("input[name='handleStatus']").attr("value");
    if(handleStatus=='success')
    {
    alert("操作成功！");
    location.href="./before/order/jsp/myorder.jsp";
    }
  });