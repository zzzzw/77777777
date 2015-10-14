$(function(){

    
ckb();
     //批量删除


    //得到选中的值，ajax操作使用
    $("#submit").click(function() {
        var text="";
        $("input[name=ckb]").each(function() {
            if ($(this).is(":checked")== true) {
                text += ","+$(this).val();
            }
        });
        $("input[name=ajaxtext]").val(text);
         //alert(text);
       
       
      
    });








})
//全选与单选
function ckb(){

$("#select").click(function() {
        if ($("#select").is(":checked")== true) {
            $("input[name=ckb]").each(function() {
               $(this).prop('checked',true);
            });
        } else {
            $("input[name=ckb]").each(function() {
                $(this).prop('checked',false);
            });
        }
    });
    //取消其中一个则取消全选框的勾
     $("input[name=ckb]").each(function () { 
       $(this).click(function () { 
        if ($("input[name=ckb]:checked").length == $("input[name=ckb]").length) { 
       $("#select").attr("checked", "checked"); 
       } 
        else 
        $("#select").removeAttr("checked"); 
}); 
});

}


//点击修改按钮获取相应数据
function updatebutton(){

//点击修改按钮获取相应数据
$("input[name='updatehkgsxx']").each(function (){
//给相应input赋值
$(this).click(function(){
var a=$(this).parent().parent().children().eq(1).text();
var b=$(this).parent().parent().children().eq(2).text();
var c=$(this).parent().parent().children().eq(3).text();
var d=$(this).parent().parent().children().eq(4).text();
var e=$(this).attr('id');
var f=$(this).parent().parent().children().children("input").eq(1).attr('value');
$('#uname').val(a);
$('#uaddress').val(b);
$('#uphone').val(c);
$('#usummary').val(d);
$('#uid').val(e);
$('#lid').val(f);



})


})



}




