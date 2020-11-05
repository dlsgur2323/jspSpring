<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${param.title }</title>
		<style>
			div#google,div#naver{
				width:800px;
				height :300px;
				margin-bottom:10px;
				border:1px solid black;
				overflow:hidden;
			}
		</style>
	</head>
	<body>

		<h1>Header</h1>
		<p>${param.message }</p>
		<hr/>