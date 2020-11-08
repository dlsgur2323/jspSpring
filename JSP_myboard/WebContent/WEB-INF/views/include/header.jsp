<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title><decorator:title default="WebBoard"/></title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  
  <style>
  	#logout:hover {
  		color:white;
  	}
  </style>
  
  <decorator:head/>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-dark" style="background:#6c757d;border-bottom:1px solid #4b545c;">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<%=request.getContextPath() %>/common/main" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i
            class="fas fa-th-large"></i></a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-gray elevation-4" style="background:#1c1c1c;">
    <!-- Brand Logo -->
    <a href="<%=request.getContextPath() %>/common/main" class="brand-link">
      <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">WebBoard v3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <c:if test="${empty loginUser }">
	      <div class="user-panel mt-6 pb-3 mb-3 d-flex">
	        <div class="info" style="width:220px;margin-auto;">
	          <form name="frm" role="form" action="<%=request.getContextPath() %>/common/login" method="post"> <!-- ////////  로그인  ///////// -->
                  <label for="InputId" style="margin-bottom:0px; margin-top:5px; font-weight:normal; color:rgba(255,255,255,.75);">Email address</label>
                  <input type="id" class="form-control" style="height:30px;" name="id" id="InputId" placeholder="Enter id">
                  <label for="InputPassword" style="margin-bottom:0px; margin-top:5px;font-weight:normal; color:rgba(255,255,255,.75);">Password</label>
                  <input type="password" class="form-control" style="height:30px;" name="pwd" id="InputPassword" placeholder="Password">
                <!-- /.card-body -->
	              <div style="text-align:right;">
	              	<a href="<%=request.getContextPath() %>/common/regist" id="regist" style="vertical-align:bottom; font-size:smaller;">회원가입</a>
	                <input type="button" class="btn btn-info btn-sm" style="margin-top:20px; margin-left:85px; width:65px;" value="Login">
	              </div>
              </form>
	        </div>
	      </div>
	      	<script>
				document.querySelector("form[name='frm'] input[value='Login']").onclick=function(event){
					var id = document.querySelector("#InputId").value;
					var pwd = document.querySelector("#InputPassword").value;
					if(id.trim() != "" && pwd.trim() != ""){
						document.frm.submit();
					} else {
						alert("아이디와 비밀번호를 모두 입력하세요.")
					}
					
				}
			</script>
      </c:if>
      <c:if test="${!empty loginUser }">
	      <div class="user-panel mt-3 pb-3 d-flex" style="margin-bottom:0px;">
	        <div class="image">
	          <img src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
	        </div>
	        <div class="info">
	          <a href="#" class="d-block">${loginUser.name }</a>
	        </div>
	      </div>
	      <nav class="mt-2">
	        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
	          <!-- Add icons to the links using the .nav-icon class
	               with font-awesome or any other icon font library -->
	          <a href="<%=request.getContextPath() %>/common/logout" id="logout" style="margin-left:20px;font-size:smaller;margin-bottom:10px;width:50px;">로그아웃</a>
	          <li class="nav-item has-treeview">
	            <a href="#" class="nav-link">
	              <i class="nav-icon fas fa-tachometer-alt"></i>
	              <p>
	                Starter Pages
	                <i class="right fas fa-angle-left"></i>
	              </p>
	            </a>
	            <ul class="nav nav-treeview">
	              <li class="nav-item">
	                <a href="#" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>Active Page</p>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a href="#" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>Inactive Page</p>
	                </a>
	              </li>
	            </ul>
	          </li>
	          <li class="nav-item">
	            <a href="<%=request.getContextPath() %>/member/list" class="nav-link">
	              <i class="nav-icon fas fa-th"></i>
	              <p>Member List</p>
	            </a>
	          </li>
	        </ul>
	      </nav>
      </c:if>

      <!-- Sidebar Menu -->
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
