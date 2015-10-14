/**
 * Created by Administrator on 15-8-30.
 */
$(function(){
    
    $("body").on("click","a.pass-remove",function(){
        var ckid=  $(this).parent().parent().attr("id");
        $(".passenger").each(function(index,value){
            if($(value).attr("idno")==ckid)
            {
                $(value).removeClass("selected");
                $(value).children(".glyphicon-ok").hide();
            }
        })
        $(this).parent().parent().remove();
        var snum=parseInt($("#snum").text());
        $("#snum").text(snum + 1);
        reflashDivNum();
    })
})

$(function(){

$.ajax({
data:{
uid:$("#uid").attr("value")
},
dataType:'json',
error:function(data,textStatus){

},
success:function(data,textStatus){
$.each(data, function(i, value){
$("#mingpian").append("<div  class=\"col-md-2 col-xs-6 passenger\" idno=\""+value[0]+"\" phone=\""+value[1]+"\">"+
"                <p style=\"float:left\">"+value[2]+"</p>"+
"                <div style=\"display:none; float:right;\" class=\"glyphicon glyphicon-ok\"></div>"+
"                <br><p style=\"float:left\">"+value[3]+"</p>"+
"            </div>");
});

 $(".passenger").click(function(){
        var ckid=$(this).attr("idno");
        var p=$(this).attr("phone");
        var n=$(this).children("p").eq(0).text();
        var idcard=$(this).children("p").eq(1).text();
        if($(this).children(".glyphicon-ok").is(":hidden"))
        {
            var fpn= $(".passenger-msg").eq(0).children("div").eq(2).children("div").eq(0).children("input");
            $(this).addClass("selected");
            $(this).children(".glyphicon-ok").show();
            if(fpn.attr("value")=="")
            {
                $(".passenger-msg").eq(0).attr("id",ckid);
                var nput=getPsNInput(ckid);
                var pput=getPsPonInput(ckid);
                var idcput=getPsIDCIput(ckid);
                nput.attr("value",n);
                pput.attr("value",p);
                idcput.attr("value",idcard);
                $(".ckid").attr("value",ckid);
            }
            else{
                creatPsaaMsgDiv(ckid,n,p,idcard);
            }
            if($(".passenger-msg").length!=1)
            {
             var snum=$("#snum").text();
            $("#snum").text(snum-1);
            }
           
        }
        else{
            getPsNInput(ckid).attr("value","");
            getPsPonInput(ckid).attr("value","");
            getPsIDCIput(ckid).attr("value","");
            $(this).removeClass("selected");
            $(this).children(".glyphicon-ok").hide();
            var ckid=  $(this).attr("idno");
            if($(".passenger-msg").length>1)
            {
             var snum=parseInt($("#snum").text());
            $("#snum").text(snum+1);
            }
            removePssMsgDiv(ckid);
            if($(".passenger-msg").length>1)
            {
             var snum=parseInt($("#snum").text());
            $("#snum").text(snum+1);
            }
        }
    })
},
type:'post',
url:'ajaxorder!findmypass.action'
})
})



$(function(){
    $("#addpassenger").on("click",function(){
        var snum=$("#snum").text();
       if(snum>0)
       {
        creatBlankMsgDiv();
        $("#snum").text(snum-1);
        }
        return false;
    })
})


function getPsNInput(ckid){
    var pname;
    $(".passenger-msg").each(function(index,value){
        if($(this).attr("id")==ckid)
        {
            var d=$(this);
            pname= d.children("div").eq(2).children("div").eq(0).children("input");
            if(pname.attr("value")=="")
            {
                return false;
            }
        }
    })
    return pname;
}

function getPsPonInput(ckid){
    var pphone;
    $(".passenger-msg").each(function(index,value){
        if($(this).attr("id")==ckid)
        {
            var d=$(this);
            pphone= d.children("div").eq(2).children("div").eq(1).children("input");
            if(pphone.attr("value")=="")
            {
                return false;
            }
        }
    })
    return pphone;
}

