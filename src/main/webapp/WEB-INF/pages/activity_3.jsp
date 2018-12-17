  
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
                      <div class="client-avatar"><img src="resources/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
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
                      <div class="client-avatar"><img src="resources/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                	<div class="client card">
                    <div class="card-body text-center">
                      <div class="client-avatar"><img src="#" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                	<div class="client card">
                    <div class="card-body text-center">
                      <div class="client-avatar"><img src="#" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                	<div class="client card">
                    <div class="card-body text-center">
                      <div class="client-avatar"><img src="#" alt="..." class="img-fluid rounded-circle">
                        <div class="status bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="flip-container">
				    <div class="flipper">
				        <div class="front artist-1">
				            <!-- front content -->
				        </div>
				        <div class="back">
				            <p>You won</p>
				        </div>
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
			});
			</script>