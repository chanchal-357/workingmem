		<%@ page language="java" contentType="text/html; charset=UTF-8"%>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<jsp:include page="template.head.jsp" />
	
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header no-padding-top">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Test</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index"><spring:message code="menu.home" /></a></li>
              <li class="breadcrumb-item active"><spring:message code="menu.misc" /></li>
            </ul>
          </div>
          
         <!-- Forms Section-->
         <style type="text/css">
			#soundmanager-debug {
			 /* SM2 debug container (optional, use or customize this as you like - makes in-browser debug output more useable) */
			 position:fixed;_position:absolute;right:1em;bottom:1em;width:50em;height:18em;overflow:auto;background:#fff;margin:1em;padding:1em;border:1px solid #999;font-family:monaco,"lucida console",verdana,tahoma,"sans serif";font-size:x-small;line-height:1.5em;opacity:0.9;filter:alpha(opacity=90);
			}
		</style>
		<!-- some CSS for this demo page, not required for SM2 -->
		<link rel="stylesheet" href="resources/template.css" />
		
		<!-- SM2 BAREBONES TEMPLATE: START -->
		
		<!-- include SM2 library (see builds for optimized versions) -->
		<script type="text/javascript" src="resources/soundmanager2.js"></script>
		
		<!-- configure SM2 for your use -->
		<script type="text/javascript">
			soundManager.setup({
			  // location: path to SWF files, as needed (SWF file name is appended later.)
			  url: '../../swf/',
			  // optional: version of SM2 flash audio API to use (8 or 9; default is 8 if omitted, OK for most use cases.)
			  // flashVersion: 9,
			  // optional: use Flash for MP3/MP4/AAC formats, even if HTML5 support present. useful if HTML5 is quirky.
			  // preferFlash: true
			  // use soundmanager2-nodebug-jsmin.js, or disable debug mode (enabled by default) after development/testing
			  // debugMode: false,
			  // good to go: the onready() callback
			  onready: function() {
			    // SM2 has started - now you can create and play sounds!
			    var mySound = soundManager.createSound({
			      id: 'aSound', // optional: an id will be generated if not provided.
			      url: 'resources/audio/A.m4a'
			      //url: 'resources/click-high.mp3'
			      // onload: function() { console.log('sound loaded!', this); }
			      // other options here..
			    });
			    mySound.play();
			  },
			  // optional: ontimeout() callback for handling start-up failure, flash required but blocked, etc.
			  ontimeout: function() {
			    // Hrmm, SM2 could not start. Missing SWF? Flash blocked? Show an error, etc.?
			    // See the flashblock demo when you want to start getting fancy.
			  }
			});
		</script>

		<!-- SM2 BAREBONES TEMPLATE: END -->
		
		<script type="text/javascript">
		// helper function for this page only, demo purposes
		function checkDomain() {
		  if (!document.domain && !this.href.match(/index/i)) {
		    this.href=this.href+'index.html';
		  }
		}
		</script>


		<div style="max-width:75em">
			
			<h2 id="commented-template">Template Code: Commented Version</h2>
			
			<pre class="block"><code><span><span>&lt;!-- include SM2 library (see <a href="../../doc/getstarted/#basic-inclusion" title="SoundManager 2: Script build versions" onclick="checkDomain()">builds</a> for optimized versions) --&gt;</span></span>
			&lt;script type="text/javascript" src="<em><em>/path/to/soundmanager2.js</em></em>"&gt;&lt;/script&gt;
			
			<span><span>&lt;!-- configure SM2 for your use --&gt;</span></span>
			&lt;script type="text/javascript"&gt;
			
			soundManager.setup({
			
			 <span><span>// location: path to SWF files, as needed (SWF file name is appended later.)</span></span>
			  url: '<em><em>/path/to/swf-files/</em></em>',
			 <span><span>// optional: version of SM2 flash audio API to use (8 or 9; default is 8 if omitted, OK for most use cases.)
			  // flashVersion: <em><em>9</em></em>,
			  // use soundmanager2-nodebug-jsmin.js, <i>or</i> disable debug mode (enabled by default) after development/testing
			  // debugMode: <em><em>false</em></em>,
			  // good to go: the onready() callback</span></span>
			  onready: function() {
			    <span><span>// SM2 has started - now you can create and play sounds!</span></span>
			    var mySound = soundManager.createSound({
			      id: '<em><em>aSound</em></em>', <span><span>// optional: provide your own unique id</span></span>
			      url: '<em><em>/path/to/an.mp3</em></em>'
			      <span><span>// onload: function() { console.log('sound loaded!', this); }
			      // other options here..</span></span>
			    });
			    mySound.play();
			  },
			
			  <span><span>// optional: ontimeout() callback for handling start-up failure</span></span>
			  ontimeout: function() {
			    <span><span>// Hrmm, SM2 could not start. Missing SWF? Flash blocked? No HTML5 audio support? Show an error, etc.?
			    // See the flashblock demo when you want to start getting fancy.</span></span>
			  }
			
			});
			
			&lt;/script&gt;</code></pre>
			
			 <h2 id="html5-notes">HTML5 Support Notes</h2>
			 <p>By default, SM2 will use 100% HTML5 mode where supported. If you want to override this, specify <code>preferFlash: true</code> and Flash will be used (if present) for playing MP3 and MP4 (AAC) formats.</p>
			
			 <h2 style="margin-top:1em">Disabling debug output</h2>
			 <p>SoundManager 2 will write debug output via <code>console.log()</code> if available, by default. To disable it, simply specify <code>debugMode: false</code>.</p>
			 <p>You can also write HTML-based debug output to the DOM via <code>consoleOnly: false</code> and/or <code>useConsole: false</code>.</p>
			
			 <h2>Troubleshooting ("failed to start": Viewing offline, missing SWF, flash blockers etc.)</h2>
			
			 <p>Once development is finished, you can also use the "minified" (down to ~8% of original size with gzip!) version of SM2, which has debug output and comments removed for you: <a href="../../script/soundmanager2-nodebug-jsmin.js">soundmanager2-nodebug-jsmin.js</a>. Serve with gzip compression wherever possible for best bandwidth savings.</p>
			 
		</div>

         
        <jsp:include page="template.footer.jsp" />
