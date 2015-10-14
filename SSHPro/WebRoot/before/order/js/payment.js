 $(function(){
     $(".paytype").on("mouseover",function(){
      $(this).addClass("selected");
     })
     $(".paytype").on("mouseout",function(){
     if($(this).children("div").is(":hidden"))
       $(this).removeClass("selected");
     })
    $(function(){
       $.ajax({
     url:'ajaxorder!sysj.action',
     data:{
     ordernum:$("input[name='ordernum']").attr("value")
     },
     success:function(data,textStatus){
     $("#remaintime").text("剩余时间："+parseInt(data/60)+"分钟"+data%60+"秒");
     window.setInterval(function(){
     if(data>0)
     {
     $("#remaintime").text("剩余时间："+parseInt(data/60)+"分钟"+data%60+"秒");
     data--;
     }
     },1000)
     },
     error:function(){},
     type:'post'
     })
    }) 
     
     $(".paytype").click(function(){
     var okdiv=$(this).children("div").eq(0);   
     var img    =$(this).children("img").eq(0) 
        if(okdiv.is(":hidden"))
        {   
        $(".paytype").children("div").hide();    
        $(".paytype").removeClass("selected");
        okdiv.show();
        $(this).addClass("selected");
         var url= img.attr("src");
         $("#selecttype").children("img").eq(0).attr("src",url);
         var hpoint = $("#selecttype").offset().top;
       //  $(document).scrollTop(hpoint);
        }
        else{
         okdiv.hide();
        $(this).removeClass("select")
       
        
        }
     })
     })
    