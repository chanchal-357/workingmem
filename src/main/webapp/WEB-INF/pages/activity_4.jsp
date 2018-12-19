		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<jsp:include page="template.head.jsp" />
	
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Activity 4</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Activity 4</li>
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
                      <h3 class="h4">Alphabet</h3>
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
				
				setTimeout(function(){
					loadDemo();
				}, 1000);
				
				$("#demo").on('click', loadDemo);
				
				var audioPrefix = "resources/audio/";
				
			    function loadDemo() {
			    	$('#start').prop('disabled', true);
			    	$.ajax({
			    		type: "GET",
			    		url: "/demo_activity",
			    		data: {activity_id : 4},
			    		success: function(result) {
			    			syncAudioFunction(result, true).then(function(rslt){
			    				setTimeout(function(){
			    					$("#animal_name_h").html("");
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
						data: {activity_id : 4, app_level : apl_level, level_round : lvl_round },
						success: function(result) {
							syncAudioFunction(result, false).then(function(rslt){
								var arr = rslt.split("|");
								apl_level = arr[0];
								lvl_round = arr[1];
								
								$("#act_level").html(apl_level);
								$("#level_round").html(lvl_round);
								
								setTimeout(function(){
									$("#animal_name_h").html("");
									$('#start').prop('disabled', false);
									$("#start").focus();
									$('#demo').prop('disabled', false);
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
			});
			
			function syncAudioFunction(result, is_demo) {
				var audioPrefix = "resources/audio/";
				var dfrd1= $.Deferred();
				var time = 1000;
				var progress = 0;
				$.each(result, function(k, v) {
					progress = is_demo ? 0 : v.levelCompletion;
					setTimeout(function(){
						$("#animal_name_h").html(v.animal.name_th);
						var url = audioPrefix + v.animal.audio_title;
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
