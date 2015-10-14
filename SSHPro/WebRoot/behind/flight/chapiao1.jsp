<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chaopiao1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
		-->
		<!--js框架--引入jquery，因为bootstrap使用了jquery，所以要在它前面引入-->
		<script src="<%=basePath%>/resource/jquery/jquery-1.11.3.min.js"></script>
		<!--css框架--引入bootstrap-->
		<script src="<%=basePath%>/resource/bootstrap/js/bootstrap.min.js"></script>
		<link href="<%=basePath%>/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入自己的js/css -->	
		<script src="<%=basePath%>/behind/flight/js/js.js"></script>
  </head>
  <body >
		<div class="container">
			<h1 class="text-center    bg-success""  >
				符合查询条件的所有车次
			</h1>
			<h3 class="text-right">
				<a href="behind/flight/chapiao.jsp" class="btn  bg-success">重新查询</a>
			</h3>
			<h3>
				你当前选择的始发站是：
				<strong class="text-danger">${sfz}</strong> ,到达站是：
				<strong class="text-danger">${ddz}</strong>
			</h3>
			<form action="line1!yd.action"><div align="center"> 
			 
			</div><table class="table table-striped table-bordered table-condensed text-center">
			<tr>
		    <td align="center"><br></td> 
		    <td><br></td>
		    <td>头等舱</td>
		    <td>商务舱</td>
		    <td>经济舱</td>
		    <td>特惠舱</td>
		    </tr>  		
		    	
			    <s:iterator value="hblist" var="u">
		        <tr>
		        <td>
		        <s:property value="#u[1]" /><br>    
		        <input type="hidden" value="<s:property value="#u[15]"/>" name="entity.id"/>
		        <!--		                    下一个页面需要的用到的		        -->
		        <input type="hidden" value="<s:property value="#u[1]" />" name="hangban"/>
		        <!--		                     前台验证的时候需要用到的代码a		        -->
		        <input type="hidden" value="<s:property value="#u[7]" />" id="a001"/>
		        <input type="hidden" value="<s:property value="#u[9]" />" id="a002"/>
		        <input type="hidden" value="<s:property value="#u[11]" />" id="a003"/>
		        <input type="hidden" value="<s:property value="#u[13]" />" id="a004"/>
		        <!--		                     前台验证的时候需要用到的代码b		        -->
		         <input type="hidden" value="<s:property value="#u[17]" />" id="b001"/>
		        <input type="hidden" value="<s:property value="#u[18]" />" id="b002"/>
		        <input type="hidden" value="<s:property value="#u[19]" />" id="b003"/>
		        <input type="hidden" value="<s:property value="#u[20]" />" id="b004"/>
		        <!--		                     座位数量被订走了加1的操作需要用到的下面的东西		        -->
		        <input type="hidden" value="<s:property value="#u[1]" />" name="seatnum.lname"/>
		        <input type="hidden" value="<s:property value="#u[7]" />" name="seatnum.tdcnum"/>
		        <input type="hidden" value="<s:property value="#u[9]" />" name="seatnum.swcnum"/>
		        <input type="hidden" value="<s:property value="#u[11]" />" name="seatnum.jjcnum"/>
		        <input type="hidden" value="<s:property value="#u[13]" />" name="seatnum.thcnum"/>
		        <input type="hidden" value="<s:property value="#u[21]" />" name="seatnum.id"/>
		        <input type="hidden" value="<s:property value="#u[22]" />" name="seatnum.planedate"/>
		        </td>
		        <td> 
		        <s:property value="#u[2]" />----
		        <s:property value="#u[4]" /><br>
		        <s:property value="#u[3]" />  
		        <s:property value="#u[5]" />
		        </td>
		        <td><input type="radio" value="头等舱"  id="a0011" name="radio1" /><s:property value="#u[6]" /></td>
		        <td><input type="radio" value="商务舱"  id="a0021" name="radio1" /><s:property value="#u[8]" /></td>    
		        <td><input type="radio" value="经济舱"  id="a0031" name="radio1" /><s:property value="#u[10]" /></td>
		        <td><input type="radio" value="特惠舱" id="a0041"	name="radio1" /><s:property value="#u[12]" /></td>
		        <td>		  
				<input type="submit" value="预定" id="yuding">	
               
		        </td>
		        </tr>
		        </s:iterator>    
		      	</table>
			 <s:if test="hblist.size()==0">无您所查找的航班，请重新查找!!!!</s:if>
	</form>
 </div>		
</body> 
</html>
