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
		</style>
	</head>
	<body>
		<h1>회원가입</h1>
		<form name="frm" action="regist" method="post">
			<div class="form-group">
				<label for="id">아이디:</label>
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<div class="form-group">
				<label for="pwd">패스워드:</label>
				<input type="password" class="form-control" id="pwd" name="pwd">
			</div>
			<div class="form-group">
				<label for="name">이름:</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group">
				<label for="email">이메일:</label>
				<input type="email" class="form-control" id="email" name="email">
			</div>
			<div class="form-group">
				<label for="phone">전화번호:</label>
				<input type="tel" class="form-control" id="phone" name="phone">
			</div>
			<div id="div_btn">
				<input type="button" class="btn btn-default" value="가입">&nbsp;&nbsp;&nbsp;
				<input type="button" class="btn btn-default" value="취소">
			</div>
		</form>
	</body>
	<script>
		document.querySelector("form[action='regist'] input[value='가입']").onclick=function(event){
			document.frm.submit();
		}
		document.querySelector("form[action='regist'] input[value='취소']").onclick=function(event){
			location.href="<%=request.getContextPath()%>/common/login";
		}
	</script>
</html>