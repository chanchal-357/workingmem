  
        <jsp:include page="template.head.jsp" />
        
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
            </ul>
          </div>
          <!-- Client Section -->
          <section class="client no-padding-top">
            <div class="container-fluid">
              <div class="row">
                <!-- Work Amount  -->
                <div class="col-lg-4">
                	<div class="client card">
                    <div class="card-body text-center">
                      <div class="client-avatar"><img src="resources/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Client Profile -->
                <div class="col-lg-4">
                  <div class="client card">
                    <div class="card-body text-center">
                      <div class="client-avatar"><img src="resources/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                      <!-- <div class="client-info">
                        <div class="row">
                          <div class="col-12"><strong>20</strong><br><small>Photos</small></div>
                        </div>
                      </div> -->
                    </div>
                  </div>
                </div>
                <!-- Total Overdue -->
                <div class="col-lg-4">
                	<div class="client card">
                    <div class="card-body text-center">
                      <div class="client-avatar"><img src="resources/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
               <div class="col-lg-4">
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
                <div class="col-lg-4">
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
               <div class="col-lg-4">
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
                <div class="col-lg-4">
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
                <div class="col-lg-4">
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
                <div class="col-lg-4">
                   <div class="client card">
                    <div class="card-body text-center">
	                  <div class="flip-container">
					    <div class="flipper">
					        <div class="front artist-1">
					            <!-- front content -->
					        </div>
					        <div class="back backImg" id="bckImg9">
					        </div>
					    </div>
						</div>
					</div>
				  </div>
                </div>
				
				<div class="form-group row">       
                  <div class="col-sm-12 offset-sm-3">
                    <input type="button" id="start" value="Start" autofocus class="btn btn-primary pull-right" >
                  </div>
                </div>
                        
              </div>
            </div>
          </section>
         <jsp:include page="template.footer.jsp" />
         
         <script type="text/javascript">
			$(document).ready(function() {  
				$('.flip-container .flipper').click(function() {
					$(this).closest('.flip-container').toggleClass('hover');
				    $(this).css('transform, rotateY(180deg)');
				});		
				
				$("#start").on('click', changeImg);
				
				function changeImg() {
					var imgUrl = "resources/img/avatar-8.jpg";
					console.log("Image Url: " + imgUrl);
					$('#bckImg9').css("background-image", "url("+imgUrl+")");  
				}
				
			});
			</script>