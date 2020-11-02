<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.jsp.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%
	MemberVO member = new MemberVO("mimi","mimi","mimi","010-1234-1234","mimi@mimi.com");
	pageContext.setAttribute("member", member);
	Map<String,MemberVO> memberMap = new HashMap<String, MemberVO>();
	memberMap.put("member",member);
	session.setAttribute("memberMap", memberMap);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<ul>
		<li>아이디 : <%out.print(((MemberVO)pageContext.getAttribute("member")).getId()); %></li>
		<li>아이디 : ${member.id.toUpperCase() }</li>
		<li>아이디 : ${memberMap.member.id.substring(1,4) }</li>
		
		<li>패스워드 : ${member.id }</li>
		<li>이름 : ${member.id }</li>
	</ul>
</body>
</html>