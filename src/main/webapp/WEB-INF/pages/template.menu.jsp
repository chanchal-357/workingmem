   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
   <div class="page-content d-flex align-items-stretch"> 
      <!-- Side Navbar -->
	<nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="${pageContext.request.contextPath}/resources/img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4"><spring:message code="greeting" text="default"/></h1>
              <p>ADMIN</p>
            </div>
          </div>
          <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
          <ul class="list-unstyled">
              <li id="home_page"><a href="${pageContext.request.contextPath}/index"> <i class="icon-home"></i>Home </a></li>
              <li id="activity_1"><a href="${pageContext.request.contextPath}/activity_1"> <i class="fa fa-paw"></i>1. Animal </a></li>
              <li id="activity_2"><a href="${pageContext.request.contextPath}/activity_2"> <i class="fa fa-cubes"></i>2. Object </a></li>
          </ul>
        </nav>