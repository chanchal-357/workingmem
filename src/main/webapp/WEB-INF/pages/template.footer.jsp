 <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>Working Memory</p>
                </div>
                <div class="col-sm-6 text-right">
                  <p>Design by <a href="#" class="external">Bootstrapious</a></p>
                </div>
              </div>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <%-- <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-validation/jquery.validate.min.js"></script>
    <%-- <script src="${pageContext.request.contextPath}/resources/js/charts-home.js"></script> --%>
    <!-- Main File-->
    <script src="${pageContext.request.contextPath}/resources/js/front.js"></script>
    <!-- Material Date picker -->
    <script src="${pageContext.request.contextPath}/resources/js/gijgo.min.js" type="text/javascript"></script>

    <script type="text/javascript">
		/* $(document).ready(function() {
			$('#'+'${mainmenu}').addClass("active");
		}); */
		$('.date-field').datepicker({
	    	showOtherMonths: true, 
	    	format: 'dd/mm/yyyy'
	    });
	</script>
	
  </body>
</html>