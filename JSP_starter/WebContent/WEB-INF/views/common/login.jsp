<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<style>
			form {
				width : 251px;
				margin : auto;
			}
			h1 {
				text-align : center;
			}
			#div_btn {
				text-align : right;
			}
			#div_btn span{
				font-size: 0.9em;
				vertical-align: -7px;
			}
			input[value="로그인"]{
				margin-top : 5px;
				margin-right : 3px;
			}
			input[value="회원가입"]{
				margin-top : 10px;
			}
			
		</style>
	</head>
	<body>
		
		<h1>로그인</h1>
		<form name="frm" action="login" method="post">
			<div class="form-group">
				<label for="id">아이디:</label>
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<div class="form-group">
				<label for="pwd">패스워드:</label>
				<input type="password" class="form-control" id="pwd" name="pwd">
			</div>
			<div id="div_btn">
				<input type="button" class="btn btn-default" value="로그인"><br>
				<span>아직 아이디가 없으신가요?</span> <input type="button" class="btn btn-default" value="회원가입">
			</div>
		</form>
	</body>
	<script>
		document.querySelector("form[action='login'] input[value='로그인']").onclick=function(event){
			document.frm.submit();
		}
		document.querySelector("form[action='login'] input[value='회원가입']").onclick=function(event){
			location.href="<%=request.getContextPath()%>/common/regist";
		}
		
		<c:if test="${!empty message }">
		alert("${message }")
		</c:if>
		
	</script>
</html>





