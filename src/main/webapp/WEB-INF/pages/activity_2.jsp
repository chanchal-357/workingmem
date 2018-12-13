		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<jsp:include page="template.head.jsp" />
	
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Working Memory</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Activity 2</li>
            </ul>
          </div>
          <!-- Forms Section-->
          <section class="forms"> 
            <div class="container-fluid">
              <div class="row">
                        
				<iframe src="" allow="autoplay" id="audio_anm" style="display:none"></iframe>
				
                <input type="hidden" id="app_level" value="1" />
                <input type="hidden" id="lvl_round" value="0" />
                
                <!-- Horizontal Form-->
                <div class="col-lg-10">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Object Name</h3>
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
							<h1 class="h1 text-large" id="animal_name_h" style="font-size: 7rem;"></h1>                          
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
				
				var apl_level = $("#app_level").val();
				var lvl_round = $("#lvl_round").val();
				
				$("#start").click(function(e) {
					$('#start').prop('disabled', true);
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
						url: "/start_activity_1",
						data: {app_level : apl_level, level_round : lvl_round },
						success: function(result) {
							syncAudioFunction(result).then(function(rslt){
								var arr = rslt.split("|");
								apl_level = arr[0];
								lvl_round = arr[1];
								
								$("#act_level").html(apl_level);
								$("#level_round").html(lvl_round);
								
								setTimeout(function(){
									$("#animal_name_h").html("");
									$('#start').prop('disabled', false);
								}, 1100*(result.length));
								
							},
							function(err){
							  console.log('This is error message.');
							});
						},
						error: function(result) {
							alert('error');
						}
					});
				}
			});
			
			function syncAudioFunction(result) {
				var dfrd1= $.Deferred();
				var time = 1000;
				var progress = 0;
				$.each(result, function(k, v) {
					progress = v.levelCompletion;
					setTimeout(function(){
						$("#animal_name_h").html(/* v.animal.name_en + " - " +   */v.animal.name_th);
						var url = v.animal.audio_title;
						var audio = document.createElement("audio");
						audio.src = url;
						audio.addEventListener("canplaythrough", function () {
							audio.play();
							setTimeout(function(){
								$("#progressbar").width(progress+"%");
								audio.pause();
							},
							1200);
						}, false);
						dfrd1.resolve(v.activity_level+"|"+v.level_round);
					}, time);
					time += 1200;
					
				});
				return dfrd1.promise();
			}
			
	</script>
        <!--  <script type="text/javascript">
			$(document).ready(function() {

				setTimeout(function(){
					loadDemo();
				}, 1000);
				
				$("#demo").on('click', loadDemo);
			    
			    function loadDemo() {
			        $.ajax({
			            type: "GET",
			            url: "/demo_activity_2",
			            data: { },
			            success: function(result) {
			            	var time = 600;
			                $.each(result, function(k, v) {
			                	setTimeout(function(){
			                		$("#animal_name_h").html(v.animal.name_th);
			                		var url = v.animal.audio_title;
			                		//$('#audio_anm').attr('src', url);
			                		var audio = document.createElement("audio");
			                		audio.src = url;
			                		audio.addEventListener("canplaythrough", function () {
			                		        audio.play();
			                		        setTimeout(function(){
			                		            audio.pause();
			                		        },
			                		        1200);
			                		        
			                		    }, false);
	                			}, time);
			                	time += 1200;
			                });
			               // $("#animal_name").val("Finish");
			            },
			            error: function(result) {
			                alert('error');
			            }
			        });
			    }
			    
			    
			    var apl_activity = $("#app_activity").val();
			    var apl_level = $("#app_level").val();
			    var lvl_round = $("#lvl_round").val();
			    
			    $("#start").click(function(e) {
			    	$("#progressbar").width("0%");
			    	$("#start").prop("value", "Next")
			    	//$('#start').prop('disabled', true);
			        e.preventDefault();
			        
			        $.ajax({
			            type: "GET",
			            cache: false,
			            url: "/start_activity_2",
			            data: {app_level : apl_level, level_round : lvl_round },
			            success: function(result) {
			            	var time = 1000;
			            	var progress = parseInt(0);
		            		$.each(result, function(k, v) {
		            			progress = parseInt(v.levelCompletion);
			                	setTimeout(function(){
			                		$("#animal_name_h").html(v.animal.name_th);
			                		var url = v.animal.audio_title;
			                		var audio = document.createElement("audio");
			                		audio.src = url;
			                		audio.addEventListener("canplaythrough", function () {
		                		        audio.play();
		                		        setTimeout(function(){
		                		        	$("#progressbar").width(progress+"%");
		                		        	//$("#animal_name_h").html('');
		                		        	audio.pause();
		                		        },
		                		        1200);
		                		    }, false);
	                			}, time);
			                	time += 1200;
			                	
			                	apl_level = v.activity_level;
			                	lvl_round = v.level_round;
			                	$("#act_level").html(apl_level);
			                	$("#level_round").html(lvl_round);
			                });
			            },
			            error: function(result) {
			                alert('error');
			            }
			        });
			    });
			    
			    /*$("#level").on('click', refreshLevel);
			    function refreshLevel(lvl) {
				}*/
			});
			
			
		</script> -->