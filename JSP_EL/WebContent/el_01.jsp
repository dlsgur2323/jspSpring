<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String message = "Good day!";

// 	pageContext.setAttribute("message", "배고파요~~");
// 	request.setAttribute("message", "다머거~~~");
// 	session.setAttribute("message", "머먹지");
	application.setAttribute("message", "배불르ㅓ어");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<ul>
		<li>스트립틀릿 : <% out.print(message); %></li>
		<li>표현식 : <%=message %></li>
		<li>EL : ${message }</li>
	</ul>
</body>
</html>