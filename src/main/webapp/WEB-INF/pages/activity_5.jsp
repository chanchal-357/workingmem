		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<jsp:include page="template.head.jsp" />
	
		<jsp:include page="resetLevelModal.jsp" />
	
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom"><spring:message code="title.activity" /> 5</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index"><spring:message code="menu.home" /></a></li>
              <li class="breadcrumb-item active"><spring:message code="menu.misc" /></li>
	          <div class="client ml-auto px-1">
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
                        
				<iframe src="" allow="autoplay" id="audio_anm" style="display:none"></iframe>
				
                <input type="hidden" id="app_level" value="1" />
                <input type="hidden" id="lvl_round" value="0" />
                
                <!-- Horizontal Form-->
                <div class="col-lg-10">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Miscellaneous</h3>
                    </div>
                    
                    <div class="progress">
                      <div role="progressbar" style="width: 0%; height: 5px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet" id="progressbar"></div>
                    </div>
                    
                    <div class="card-body">
                      <!-- <p>Memorize Animal Name</p> -->
                      <form class="form-horizontal">
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Level <span id="act_level">  </span> Round <span id="level_round">  </span></label>
                          <div class="col-sm-9">
							<h1 class="h1 text-large" id="object_name" style="font-size: 7rem;"></h1>  
							
							<!-- Display Image Start -->
			                   <div class="client card" id="img_div" style="display:none">
			                    <div class="card-body text-center">
				                  <div class="flip-container">
								    <div class="flipper">
								        <div class="front artist-1"  id="bckImg" style="background-size:contain;">
								        </div>
								    </div>
								  </div>
								</div>
							  </div>
                            <!-- Display Image End -->
                                    
                          </div>
                        </div>
                        <div class="form-group row">       
                          <div class="col-sm-9 offset-sm-3">
                            <input type="button" id="demo" value="Demo" class="btn btn-primary">
                            <input type="button" id="start" value="Start" autofocus class="btn btn-primary pull-right">
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
        <%--  <script src="${pageContext.request.contextPath}/resources/js/activity.js" type="text/javascript"></script> --%>
         
         <script type="text/javascript">
			$(document).ready(function() {  
				
				setTimeout(function(){
					loadDemo();
				}, 1000);
				
				$("#demo").on('click', loadDemo);
				
				var apl_level = $("#app_level").val();
				var lvl_round = $("#lvl_round").val();
				
				$("#start").click(function(e) {
					$("#start").prop("value", "Next")
					$('#start').prop('disabled', true);
					$('#demo').prop('disabled', true);
					$('#levelref').attr('data-toggle','');
					loadActivity();
				});
				
				function loadActivity() {
					$.ajax({
						type: "GET",
						url: "/start_activity",
						data: {activity_id : 5, app_level : apl_level, level_round : lvl_round },
						success: function(result) {
							syncActivityFunction(result, false).then(function(rslt){
								var arr = rslt.split("|");
								apl_level = arr[0];
								lvl_round = arr[1];
								
								$("#act_level").html(apl_level);
								$("#level_round").html(lvl_round);
								
							},
							function(err){
							  console.log('This is error message. ' + err);
							});
						},
						error: function(result) {
							alert('error ' + result);
						}
					});
				}
				
				$("#resetlevel").on('click', refreshLevel);
				function refreshLevel() {
					resetModalMsg();
					var level = $("#acty_level").val();
					//console.log("Level to set: " + level);
					if(level != "" && parseInt(level) > 0) {
						apl_level = level;
						lvl_round = 0;
						$("#acty_level").val('');
						$('#message').addClass('alert-success');
						$("#message").html('Level refreshed successfully!');
					}
					else {
						$('#message').addClass('alert-danger');
						$("#message").html('Invalid Level selected!');
					}
				}
				
				$('#levelModal').on('hidden.bs.modal', function (e) {
					resetModalMsg();
				});
				
			});
			
			function resetModalMsg() {
				$('#message').removeClass('alert-success');
				$('#message').removeClass('alert-danger');
				$("#message").html('');
			}
			
			function loadDemo() {
				$('#start').prop('disabled', true);
				$('#levelref').attr('data-toggle','');
				$.ajax({
					type: "GET",
					url: "/demo_activity",
					data: {activity_id : 5},
					success: function(result) {
						syncActivityFunction(result, true).then(function(rslt){
							console.log("Return from syncActivity: " + rslt);
						},
						function(err){
						  console.log('This is error message. ' + err);
						});
					},
					error: function(result) {
						alert('error ' + result);
					}
				});
			}
			
			function syncActivityFunction(result, is_demo) {
				var dfrd1 = $.Deferred();
				var time = 500;
				var progress = 0;
				$.each(result, function(k, v) {
					progress = is_demo ? 0 : v.levelCompletion;
					setTimeout(function(){
						
						$("#progressbar").width(progress+"%");
						
						if(v.is_image) {
							var imgUrl = "resources/image/" + v.appObject.image_title;
			        		displayImage(imgUrl, 500, hideImage);
						}
						else {
							var audioUrl = "resources/audio/" + v.appObject.audio_title;
							var name_th = v.appObject.name_th;
							playAudio(audioUrl, 1000, name_th, blankObjectName);
						}
						// Activating buttons
						 if ((result.length == (k + 1))) {
							 activateBtns(800 * result.length);
						 }
						
					}, time);
					time += 1500;
					dfrd1.resolve(v.activity_level+"|"+v.level_round);
				});
				return dfrd1.promise();
			}

			function displayImage(imgUrl, time, callback) {
				
				setTimeout(function(){
					//console.log("Showing image having url: " + imgUrl + ", & duration: " + time);
					$("#bckImg").css("background-image", "url("+imgUrl+")");
					$("#img_div").css('display', 'block');
					$("#bckImg").css('display', 'block');
					if (typeof(callback) == 'function') {
				       callback();
				    }
				}, time);
				
			}

			function playAudio(audioUrl, time, name_th, callback) {
				$("#object_name").html(name_th);
				var audio = document.createElement("audio");
				audio.src = audioUrl;
				audio.addEventListener("canplaythrough", function () {
					const playPromise = audio.play();
					if (playPromise !== null){
					    playPromise.catch(() => { audio.play(); })
					}
					setTimeout(function(){
						
						//console.log("Playing audio having url: " + audioUrl + ", & duration: " + time);
						audio.pause();
						if (typeof(callback) == 'function') {
					       callback();
					    }
					},
					time);
				}, false);
			}
			
			function hideImage() {
				var time = 1000;
				setTimeout(function(){
					//console.log("Hiding image & return from display Image for" + time);
					$("#bckImg").css('background-image', 'none');
				    $("#bckImg").css('display', 'none');
				    $("#img_div").css('display', 'none');
				}, time);
			}

			function blankObjectName() {
				var time = 450;
				setTimeout(function(){
					//console.log("Blank object name & return from play Audio for " + time);
					$("#object_name").html("");
				}, time);
			}
			
			function activateBtns(time) {
				setTimeout(function(){
					//console.log("Activating buttons after " + time + " duration!"); 
					$('#start').prop('disabled', false);
					$("#start").focus();
					$('#demo').prop('disabled', false);
					$('#levelref').attr('data-toggle','modal');
				}, time);
			}
			
			function timeBreak(time) {
				setTimeout(function(){
					console.log("Pausing for: " + time + " duration!");
				}, time);
			}

	</script>
	