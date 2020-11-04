<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="dan" begin="2" end="9" step="1" varStatus="status">
	<p>${dan }입니다. 반복횟수 : ${status.count }, index : ${status.index }</p>
</c:forEach>

<c:set var="arrInt" value="0,1,2,3,4,5,6,7,8,9"/>
<c:forEach items="${arrInt }" var="num" varStatus="status">
	<p>${num }, 반복횟수 : ${status.count }, index : ${status.index }
</c:forEach>

<%
	List<String>strList= new ArrayList<>();
	strList.add("aaa");
	strList.add("bbb");
	strList.add("ccc");
%>

<c:forEach var="str" items="<%=strList %>">
	<p>${str }</p>
</c:forEach>

<c:set var="strList" value="<%=strList %>"/>
<c:forEach var="str" items="${strList }">
	<p>${str }</p>
</c:forEach>