		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<jsp:include page="template.head.jsp" />
	
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Activity 5</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Activity 5</li>
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
								        <div class="front artist-1"  id="bckImg">
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
                        
                        <div class="form-group row" style="display:none;">
                          <label class="col-sm-3 form-control-label">Reset Level</label>
                          <div class="col-sm-9">
							<input type="text" class="" id="rst_level" value="" />  
							<input type="button" id="refreshlevel" value="Reset" class="btn btn-primary pull-right">                        
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
					loadDemo();
				}, 1000);
				
				$("#demo").on('click', loadDemo);
				
				var apl_level = $("#app_level").val();
				var lvl_round = $("#lvl_round").val();
				
				$("#start").click(function(e) {
					$("#start").prop("value", "Next")
					$('#start').prop('disabled', true);
					$('#demo').prop('disabled', true);
					loadActivity();
				});
				
				function loadActivity() {
					$('#start').prop('disabled', true);
					$.ajax({
						type: "GET",
						url: "/start_activity",
						data: {activity_id : 5, app_level : apl_level, level_round : lvl_round },
						success: function(result) {
							syncActivityFunction(result, false).then(function(rslt){
								console.log("Return from syncActivity: " + rslt);
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

				
				$("#refreshlevel").on('click', refreshLevel);
			    
				function refreshLevel() {
					var level = $("#rst_level").val();
					if(level != "" && parseInt(level) > 0) {
						apl_level = level;
						lvl_round = 0;
					}
				}
				
				
			});
			
			function loadDemo() {
				$('#start').prop('disabled', true);
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
					console.log("Showing image having url: " + imgUrl + ", & duration: " + time);
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
					audio.play();
					setTimeout(function(){
						
						console.log("Playing audio having url: " + audioUrl + ", & duration: " + time);
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
				var time = 500;
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
				}, time);
			}
			
			function timeBreak(time) {
				setTimeout(function(){
					console.log("Pausing for: " + time + " duration!");
				}, time);
			}

	</script>
