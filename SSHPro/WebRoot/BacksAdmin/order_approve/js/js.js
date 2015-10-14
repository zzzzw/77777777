//文档加载完毕执行
$(function() {

	// 在js中获取web路径
	var location = (window.location + '').split('/');
	var basePath = location[0] + '//' + location[2] + '/' + location[3] + '/';

	
	
	
	//alert(1);
	// 加载审核信息
	jzxw();
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
//加载审核信息
function jzxw(){	
	$.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'order1!show1.action',
		data : null,
		success : function(response, status, xhr) {
		    var s = "";		    
		    s +='<thead><tr><td  width="7%"><input type="checkbox" id="select" /><label><b>全选</b></label> </td><td><center><b>订单号</b></center></td><td ><center><b>申请退款的时间</b></center></td><td ><center><b>退款金额</b></center></td><td ><b><center>状态</b></center></td><td ><center><b>操作</b></center></td></tr></thead>';
			s +='<tbody>';				    
			$.each(response,function(index, value) {
								// 组合
								s+='<tr><td><input type="checkbox" name="ckb" value="'+value[0]+'">'
								s += '</td><td><center>' + value[1];
								s += '</center></td><td><center>' + value[2]
										+ '</center></td><td><center>' + value[3]
										+ '</center></td><td><center>' + value[4]
										+'</center></td><td><center>'									
								s += '<a class="btn btn-info" onclick="scxw('+value[0]+')">通过审核</a>';
								s += '</center></td></tr>';
							})
		     s +='</tbody>';
			$("#table_id").html(s);			
			$("#table_id").dataTable({  
			"bDestroy":true, 
			  
  "oLanguage": {
                    "sProcessing": "正在加载中......",
                    "sLengthMenu": "每页显示 _MENU_ 条记录",
                    "sZeroRecords": "对不起，查询不到相关数据！",
                    "sEmptyTable": "表中无数据存在！",
                    "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                    "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
                    "sSearch": "搜索",
                    "oPaginate": {
                        "sFirst": "首页",
                        "sPrevious": "上一页",
                        "sNext": "下一页",
                        "sLast": "末页"
                    }
                } //多语言配置
                
                
			});
			
			ckb(); 
		},
		error : function() {
			alert("加载失败");
		}

	})

}
//审核新闻
function scxw(id){	
	$.ajax( {
		type : 'POST',
		dataType : 'json', // json对象
		url : 'order1!shenhe.action',   //审核
		data : {
		 'id':id
	     },
		success : function(response, status, xhr) {	
	    	 alert(response);
	    	//考虑用提示框
	    	alert("通过审核！");
	    	jzxw();
		},
		error : function() {
			alert("加载失败");
		}

	})
}


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