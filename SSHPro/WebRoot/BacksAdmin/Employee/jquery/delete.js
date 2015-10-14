$(document).ready(function(){
		      var checkedList = new Array();//用于存储打钩了的ID的号码
		      var text="";
		      
		      
		      
//////////////第一次操作////////////////点击进行批量删除/////////////缺点：只能删除本页面数据，下一页的删除不了。////////////////////////////////////////////////////////////////////////		      
		      
	     //     $("#piliang").click(function(){
	     //     var num=0;
		//	          $("input[name='checking']:checked").each(function() {
		//	       text+=$(this).val()+(",");
		//	     num++;
		//      });
      			
		//      $("#fasong").val(text);
		//      var value=$("#fasong").val();
		//      if(num==0){ 
		//      $("#fasong").val("0");//alert("ss");
	//	      }
 	//		 });
  
  

  //////////////第二次操作/////////////////打钩选择////////////缺点：每一次的打钩或取消打钩，都会加入字符串中，没有起到取消打钩的作用。/////////////////////////////////////////////////////////////////////
	//		      $("input[name='checking']").click(function(){
	//		      text=$(this).val()+(",");
	//		      //获取id=fasong的数值
	//		  		var value=$("#fasong").val();
	//		  		text=text+value;
	//		  		$("#fasong").val(text);
	//		  		alert(text);
	//		      });
  
  			
  			
  ///////////////////第三次操作////////////////////////////////实现打钩和取消打钩，添加和取消ID号。//////////////////////////////////////////////////////////////////////////////////////////////////////////	
  
  				 $("input[name='checking']").click(function(){					//没点击一次就执行一次，不管是打钩还是取消打钩
  				   text=$(this).val();                                                 		 //不管怎样，都先获取当前这个checkbox的值
			  		var value=$("#fasong").val();                                     //获取id=fasong的数
			  		checkedList=value.split(",");
				    if(this.checked){                        				 //查状态	  
				        checkedList.push(text);             	//如果打钩的就存id号
////alert("要存入的text的值是："+text);
				        $("#fasong").val(checkedList);   //存入fasong中
		         }else{   
			                  var number=0;					   //获取打钩的checkedbox(ID)的个数
			            $.each(checkedList,function(i,val){						   //遍历来获取ID个数，用number记录ID的个数。
			           		number++;
			            }); 

			             $.each(checkedList,function(i,val) {                //如果是取消打钩状态就从数组中删除添加进去的id号           //重新排版
			      		      if( checkedList[i]==text){
			    		        var index= i;
						         $.each(checkedList,function(j,value) {
						              checkedList[j]= checkedList[j];
						             if(j==index){
////alert("要取消的ID号是："+checkedList[j]);						             
						         //   	 checkedList[j]= checkedList[j+1];
						         checkedList.splice(index,1);                     //删除下标为index以后的一个checkedList的值
						           }			//else-each-if-each-if                       √		   
			            	 });		//else-each-if-each                   √    
			            }			//else-each-if
			             }); 		//else-each
			             $("#fasong").val(checkedList);					     //重新排版好后赋值给fasong
				        } 			 //else 
            var fasong=$("#fasong").val();
		});  		//input[name='checking']


		
		
  
 	 });			//ready