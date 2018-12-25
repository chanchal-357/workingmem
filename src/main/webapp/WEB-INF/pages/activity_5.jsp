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
         
        <script type="text/javascript">
			$(document).ready(function() {  
				
				setTimeout(function(){
					loadDemo();
				}, 1000);
				
				$("#demo").on('click', loadDemo);
				
			    function loadDemo() {
			    	$('#start').prop('disabled', true);
			    	$.ajax({
			    		type: "GET",
			    		url: "/demo_activity",
			    		data: {activity_id : 5},
			    		success: function(result) {
			    			syncActivityFunction(result, true).then(function(rslt){
			    				setTimeout(function(){
			    					$('#start').prop('disabled', false);
			    					$("#start").focus();
			    				}, 1100*(result.length));
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
			    
				var apl_level = $("#app_level").val();
				var lvl_round = $("#lvl_round").val();
				
				$("#start").click(function(e) {
					$("#start").prop("value", "Next")
					$('#start').prop('disabled', true);
					$('#demo').prop('disabled', true);
					loadActivity();
				});
				
				$("#refreshlevel").on('click', refreshLevel);
			    
				function refreshLevel() {
					var level = $("#rst_level").val();
					if(level != "" && parseInt(level) > 0) {
						apl_level = level;
						lvl_round = 0;
					}
				}
				
				function loadActivity() {
					$.ajax({
						type: "GET",
						cache: false,
						url: "/start_activity",
						data: {activity_id : 5, app_level : apl_level, level_round : lvl_round },
						success: function(result) {
							syncActivityFunction(result, false).then(function(rslt){
								var arr = rslt.split("|");
								apl_level = arr[0];
								lvl_round = arr[1];
								
								$("#act_level").html(apl_level);
								$("#level_round").html(lvl_round);
								
								setTimeout(function(){
									$('#start').prop('disabled', false);
									$("#start").focus();
									$('#demo').prop('disabled', false);
								}, 1000*(result.length));
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
			});
			
			function syncActivityFunction(result, is_demo) {
				var dfrd1 = $.Deferred();
				var time = 100;
				var progress = 0;
				$.each(result, function(k, v) {
					progress = is_demo ? 0 : v.levelCompletion;
					setTimeout(function(){
						$("#progressbar").width(progress+"%");
						if(v.is_image) {
							var imgUrl = "resources/image/" + v.appObject.image_title;
	                		displayImage(imgUrl, 1000).then(function(rslt){
								setTimeout(function(){
								     $("#bckImg").css('background-image', 'none');
								     $("#bckImg").css('display', 'none');
								     $("#img_div").css('display', 'none');
								}, 1000);
							},
							function(err){
							  console.log('This is error message.'+err);
							});
						}
						else {
							$("#object_name").html(v.appObject.name_th);
							var audioUrl = "resources/audio/" + v.appObject.audio_title;
							playAudio(audioUrl, 1000).then(function(rslt){
								setTimeout(function(){
									$("#object_name").html("");
								}, 1000);
							},
							function(err){
							  console.log('This is error message.'+err);
							});
						}
						dfrd1.resolve(v.activity_level+"|"+v.level_round);
					}, time);
					time += 2500;
				});
				return dfrd1.promise();
			}
			
			function displayImage(imgUrl, time) {
				var dfrd1= $.Deferred();
				setTimeout(function(){
					$("#bckImg").css("background-image", "url("+imgUrl+")");
					$("#img_div").css('display', 'block');
					$("#bckImg").css('display', 'block');
    				dfrd1.resolve(true);
    			}, time);
				return dfrd1.promise();
			}
			
			function playAudio(audioUrl, time) {
				var dfrd1= $.Deferred();
				var audio = document.createElement("audio");
				audio.src = audioUrl;
				audio.addEventListener("canplaythrough", function () {
					audio.play();
					setTimeout(function(){
						audio.pause();
						dfrd1.resolve(true);
					},
					time);
				}, false);
				return dfrd1.promise();
			}
			
	</script>
