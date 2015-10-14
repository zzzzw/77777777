$(function(){

 $('#changeimg').click(function(){
 
 changeImg();
 })








})

function changeImg(){ 
    var Rand = Math.random();    
    var imgSrc = $("#imgObj");     
    var src = imgSrc.attr("src");   
    url="verifycode.jsp?abc="+Rand ; 
    imgSrc.attr("src",url);     
  
}  