function getPsIDCIput(ckid){
    var pidcard;
    $(".passenger-msg").each(function(index,value){
        if($(this).attr("id")==ckid)
        {
            var d=$(this);
            pidcard= d.children("div").eq(3).children("div").eq(1).children("input");
            if(pidcard.attr("value")=="")
            {
                return false;
            }
        }
    })
    return pidcard;
}
function removePssMsgDiv(ckid){
    var snum=$(".selected").length;
    var msgdivnum=$(".passenger-msg").length;
    if(snum<msgdivnum&&msgdivnum>1)
    {
        $(".passenger-msg").each(function(index,value){
            if($(value).attr("id")==ckid)
            {
                $(value).remove();
                reflashDivNum();
                return false;
            }
        })
    }
}

function reflashDivNum()
{
    var i=1;
    $(".passenger-msg").each(function(index,value){
    if(i==1)
    {
    $(value).children("div").eq(0).css("display","none");
    }
        $(value).children("div").eq(1).children("h2").eq(0).text(i);
        i++;
    })
}
function creatBlankMsgDiv(){
    var msgdivnum=$(".passenger-msg").length;
            $(".passenger-msg:last").after(" <div style=\"border:1px solid #F1F1F1;padding:30px;\" class=\"row passenger-msg\" id=\"\">"+
                    "<div class=\"form-group\">"+
                    "                    <a  class=\"glyphicon glyphicon-remove pass-remove\" style=\"float:right;color:red\"></a>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                    <h2 style=\"color:#96D2FF;float:left;margin-top:-25px;\">"+(msgdivnum+1)+"</h2>"+
                    "                    <div class=\"col-sm-offset-2 col-sm-2\">"+
                    "                        <div class=\"radio\">"+
                    "                            <label>"+
                    "                                <input name=\"passtype\" type=\"radio\" checked> 成人"+
                    "                            </label>"+
                    "                        </div>"+
                    "                    </div>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                       <label class=\"control-label col-md-2 \">乘机人姓名：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control passname\" name=\"pname\" value=\"\">"+
                    "                    </div>"+
                    "                    <label class=\"control-label col-md-2 \">手机号码：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control passphone\" name=\"pphone\" value=\"\">"+
                    "                    </div>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                    <label class=\"control-label col-md-2\">"+
                    "                        <span style=\"color:red\" class=\"glyphicon glyphicon-asterisk\"></span>"+
                    "                        证件类型：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control\" style=\"float:left;\" value=\"身份证\" readonly>"+
                    "                    </div>"+
                    "                    <label class=\"control-label col-md-2\">"+
                    "                        <span style=\"color:red\" class=\"glyphicon glyphicon-asterisk\"></span>"+
                    "                        证件号码：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control passidcard\" name=\"pidcard\" style=\"float:left;\" value=\"\">"+
                    "                    </div>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                    <div class=\"col-sm-offset-1 col-sm-10\">"+
                    "                        <div class=\"checkbox\">"+
                    "                            <label >"+
                    "                                <input  type=\"checkbox\"> 购买    航空综合险升级版 (含航班延误险及取消、行李延误丢失、证件丢失等)"+
                    "                                <span style=\"color:#F60\">￥ 20 /单航段/份</span>"+
                    "                                <a style=\"padding-left: 30px;\">产品详情</a>"+
                    "                                <a  style=\"padding-left: 20px;\">保险条款</a>"+
                    "                            </label>"+
                    "                        </div>"+
                    "                    </div>"+
                    "                </div>"+
                    "                <input class=\"form-control ckid\" type=\"hidden\" value=\"\" >"+
                    "                </div>");
}

