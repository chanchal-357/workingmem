   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
   <div class="page-content d-flex align-items-stretch"> 
      <!-- Side Navbar -->
	<nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="${pageContext.request.contextPath}/resources/img/avatar-8.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4"><spring:message code="greeting" text="default"/></h1>
              <p><spring:message code="title.admin" /></p>
            </div>
          </div>
          <!-- Sidebar Navidation Menus-->
          <span class="heading"><spring:message code="title.main" /></span>
          <ul class="list-unstyled">
              <li id="home_page"><a href="${pageContext.request.contextPath}/index"> <i class="icon-home"></i><spring:message code="menu.home" /> </a></li>
              <li id="activity_1"><a href="${pageContext.request.contextPath}/activity_1"> <i class="fa fa-paw"></i>1. <spring:message code="menu.animal" /> </a></li>
              <li id="activity_2"><a href="${pageContext.request.contextPath}/activity_2"> <i class="fa fa-cubes"></i>2. <spring:message code="menu.object" /> </a></li>
              <li id="activity_3"><a href="${pageContext.request.contextPath}/activity_3"> <i class="fa fa-image"></i>3. <spring:message code="menu.image" /> </a></li>
              <li id="activity_4"><a href="${pageContext.request.contextPath}/activity_4"> <i class="fa fa-book"></i>4. <spring:message code="menu.letters" /> </a></li>
              <li id="activity_5"><a href="${pageContext.request.contextPath}/activity_5"> <i class="fa fa-random"></i>5. <spring:message code="menu.misc" /> </a></li>
          </ul>
        </nav>