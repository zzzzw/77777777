 //实现全选全不选功能
$(function () { 

    $("#all").click(function(){    
        if(this.checked){    
            $(".list :checkbox").prop("checked", true);   
        }else{    
            $(".list :checkbox").prop("checked", false); 
        }    
     });  

    $("#selectAll").click(function () { 
         $(".list :checkbox,#all").prop("checked", true);   
    });   

    $("#unSelect").click(function () {   
         $(".list :checkbox,#all").prop("checked", false);   
    });   
  
    $("#reverse").click(function () {  
         $(".list :checkbox").each(function () {   
              $(this).prop("checked", !$(this).prop("checked"));   
         }); 
         allchk(); 
    }); 
     

    $(".list :checkbox").click(function(){ 
        allchk(); 
    }); 
  

    $("#getValue").click(function(){ 
        var valArr = new Array; 
        $(".list :checkbox[checked]").each(function(i){ 
            valArr[i] = $(this).val(); 
        }); 
        var vals = valArr.join(','); 
          alert(vals); 
    }); 
    
    
});

function allchk(){ 
    var chknum = $(".list :checkbox").size();
    var chk = 0; 
    $(".list :checkbox").each(function () {   
        if($(this).prop("checked")==true){ 
            chk++; 
        } 
    }); 
    if(chknum==chk){
        $("#all").attr("checked",true); 
    }else{
        $("#all").prop("checked",false); 
    } 
} 


