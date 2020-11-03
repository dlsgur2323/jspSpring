<%@page import="com.jsp.dto.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
		
		<style>
			#section {
				background : white;
				width : 1000px;
				margin : auto;
				clear : both;
			}
			#section h1{
				margin-top : 50px;
				text-align: center;
				margin-bottom : 40px;
			}
			table{
				width: 800px;
				margin: auto;
				border-collapse: collapse;
			}
			th{
				background : black;
				color : white;
				font-size : 1.3em;
				text-align: left;
				height : 60px;
				padding-left : 40px;
				font-weight : normal;
			}
			td{
				height : 60px;
				padding-left : 40px;
				font-size : 1.3em;
				border-bottom : 1px solid grey;
			}
			tr:hover {
				background : #dbdbdb;
			}
		</style>
	<%@include file ="../common/header.jsp" %>
		
			<div id="section">
				<h1>회원 정보 목록</h1>
				<table>
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>이메일</th>
						</tr>
					</thead>
					<c:forEach var="member" items="${memberList }">
						<tr style="cursor:pointer;" onclick="location.href='detail?id=${member.id }'">
							<td>${member.id }</td>
							<td>${member.name }</td>
							<td>${member.email }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
	<%@include file ="../common/footer.jsp" %>
</html>