<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
	<body>
		<div class="content-wrapper" style="background:#343a40;">
			<div class="col-md-4" style="width:330px;margin:auto;padding-top:50px;">
				<div class="card">
					<div class="card-header" style="background:#6c757d; border-bottom:1px solid #1c1c1c;">
						<h3 class="cart-title" style="text-align:center;margin-bottom:0px;"><a href="<%=request.getContextPath() %>/common/main" style="color:white;">WebBoard</a></h3>
					</div>
					<div class="card-body" style="background:#6c757d;">
						<p class="login-box-msg">Register a new membership</p>
						<form name="regist_frm" action="regist" method="post" >
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="id" placeholder="User id" name="id" required>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-user"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="password" class="form-control" id="pwd" placeholder="Password" name="pwd" required>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-lock"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="name" placeholder="Full name" name="name" required>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-user"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-envelope"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="tel" class="form-control" id="phone" placeholder="Phone number" name="phone" required>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-phone"></span>
									</div>
								</div>
							</div>
							<div id="row" style="text-align:right;">
								<input type="button" class="btn btn-sm btn-info" value="Submit">&nbsp;&nbsp;&nbsp;
								<input type="button" class="btn btn-sm btn-info" value="Cancel">
							</div>
						</form>
					</div><!-- /card-body -->
				</div><!-- /card -->
			</div><!-- /col -->
		</div><!-- /content-wrapper -->
		
		<script>
			document.querySelector("form[action='regist'] input[value='Submit']").onclick=function(event){
				var id = document.querySelector("#id").value;
				var pwd = document.querySelector("#pwd").value;
				var name = document.querySelector("#name").value;
				var email = document.querySelector("#email").value;
				var phone = document.querySelector("#phone").value;
				if(id.trim() != "" && pwd.trim() != "" && name.trim() != "" && email.trim() != "" && phone.trim() != ""){
					document.regist_frm.submit();
				} else {
					alert("입력하지 않은 정보가 있습니다.")
				}
			}
			document.querySelector("form[action='regist'] input[value='Cancel']").onclick=function(event){
				location.href="<%=request.getContextPath()%>/common/main";
			}
		</script>
		
	</body>

	
	