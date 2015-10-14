/**
 * Created by Administrator on 15-9-11.
 */

var Myvalidator=function(){
    var handleSubmit=function(){
        $("#saveForm").validate({
            errorElement : 'span',
            errorClass : 'help-block',
            focusInvalid : false,
            rules:{
                'plane.planetype':{
                    required:true
                },
                'plane.status':{
                    required:true
                },
                "plane.tdcnum":{
                required:true,
                number:true
                },
                "plane.tdcprice":{
                required:true,
                number:true
                },
                "plane.swcnum":{
                required:true,
                number:true
                },
                "plane.swcprice":{
                required:true,
                number:true
                },
                "plane.jjcnum":{
                required:true,
                number:true
                },
                "plane.jjcprice":{
                required:true,
                number:true
                },
                "plane.thcnum":{
                required:true,
                number:true
                },
                "plane.thcprice":{
                required:true,
                number:true
                },
                "plane.imgurl":{required:true},
            },
            messages:{
                'plane.planetype':{
                    required:'不能为空'
                },
                "plane.status":
                {
                    required:'不能为空'
                },
                "plane.tdcnum":{required:'不能为空',number:'请输入数字'},
                "plane.tdcprice":{required:'不能为空',number:'请输入数字'},
                "plane.swcnum":{required:'不能为空',number:'请输入数字'},
                "plane.swcprice":{required:'不能为空',number:'请输入数字'},
                "plane.jjcnum":{required:'不能为空',number:'请输入数字'},
                "plane.jjcprice":{required:'不能为空',number:'请输入数字'},
                "plane.thcnum":{required:'不能为空',number:'请输入数字'},
                "plane.thcprice":{required:'不能为空',number:'请输入数字'},
                "plane.imgurl":{required:'不能为空'}
            },
            highlight : function(element) {
                $(element).closest('div').addClass('has-error');
            },
             success : function(label) {
                label.closest('div').removeClass('has-error');
                label.remove();
            },
             errorPlacement : function(error, element) {
                element.parent('div').append(error);
            },
             submitHandler : function(form) {
               // form.submit();
               return false
            }
        });
        
        $('.form-horizontal input').keypress(function(e) {
            if (e.which == 13) {
                if ($('.form-horizontal').validate().form()) {
                    $('.form-horizontal').submit();
                }
                return false;
            }
        });
    }
    return {
        init : function() {
            handleSubmit();
        }
    };
}();