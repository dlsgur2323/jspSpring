<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<% request.setCharacterEncoding("utf-8"); %>
	</head>
	<body>
		<h1>회원가입 완료!</h1>
		아이디 : <%=request.getParameter("id") %><br>
		패스워드 : <%=request.getParameter("pwd") %><br> 
		이름 : <%=request.getParameter("name") %><br>
		이메일 : <%=request.getParameter("email") %><br>
		전화번호 : <%=request.getParameter("phone") %>
	</body>
</html>