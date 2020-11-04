<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="number" value="123456789"/>
<c:set var="kor" value="95"/>
<c:set var="eng" value="80"/>
<c:set var="math" value="75"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<p>금액 : <fmt:formatNumber value="${number }" pattern="#,###"/></p>
		<p>평균 : <fmt:formatNumber value="${(kor+eng+math)/3 }" pattern=".000"/>
	</body>
</html>