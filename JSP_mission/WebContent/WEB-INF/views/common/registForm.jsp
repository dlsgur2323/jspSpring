<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<style>
			body {
				background : #dbdbdb
			}
			div {
				background : white;
			}
			form {
				width : 251px;
				margin : auto;
			}
			h1 {
				margin : 0px;
				margin-bottom : 20px;
				padding-top : 20px;
				padding-bottom : 20px;
				text-align : center;
				background : black;
				color : white;
				font-weight: bold;
			}
			#div_btn {
				padding-top : 5px;
				text-align : right;
			}
			#box {
				margin-top : 30px;
				border : 1px solid black;
				width : 320px;
				height : 550px;
				margin-left : auto;
				margin-right : auto;
			}
			.btn-default {
				font-weight: bold;
			}
		</style>
	</head>
	<body>
		<div id="box">
			<h1>회원가입</h1>
			<form name="frm" action="regist" method="post" >
				<div class="form-group">
					<label for="id">아이디:</label>
					<input type="text" class="form-control" id="id" name="id" required>
				</div>
				<div class="form-group">
					<label for="pwd">패스워드:</label>
					<input type="password" class="form-control" id="pwd" name="pwd" required>
				</div>
				<div class="form-group">
					<label for="name">이름:</label>
					<input type="text" class="form-control" id="name" name="name" required>
				</div>
				<div class="form-group">
					<label for="email">이메일:</label>
					<input type="email" class="form-control" id="email" name="email" required>
				</div>
				<div class="form-group">
					<label for="phone">전화번호:</label>
					<input type="tel" class="form-control" id="phone" name="phone" required>
				</div>
				<div id="div_btn">
					<input type="button" class="btn btn-default" value="가입">&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn btn-default" value="취소">
				</div>
			</form>
		</div>
	</body>
	<script>
		document.querySelector("form[action='regist'] input[value='가입']").onclick=function(event){
			var id = document.querySelector("#id").value;
			var pwd = document.querySelector("#pwd").value;
			var name = document.querySelector("#name").value;
			var email = document.querySelector("#email").value;
			var phone = document.querySelector("#phone").value;
			if(id.trim() != "" && pwd.trim() != "" && name.trim() != "" && email.trim() != "" && phone.trim() != ""){
				document.frm.submit();
			} else {
				alert("입력하지 않은 정보가 있습니다.")
			}
		}
		document.querySelector("form[action='regist'] input[value='취소']").onclick=function(event){
			location.href="<%=request.getContextPath()%>/common/login";
		}
	</script>
</html>