 <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>Working Memory</p>
                </div>
                <div class="col-sm-6 text-right">
                   <p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Bootstrapious</a>
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
		$(document).ready(function() {
			$('#'+'${mainmenu}').addClass("active");
		
			var lang = '${pageContext.response.locale}';
			changeLang(lang, false);
		});
		
		/* $('.date-field').datepicker({
	    	showOtherMonths: true, 
	    	format: 'dd/mm/yyyy'
	    }); */
	    
	    
	    function changeLang(lang, isChange) {
	    	var langSuffix = "en";
	    	var img_path = "resources/img/flags/16/";
	    	if(lang === 'th') {
	    		langSuffix = "th";
	    		$("#selLangImg").attr("src",img_path+"TH.png");
	    		$("#unselLangImg").attr("src",img_path+"GB.png");
	    		$("#selLangTxt").html('Thai');
	    		$("#unselLangTxt").html('English');
	    		$("#unselLang").attr("onClick","changeLang('en', true)");
	    	}
	    	else {
	    		$("#selLangImg").attr("src",img_path+"GB.png");
	    		$("#unselLangImg").attr("src",img_path+"TH.png");
	    		$("#selLangTxt").html('English');
	    		$("#unselLangTxt").html('Thai');
	    		$("#unselLang").attr("onClick","changeLang('th', true)");
	    	}
	    	if(isChange === true){
	    		var path_prefix = window.location.href;
	    		var nw_path_prefix  = path_prefix.split("?");
	    		window.location.replace(nw_path_prefix[0]+'?lang='+langSuffix);
	    	}
    			
	    } 
	</script>
	
  </body>
</html>