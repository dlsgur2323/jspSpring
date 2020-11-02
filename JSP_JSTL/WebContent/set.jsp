<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="message" value="안녕하세요." scope="page" /> <!-- pageContext -->
<c:set var="message" value="반갑습니다." scope="request" /> <!-- request -->
<c:set var="message" value="행복하세요." scope="session" /> <!--  session -->
<c:set var="message" value="돈많이버세요." scope="application" /> <!-- application -->


<c:remove var="message" scope="page"/>

<h1>${message }</h1>

