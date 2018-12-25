  		
        <jsp:include page="template.head.jsp" />
        <style>
        	.card-body {
			    padding: 0.75rem !important;
			}
        	.page-header {
			  background: #fff;
			  padding: 10px;
			  -webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
			  box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
			  position: relative;
			  z-index: 8;
			}
        </style>
        
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Activity 3</h2>
            </div>
          </header>
           <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Activity 3</li>
              <label class="col-sm-6 form-control-label">Level <span id="act_level">  </span> Round <span id="level_round">  </span></label>
            </ul>
          </div>
           <div class="progress nopadding">
              <div role="progressbar" style="width: 0%; height: 5px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet" id="progressbar"></div>
            </div>
          <!-- Client Section -->
          <section class="client no-padding-top" style="padding-bottom: 10px;">
            <div class="container-fluid">
              <!-- <div class="row"> -->
              <div class="row justify-content-center">
                <div class="col-lg-3.5">
                	<div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg1">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                <div class="col-lg-3.5">
                	<div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg2">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                <div class="col-lg-3.5">
                	<div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg3">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                </div>
                <div class="row justify-content-center">
               <div class="col-lg-3.5">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg4">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                <div class="col-lg-3.5">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg5">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
               <div class="col-lg-3.5">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg6">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                </div>
                <div class="row justify-content-center">
                <div class="col-lg-3.5">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg7">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                <div class="col-lg-3.5">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					            <!-- front content -->
					        </div>
					        <div class="back backImg" id="bckImg8">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                <div class="col-lg-3.5">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					        </div>
					        <div class="back backImg" id="bckImg9">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
                </div>
				<div class="row col-lg-12">       
                  <div class="col-sm-12">
                    <input type="button" id="demo" value="Demo" class="btn btn-primary">
                    <input type="button" id="start" value="Start" autofocus class="btn btn-primary pull-right">
                  </div>
                </div>
                
                 <div class="form-group row" style="display:none;">
                 	<label class="col-sm-3 form-control-label">Reset Level</label>
                    <div class="col-sm-9">
						<input type="text" class="" id="rst_level" value="" />  
						<input type="button" id="refreshlevel" value="Reset" class="btn btn-primary pull-right" />                        
                    </div>
                 </div>
                 <input type="hidden" id="app_level" value="1" />
                 <input type="hidden" id="lvl_round" value="0" />    
                   
             <!--  </div> -->
            </div>
          </section>
         <jsp:include page="template.footer.jsp" />
         
         <script type="text/javascript">
			$(document).ready(function() {  
				
				setTimeout(function(){
					loadDemoActivity();
				}, 1000);
				
				$("#demo").on('click', loadDemoActivity);

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
						data: {activity_id : 3, app_level : apl_level, level_round : lvl_round },
						success: function(result) {
							
							syncImageFunction(result, false).then(function(rslt){
								var arr = rslt.split("|");
								apl_level = arr[0];
								lvl_round = arr[1];
								
								$("#act_level").html(apl_level);
								$("#level_round").html(lvl_round);
								
								setTimeout(function(){
									$('#start').prop('disabled', false);
									$("#start").focus();
									$('#demo').prop('disabled', false);
								}, 2200*(result.length));
								
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
			
			function loadDemoActivity() {
				$('#start').prop('disabled', true);
				$.ajax({
					type: "GET",
					cache: false,
					url: "/demo_activity",
					data: {activity_id : 3},
					success: function(result) {
						syncImageFunction(result, true).then(function(rslt){
							setTimeout(function(){
								$('#start').prop('disabled', false);
								$("#start").focus();
							}, 2200*(result.length));
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
			
			function displayImage(imgUrl, rndId) {
				var dfrd1= $.Deferred();
				var time = 1300;
				setTimeout(function(){
					$(rndId).css("background-image", "url("+imgUrl+")");
					$(rndId).closest('.flip-container').toggleClass('hover');
    				dfrd1.resolve(true);
    			}, time);
				return dfrd1.promise();
			}
			
			function syncImageFunction(result, isDemo) {
				var rndArr = getRandomIndex(result.length);
				var imgPrefix = "resources/image/";
				var dfrd1= $.Deferred();
            	var time = 700;
            	var progress = 0;
                $.each(result, function(k, v) {
                	progress = isDemo ? 0 : v.levelCompletion;
                	setTimeout(function(){
                		var imgUrl = imgPrefix + v.appObject.image_title;
                		$("#progressbar").width(progress+"%");
	                	var rndId = "#bckImg"+(isDemo ? rndArr[k] : v.round_order);
	                	//console.log("Random Id: " + rndId + ", Image url: " + imgUrl);
                		displayImage(imgUrl, rndId).then(function(rslt){
							setTimeout(function(){
								$(rndId).closest('.flip-container').toggleClass('hover');
							}, 1100);
						},
						function(err){
						  console.log('This is error message.');
						});
                		dfrd1.resolve(v.activity_level+"|"+v.level_round);
        			}, time);
                	time += 1700;
                });
                return dfrd1.promise();
			}
			
			function getRandomIndex(lngth) {
				var arr = []
				while(arr.length < lngth){
				    var r = Math.floor(Math.random()*9) + 1;
				    if(arr.indexOf(r) === -1) arr.push(r);
				}
				console.log("Random num: " + arr);
				return arr;
			}
			
			</script>