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

		<title>My JSP 'chapiao3.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script src="<%=basePath%>/behind/flight/js/js.js"></script>

	</head>

	<body>
	
	<form action="line1!zf.action">
	<!--	下一个页面计算票价需要用到这两个参数	-->
	<input type="hidden" value="${radio1}" name="radio1"/>
    
    <!--           联合查询输出	-->
    <s:iterator value="hblist" var="u">
    
    id：<input type="text" value="<s:property value="#u[7]" />"id="a1" disabled="disabled"><br>				
          身份证号 <input type="text"  name="ticket.idcard">	<br>
           性 别         <input type="text"  name="ticket.sex">	<br>
          航班号      <input type="text" value="<s:property value="#u[1]" />"  id="a1" disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[1]" />"name="ticket.lname" >
           起飞机场 <input type="text"	value="<s:property value="#u[2]" />" id="a1" disabled="disabled"><br>
		    <input type="hidden" value="<s:property value="#u[2]" />"name="ticket.startplace" >
          到达机场  <input type="text"	value="<s:property value="#u[3]" />"  id="a1"disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[3]" />"name="ticket.endplace" >
          起飞时刻  <input type="text"	value="<s:property value="#u[5]" />" id="a1" disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[5]" />" name="ticket.starttime" >
          到达时刻   <input type="text"	value="<s:property value="#u[6]" />" id="a1" disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[6]" />"name="ticket.endtime" >
          起飞时间  <input type="text"	value="<s:property value="#u[4]" />"  id="a1"disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[4]" />"name="ticket.startdate" >
          航空公司   <input type="text"	value="<s:property value="#u[0]" />"  id="a1"disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[0]" />"name="ticket.apname" >
	原价： 	<input type="text" value="<s:property value="#u[9]" />" disabled="disabled"><br>
			<input type="hidden" value="<s:property value="#u[9]" />" name="price">
			</s:iterator>
	座位类型	<input type="text" value="${radio1}" disabled="disabled"><br>
			<input type="hidden" value="${radio1}" name="ticket.seattype">
	<s:iterator value="hblist1" var="v">
	 <td><input type="radio" value="<s:property value="#v[0]" />"  id="a0011" name="radio2" /><s:property value="#v[0]" /></td>
     <td><input type="radio" value="<s:property value="#v[1]" />"  id="a0021" name="radio2" /><s:property value="#v[1]" /></td>    
	 <td><input type="radio" value="<s:property value="#v[2]" />"  id="a0031" name="radio2" /><s:property value="#v[2]" /></td>
	 <td><input type="radio" value="<s:property value="#v[3]" />" id="a0041"	name="radio2" /><s:property value="#v[3]" /></td>
	 <td><input type="radio" value="<s:property value="#v[4]" />"  id="a0051" name="radio2" /><s:property value="#v[4]" /></td>
	 <td><input type="radio" value="<s:property value="#v[5]" />" id="a0061"	name="radio2" /><s:property value="#v[5]" /></td>
	</s:iterator>
	<input type="submit" value="支付">
	</form>
	
	</body>
</html>
