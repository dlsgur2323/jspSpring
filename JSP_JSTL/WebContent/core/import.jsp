<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<c:import url="/core/include/header.jsp">
			<c:param name="message" value="안녕하세요~"></c:param>
			<c:param name="title" value="회원가입"></c:param>
		</c:import>
		<h1>Google.com</h1>
		<div id="google">
<%-- 			<c:import url="https://www.google.com"></c:import> --%>
		</div>
		
		<h1>naver.com</h1>
		<div id="naver">
<%-- 			<c:import url="https://www.naver.com"></c:import> --%>
		</div>
		
		<c:import url="/core/include/footer.jsp"></c:import>