$(function(){
    $.ajax({
    url:'ajaxorder!seatnum.action',
    data:{
    "entity.id":$("input[name='entity.id']").attr("value"),
    seattype:$("input[name='seattype']").attr("value")
    },
    type:'post',
    success:function(data,textStatus){
    $("#snum").text(data-1);
    },
    error:function(){}
    })
})
function creatPsaaMsgDiv(ckid,n,p,idcard){
     var snum=$(".selected").length;
            var msgdivnum=$(".passenger-msg").length;
            if(snum>=msgdivnum)
            {
            $(".passenger-msg:last").after(" <div style=\"border:1px solid #F1F1F1;padding:30px;\" class=\"row passenger-msg\" id=\""+ckid+"\">"+
                    "<div class=\"form-group\">"+
                    "                    <a  class=\"glyphicon glyphicon-remove pass-remove\" style=\"float:right;color:red\"></a>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                    <h2 style=\"color:#96D2FF;float:left;margin-top:-25px;\">"+(msgdivnum+1)+"</h2>"+
                    "                    <div class=\"col-sm-offset-2 col-sm-2\">"+
                    "                        <div class=\"radio\">"+
                    "                            <label>"+
                    "                                <input type=\"radio\" checked> 成人"+
                    "                            </label>"+
                    "                        </div>"+
                    "                    </div>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                       <label class=\"control-label col-md-2\">乘机人姓名：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control passname\" name=\"pname\" value=\""+n+"\">"+
                    "                    </div>"+
                    "                    <label class=\"control-label col-md-2\">手机号码：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control passphone\" name=\"pphone\" value=\""+p+"\">"+
                    "                    </div>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                    <label class=\"control-label col-md-2\">"+
                    "                        <span style=\"color:red\" class=\"glyphicon glyphicon-asterisk\"></span>"+
                    "                        证件类型：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control\" style=\"float:left;\" value=\"身份证\" readonly>"+
                    "                    </div>"+
                    "                    <label class=\"control-label col-md-2\">"+
                    "                        <span style=\"color:red\" class=\"glyphicon glyphicon-asterisk\"></span>"+
                    "                        证件号码：</label>"+
                    "                    <div class=\"col-md-4\">"+
                    "                        <input class=\"form-control passidcard\" name=\"pidcard\" style=\"float:left;\" value=\""+idcard+"\">"+
                    "                    </div>"+
                    "                </div>"+
                    "                <div class=\"form-group\">"+
                    "                    <div class=\"col-sm-offset-1 col-sm-10\">"+
                    "                        <div class=\"checkbox\">"+
                    "                            <label >"+
                    "                                <input  type=\"checkbox\"> 购买    航空综合险升级版 (含航班延误险及取消、行李延误丢失、证件丢失等)"+
                    "                                <span style=\"color:#F60\">￥ 20 /单航段/份</span>"+
                    "                                <a style=\"padding-left: 30px;\">产品详情</a>"+
                    "                                <a  style=\"padding-left: 20px;\">保险条款</a>"+
                    "                            </label>"+
                    "                        </div>"+
                    "                    </div>"+
                    "                </div>"+
                    "                <input class=\"form-control ckid\" type=\"hidden\" value=\""+ckid+"\" >"+
                    "                </div>");
    }    
}
$(function(){

$("#myform").submit(function(){
var f=1;
  $("input[name='pname']").each(function(index ,value){
  $(this).next("label").remove();
     if($(value).val()=='')
     {    
     $(this).after("<label>必填</label>")
     f=0;
     }
  })
  
  $("input[name='pphone']").each(function(index ,value){
  $(this).next("label").remove();
     if($(value).val()=='')
     {    
     $(this).after("<label>必填</label>")
     f=0;
     }
  })
  
  $("input[name='pidcard']").each(function(index ,value){
  $(this).next("label").remove();
     if($(value).val()=='')
     {    
     $(this).after("<label>必填</label>")
     f=0;
     }
  })
  if(f==0)
  return false;
  else
  {
  return true;
  }
})
})







