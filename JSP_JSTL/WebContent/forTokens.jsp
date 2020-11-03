<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<c:set var="str" value="a,b,c,d,e"/>
		<ul>
			<c:forTokens var="ch" items="${str }" delims=",">
				<li>${ch }</li>
			</c:forTokens>
		</ul>
	</body>
</html>