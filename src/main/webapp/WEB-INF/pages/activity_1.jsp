		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
		<jsp:include page="template.head.jsp" />
	
		<input type="hidden" id="activityLst" value="${activities}" />
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Forms</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Activity 1</li>
            </ul>
          </div>
          <!-- Forms Section-->
          <section class="forms"> 
            <div class="container-fluid">
              <div class="row">
                        
	            <!-- <audio controls autoplay hidden="true">
				  <source id="audio_src" src="resources/horse.ogg" type="audio/ogg"> type="audio/mpeg 
				  Your browser does not support the audio element.
				</audio> -->
				<iframe src="" allow="autoplay" id="audio_anm" style="display:none"></iframe>
				
                <input type="hidden" id="app_activity" value="1" />
                <input type="hidden" id="app_level" value="0" />
                
                <!-- Horizontal Form-->
                <div class="col-lg-10">
                  <div class="card">
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Animal Name</h3>
                    </div>
                    
                    <div class="progress">
                      <div role="progressbar" style="width: 0%; height: 5px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet" id="progressbar"></div>
                    </div>
                    
                    <div class="card-body">
                      <!-- <p>Memorize Animal Name</p> -->
                      <form class="form-horizontal">
                        <div class="form-group row">
                          <label class="col-sm-3 form-control-label">Level <span id="act_level">  </span></label>
                          <div class="col-sm-9">
                            <!-- <input name="animal_name" id="animal_name" disabled="disabled"  placeholder="Animal Name" class="form-control form-control-success"><small class="form-text">Memorize Animals Name</small> -->
							<h1 class="h1 text-large" id="animal_name_h" style="font-size: 7rem;"></h1>                          
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
         <script type="text/javascript">
			$(document ).ready(function() {
			    var level = 0;
			    $("#demo").click(function(e) {
			    	loadDemo() 
			    });
			    
			    function loadDemo() {
			        $.ajax({
			            type: "GET",
			            url: "/demo_activity_1",
			            data: { },
			            success: function(result) {
			            	var time = 1000;
			                $.each(result, function(k, v) {
			                	setTimeout(function(){
			                		$("#animal_name_h").html(v.name_th + " " +v.name_en);
			                		var url = v.audio_title;// "resources/horse.ogg";//
			                		//$('#audio_anm').attr('src', url);
			                		var audio = document.createElement("audio");
			                		audio.src = url;
			                		audio.addEventListener("canplaythrough", function () {
			                		        audio.play();
			                		        setTimeout(function(){
			                		            audio.pause();
			                		        },
			                		        2000);
			                		        
			                		    }, false);
	                			}, time);
			                	time += 2000;
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
			    
			    $("#start").click(function(e) {
			    	$("#progressbar").width("0%");
			    	$("#start").prop("value", "Next")
			    	//$('#start').prop('disabled', true);
			        e.preventDefault();
			        
			        $.ajax({
			            type: "GET",
			            url: "/start_activity_1",
			            data: {app_activity : apl_activity, app_level : apl_level },
			            success: function(result) {
			            	var len = result.length;
			            	var time = 1000;
			            	var progress = parseInt(0);
		            		$.each(result, function(k, v) {
		            			progress = parseInt(((k + 1)/len)*100);
			                	setTimeout(function(){
			                		$("#animal_name_h").html(v.name_th + " " +v.name_en);
			                		var url = v.audio_title;// "resources/horse.ogg";//
			                		var audio = document.createElement("audio");
			                		audio.src = url;
			                		audio.addEventListener("canplaythrough", function () {
		                		        audio.play();
		                		        setTimeout(function(){
		                		        	$("#progressbar").width(progress+"%");
		                		        	audio.pause();
		                		        },
		                		        2000);
		                		    }, false);
	                			}, time);
			                	/* if(k == (len -1)) {
			                		$('#start').prop('disabled', false);
			                	} */
			                	time += 2000;
			                	apl_activity = v.activity_id;
			                	apl_level = v.activity_level;
			                	$("#act_level").html(apl_level);
			                });
			            },
			            error: function(result) {
			                alert('error');
			            }
			        });
			    });
			    
			    
			});
			
		</script>