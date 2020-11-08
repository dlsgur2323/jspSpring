<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<style>
			body {
				background : #dbdbdb
			}
			h1 {
				margin-top : 50px;
				text-align: center;
				margin-bottom : 40px;
			}
			.container {
			    width: 599px;
			    height: 246px;
			    padding: 0px;
			}
			.cbody, img {
				float : left;
			    height: 246px;
			}
			.table {
				border-bottom : 1px solid rgba(0,0,0,.125);
				border-right : 1px solid rgba(0,0,0,.125);
			   	width: 353px;
			   	height : 246px;
			}
			div {
				background : white;
			}
			.cbody{
   				height: 246px;
			}
		</style>
	</head>
	<body>
		<h1>회원 상세 정보</h1>
		<div class="container">
			<img src="<%=request.getContextPath() %>/images/img_avatar1.png" alt="Card image" style="width:246px">
			<div class="cbody" style="width:350px;">
				<table class="table">
					<tr>
						<td style="padding-left : 25px; width : 120px;">아이디</td>
						<td style="padding-left : 0px;">:</td>
						<td>${member.id }</td>
					</tr>
					<tr>
						<td style="padding-left : 25px; width : 130px;">패스워드</td>
						<td style="padding-left : 0px;">:</td>
						<td>${member.pwd }</td>
					</tr>
					<tr>
						<td style="padding-left : 25px; width : 130px;">이름</td>
						<td style="padding-left : 0px;">:</td>
						<td>${member.name }</td>
					</tr>
					<tr>
						<td style="padding-left : 25px; width : 130px;">이메일</td>
						<td style="padding-left : 0px;">:</td>
						<td>${member.email }</td>
					</tr>
					<tr>
						<td style="padding-left : 25px; width : 130px;">전화번호</td>
						<td style="padding-left : 0px;">:</td>
						<td>${member.phone }</td>
					</tr>
				</table>
			</div>
			<input type="button" class="btn btn-dark" onclick="location.href='<%=request.getContextPath() %>/member/list'" value="목록">
		</div>
	</body>
</html>










