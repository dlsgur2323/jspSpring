<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="today" value="<%=new Date() %>"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<h1>server request time : <fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm:ss"/></h1>
		<h1 id="time"></h1>
	</body>
	<script>
		var today = new Date(${today.time});
		var time = setInterval(function(){
			today.setTime(today.getTime()+1000)	
			var todayStr = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate()
							+ " " + today.getHours()+":"+today.getMinutes()+":"+today.getSeconds();
			document.getElementById("time").innerHTML=todayStr;
		}, 1000)
		
		var currentTime = setInterval(function(){
			var currentTime = new Date();
			var currentTimeStr = currentTime.getFullYear()+"-"+(currentTime.getMonth()+1)+"-"+currentTime.getDate()
		  						 +" "+currentTime.getHours()+":"+currentTime.getMinutes()+":"+currentTime.getSeconds();
			document.getElementById("currentTime").innerHTML="local time :" +currentTimeStr;
		},1000)
	</script>
</html>