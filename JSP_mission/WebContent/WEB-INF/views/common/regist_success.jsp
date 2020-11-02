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
		<table>
			<tr>
				<td>아이디</td>
				<td>:</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>:</td>
				<td>${pwd}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>:</td>
				<td>${name}</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>:</td>
				<td>${email}</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>:</td>
				<td>${phone}</td>
			</tr>
		</table>
	</body>
</html>