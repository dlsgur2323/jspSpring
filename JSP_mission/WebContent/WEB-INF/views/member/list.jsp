<%@page import="com.jsp.dto.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
		
		<style>
			#section h2{
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
				font-size : 1.1em;
				text-align: left;
				height : 40px;
				padding-left : 40px;
				font-weight : normal;
			}
			td{
				height : 40px;
				padding-left : 40px;
				font-size : 1.1em;
				border-bottom : 1px solid grey;
			}
			tr:hover {
				background : #dbdbdb;
			}
		</style>
	<%@include file ="../common/header.jsp" %>
		
			<div id="section">
				<h2>회원 정보 목록</h2>
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