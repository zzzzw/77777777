$(function(){

initTable();
//删除
 //   $(".table-responsive").on('click', 'checkbox#ckb', function () {
 // var data = $("#hkgstable").DataTable().row($(this).parents("tr")).data();
 // alert("Do you want delete " + data + "?");
  //  });
    //修改
     
		ckb();
	updatebutton();

//批量删除


    //得到选中的值，ajax操作使用
    $("#submit").click(function() {
        var text="";
       $("input[name=ckb]").each(function() {
            if ($(this).is(":checked")== true) {
                text += ","+$(this).parent().parent().children().eq(0).text();
           }
        });
        $("input[name=ajaxtext]").val(text);
         alert(text);
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
var e=$(this).parent().parent().children().eq(0).text();
var f=$(this).parent().parent().children().eq(5).text();
//var f=$(this).parent().parent().children().children("input").eq(1).attr('value');
$('#uname').val(a);
$('#uaddress').val(b);
$('#uphone').val(c);
$('#usummary').val(d);
$('#uid').val(e);
$('#lid').val(f);



})


})



}






//显示数据
function initTable() {
     //   var paras = $("#hkgslist").serialize();
        $("#hkgstable").dataTable({
            "bFilter": false,//去掉搜索框
            //"bAutoWidth": true, //自适应宽度
           
            //"sAjaxDataProp" : "aData",
            "bDestroy" : true,
            "bProcessing" : true,
            "sAjaxSource" : "air-company!showHkxx2.action?now=" + new Date().getTime(),
            "bServerSide" : true,
            "bSort":false,
            "fnServerData": retrieveData,
            "columnDefs": [
      {
      "targets": -1,//修改
     "data": null,
      "defaultContent": "<td><input type='button' class='btn btn-warning' data-toggle='modal' data-target='#myModal' value='修改' name='updatehkgsxx' /></td>"
  },
  {
      "targets": -2,//多选框
      "data": null,
      "defaultContent": "<td><input type='checkbox' name='ckb' /></td>"
  }
  ] ,
            "oLanguage" : {
                "sProcessing" : "正在加载中......",
                "sLengthMenu" : "每页显示 _MENU_ 条记录",
                "sZeroRecords" : "没有数据！",
                "sEmptyTable" : "表中无数据存在！",
                "sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                "sInfoEmpty" : "显示0到0条记录",
                "sInfoFiltered" : "数据表中共为 _MAX_ 条记录",
                //"sSearch" : "搜索",
                "oPaginate" : {
                    "sFirst" : "首页",
                    "sPrevious" : "上一页",
                    "sNext" : "下一页",
                    "sLast" : "末页"
                }
            }
        });
    }
    //为了实现同步
    function retrieveData(sSource, aoData, fnCallback) {
  /* get 方法调用*/
  $.ajax({
    "type": "get",
    "contentType": "application/json",
    "url": sSource,
    "dataType": "json",
    "data": aoData, 
    "async":false, //实现同步
    "success": function (resp) {
      fnCallback(resp); //服务器端返回的对象的returnObject部分是要求的格式  
    }
  });
  
}

    
   
