		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<jsp:include page="template.head.jsp" />
	
		<jsp:include page="resetLevelModal.jsp" />
	
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom"><spring:message code="title.activity" /> 1</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index"><spring:message code="menu.home" /></a></li>
              <li class="breadcrumb-item active"><spring:message code="menu.animal" /></li>
              <div class="client ml-auto px-1" id="levelref1">
		         <div class="client-title" style="margin-top:-5px;">
		         	<a href="#" data-toggle="modal" data-target="#levelModal" id="levelref">Reset Level</a>
		         </div>
	          </div>
            </ul>
          </div>
          <!-- Forms Section-->
          <section class="forms no-padding-top"> 
            <div class="container-fluid">
              <div class="row">
                        
	            <!-- <audio controls autoplay hidden="true">
				  <source id="audio_src" src="resources/horse.ogg" type="audio/ogg"> type="audio/mpeg 
				  Your browser does not support the audio element.
				</audio> -->
				<iframe src="" allow="autoplay" id="audio_anm" style="display:none"></iframe>
				
                <input type="hidden" id="app_level" value="1" />
                <input type="hidden" id="lvl_round" value="0" />
                
                <!-- Horizontal Form-->
                <div class="col-lg-10">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4"><spring:message code="menu.animal" /> <spring:message code="label.name" /></h3>
                    </div>
                    
                    <div class="progress">
                      <div role="progressbar" style="width: 0%; height: 5px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet" id="progressbar"></div>
                    </div>
                    
                    <div class="card-body">
                      <!-- <p>Memorize Animal Name</p> -->
                      <form class="form-horizontal">
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label"><spring:message code="label.level" /> <span id="act_level">  </span> <spring:message code="label.round" /> <span id="level_round">  </span></label>
                          <div class="col-sm-9">
                            <!-- <input name="animal_name" id="animal_name" disabled="disabled"  placeholder="Animal Name" class="form-control form-control-success"><small class="form-text">Memorize Animals Name</small> -->
							<h1 class="h1 text-large" id="object_name" style="font-size: 7rem;"></h1>                          
                          </div>
                        </div>
                        <div class="form-group row">       
                          <div class="col-sm-9 offset-sm-3">
                            <input type="button" id="demo" value='<spring:message code="btn.demo" />' class="btn btn-primary">
                            <input type="button" id="start" value='<spring:message code="btn.start" />' autofocus class="btn btn-primary pull-right">
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
          </section>
         <jsp:include page="template.footer.jsp" />
         <script src="${pageContext.request.contextPath}/resources/js/activity.js" type="text/javascript"></script>
          
         <script type="text/javascript">
         
			$(document).ready(function() {  
				
				setTimeout(function(){
					loadDemo("1");
				}, 1000);
				
				/* $("#demo").on('click', function() {
					loadDemo("1");
			    }); */
			    // passing argument to event handler function 
				$("#demo").on('click', loadDemo.bind(null, "1")); 
				
				$("#start").click(function(e) {
					deactivateBtns();
					loadActivity("1");
				});
				
			});
			
	</script>