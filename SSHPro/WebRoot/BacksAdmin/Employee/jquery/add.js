
/////////////////////////////Add/////////////////////////////////////////////////////////
$(document).ready(function(){
						$(".add").click(function(){		
							 var     text1='  <tr><td> <input type="text" name="entity.account"  class="account form-control td required" id="account" placeholder="请输入员工账号" required/>';
							 var     text2='  </td><td><input type="password" name="entity.psw"  class="psw  form-control td required" id="psw"   placeholder="请输入员工密码" required/>';
							 var 	text3='  </td><td><select name="entity.type" class="type form-control">';
							var  	text4=' <option>高级管理员</option>';
							var  	text5=' <option selected>普通管理员</option>';
							var  	text6='  </select ></td><td>';
							var  	text7='<input type="text" name="entity.name"  class="name form-control td required" id="name" placeholder="请输入员工姓名" required/>';
							var  	text8=' </td><td><input type="file" name="entity.image"  class="psw form-control td required" id="image" placeholder="请选取员工图片" required/>';
							var  	text9=' </td><td><input type="checkbox" name="checking "  /></td></tr>';
						    var  text10=text1+text2+text3+text4+text5+text6+text7+text8+text9;
						  $("table tbody").append(text10);	
	    			 });
	    			 
	    			   $("#delete").click(function(){
	                    $("input[type='checkbox']:checked").each(function() {
	    			$(this).parent().parent().remove();
	    			 });
	    			 });			 
				});