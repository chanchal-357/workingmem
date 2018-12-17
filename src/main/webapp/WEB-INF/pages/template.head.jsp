<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Working Memory</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-family-Poppins.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Material Date picker stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gijgo.min.css" type="text/css"/>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flipImg.css" type="text/css"/>
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  
  <body>
    <div class="page">
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <!-- Search Box-->
          <div class="search-box">
            <button class="dismiss"><i class="icon-close"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="What are you looking for..." class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand --><a href="${pageContext.request.contextPath}/index" class="navbar-brand d-none d-sm-inline-block">
                  <div class="brand-text d-none d-lg-inline-block"><span>Working Memory </span><strong> Dashboard</strong></div>
                  <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
              <!-- Navbar Menu -->
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                <!-- Languages dropdown    -->
                <li class="nav-item dropdown">
                	<a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle">
                		<img src="resources/img/flags/16/GB.png" alt="English" id="selLangImg"/>
                		<span class="d-none d-sm-inline-block" id="selLangTxt">English</span>
                	</a>
	                <ul aria-labelledby="languages" class="dropdown-menu" id="unselLang" onClick="changeLang('th', true);"> <!-- onClick="changeLang(2);" -->
	                	<li>
	                  		<a rel="nofollow" href="#" class="dropdown-item"> 
	                  			<img src="resources/img/flags/16/TH.png" alt="Thai" class="mr-2" id="unselLangImg" /><span id="unselLangTxt"> Thai </span>
	                  		</a>
	                  	</li>
	                </ul>
                </li>
              </ul>
				
            </div>
          </div>
        </nav>
      </header>
      
      <jsp:include page="template.menu.jsp" />