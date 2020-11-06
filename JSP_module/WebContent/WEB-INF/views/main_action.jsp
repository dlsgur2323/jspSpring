<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- <c:import url="/WEB-INF/views/include/header.jsp"> --%>
<%-- 	<c:param name="title">메인페이지</c:param> --%>
<%-- </c:import> --%>

<jsp:include page="/WEB-INF/views/include/header.jsp">
	<jsp:param value="메인페이지" name="title"/>
</jsp:include>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Main Action Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Starter Page</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
      	<div class="row">
      		<div class="col-sm-3">
      			<div class="card">
      				<div class="card-header">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
	      					<button type="button" class="btn btn-tool" data-card-widget="collapse">
	      						<i class="fas fa-minus"></i>
	      					</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-3">
	      		<div class="card">
      				<div class="card-header">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
	      					<button type="button" class="btn btn-tool" data-card-widget="collapse">
	      						<i class="fas fa-minus"></i>
	      					</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-3">
	      		<div class="card">
      				<div class="card-header">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
	      					<button type="button" class="btn btn-tool" data-card-widget="collapse">
	      						<i class="fas fa-minus"></i>
	      					</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-3">
	      		<div class="card">
      				<div class="card-header">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
	      					<button type="button" class="btn btn-tool" data-card-widget="collapse">
	      						<i class="fas fa-minus"></i>
	      					</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      	</div><!-- /.row -->
      	<div class="row">
      		<div class=col-sm-4>
      			<div class="card">
	  				<div class="card-header bg-primary">
	  					<h3 class="card-title">header</h3>
	  				</div>
	  				<div class="card-body">body</div>
	  				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class=col-sm-8>
      			<div class="card">
	  				<div class="card-header bg-primary">
	  					<h3 class="card-title">header</h3>
	  				</div>
	  				<div class="card-body">body</div>
	  				<div class="card-footer">footer</div>
      			</div>
      		</div>
      	</div><!-- /.row -->
      	<div class="row">
      		<div class=col-sm-6>
      			<div class="card">
	  				<div class="card-header bg-danger">
						<h3 class="card-title">header</h3>
					</div>
	  				<div class="card-body">body</div>
	  				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class=col-sm-6>
      			<div class="card">
	  				<div class="card-header bg-danger">
	  					<h3 class="card-title">header</h3>
	  				</div>
	  				<div class="card-body">body</div>
	  				<div class="card-footer">footer</div>
      			</div>
      		</div>
      	</div><!-- /.row -->
      	<div class="row">
      		<div class="col-sm-2">
      			<div class="card">
      				<div class="card-header bg-success">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
      						<button type="button" class="btn btn-tool" data-card-widget="remove">
      							<i class="fas fa-times"></i>
      						</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-2">
	      		<div class="card">
      				<div class="card-header bg-success">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
      						<button type="button" class="btn btn-tool" data-card-widget="remove">
      							<i class="fas fa-times"></i>
      						</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-2">
	      		<div class="card">
      				<div class="card-header bg-success">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
      						<button type="button" class="btn btn-tool" data-card-widget="remove">
      							<i class="fas fa-times"></i>
      						</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-2">
	      		<div class="card">
      				<div class="card-header bg-success">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
      						<button type="button" class="btn btn-tool" data-card-widget="remove">
      							<i class="fas fa-times"></i>
      						</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-2">
	      		<div class="card">
      				<div class="card-header bg-success">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
      						<button type="button" class="btn btn-tool" data-card-widget="remove">
      							<i class="fas fa-times"></i>
      						</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      		<div class="col-sm-2">
	      		<div class="card">
      				<div class="card-header bg-success">
      					<h3 class="card-title">header</h3>
      					<div class="card-tools">
      						<button type="button" class="btn btn-tool" data-card-widget="remove">
      							<i class="fas fa-times"></i>
      						</button>
      					</div>
      				</div>
      				<div class="card-body">body</div>
      				<div class="card-footer">footer</div>
      			</div>
      		</div>
      	</div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>













