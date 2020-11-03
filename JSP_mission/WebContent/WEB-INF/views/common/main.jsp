<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<html>
	<style>
		#section {
			width : 900px;
			margin : auto;
		}
	</style>
	<%@include file ="header.jsp" %>

	<div id="section">
		<h1>Main page...</h1>

		<button type="button" onclick="logout_go();">로그아웃</button>
	</div>

	<script>
		function logout_go(){
			if(confirm("로그아웃 합니다.")){
				location.href="<%=request.getContextPath()%>/common/logout";
			}
		}
	</script>
	<%@include file ="footer.jsp" %>
</html>