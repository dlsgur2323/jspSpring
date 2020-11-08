<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

	<head>
		<title>로그인</title>
	</head>
	
	<body>
		<div id="box">
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
		</div>
		
		
		<script>
			document.querySelector("form[action='login'] input[value='로그인']").onclick=function(event){
				var id = document.querySelector("#id").value;
				var pwd = document.querySelector("#pwd").value;
				if(id.trim() != "" && pwd.trim() != ""){
					document.frm.submit();
				} else {
					alert("아이디와 비밀번호를 모두 입력하세요.")
				}
				
			}
			document.querySelector("form[action='login'] input[value='회원가입']").onclick=function(event){
				location.href="<%=request.getContextPath()%>/common/regist";
			}
		</script>
	</body>
