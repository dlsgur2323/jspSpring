<%@page import="com.jsp.dto.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<style>
			body {
				background : #dbdbdb
			}
			h1{
				margin-top : 50px;
				text-align: center;
				margin-bottom : 40px;
			}
			div {
				background : white;
			}
			.box{
				padding : 0px;
				width: 900px;
				margin : auto;
			}
			.table{
				width: 900px;
			}
		</style>
	</head>
	<body>
		<h1>회원 정보 목록</h1>
		<div class="box">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>아이디</th>
						<th>패스워드</th>
						<th>이름</th>
						<th>이메일</th>
						<th>전화번호</th>
					</tr>
				</thead>
				<c:forEach var="member" items="${memberList }">
					<tr>
						<td>
							<a href="detail?id=${member.id }">${member.id }</a>
						</td>
						<td>${member.pwd }</td>
						<td>${member.name }</td>
						<td>${member.email }</td>
						<td>${member.phone }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>
</html>