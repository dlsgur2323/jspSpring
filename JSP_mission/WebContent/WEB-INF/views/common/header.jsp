<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>WebBoard</title>
		<script>
			
		</script>
		<style>
			html {
				height : 100%;
			}
			body {
				height : 100%;
				margin : 0px;
				background : #dbdbdb;
			}
			#header {
				background : white;
				width : 1000px;
				margin : auto;
				border-bottom : 2px solid black;
				height : 120px;
			}
			#header h1, #menu{
				float : left;
			}
			#header h1{
				margin-top : 40px;
				font-size : 4em;
			}
			#menu{
				width : 700px;
				text-align : right;
			}
			#header #menu ul {
				margin-top : 0px;
				list-style-type: none;
				font-size : 1.5em;
				height : 40px;
			}
			#header #menu ul li{
				display : inline;		
				padding : 10px;		
			}
			#user {
				line-height : 6;
				height : 80px;
				padding-right : 10px;
			}
			#user span{
				vertical-align : sub;
				font-size : 1.1em;
			}
			#page {
				background : white;
				width : 1100px;
				margin : auto;
				min-height : 90%;
			}
			#logout_btn {
				background : #dbdbdb;
				color : black;
				border : none;
				margin-left : 5px;
				padding : 4px;
				height : 24px;
				width : 56px;
			}
			#logout_btn:hover {
				background : black;
				color : white;
			}
			a{
				color : black;
				text-decoration: none;
			}
			a:visited {
				color : black;
			}
			
		</style>
	</head>
	<body>
		<div id="page">
			<div id="header">
				<a href="<%=request.getContextPath()%>/common/main"><h1>WebBoard</h1></a>
				<div id="menu">
					<div id="user">
						<span>${loginUser.name }님 환영합니다.</span>
						<button type="button" id="logout_btn" onclick="logout_go();">로그아웃</button>
					</div>
					<ul>
						<li><a href="<%=request.getContextPath()%>/member/list">회원 정보</a></li>
						<li>헤더 메뉴 2</li>
						<li>헤더 메뉴 3</li>
					</ul>
				</div>
			</div>
	<script>
		if(${empty loginUser}){
			alert("로그인 하세요.")
			location.href="<%=request.getContextPath()%>/common/login"
		}
		function logout_go(){
			if(confirm("로그아웃 합니다.")){
				location.href="<%=request.getContextPath()%>/common/logout";
			}
		}
	</script>
</html>