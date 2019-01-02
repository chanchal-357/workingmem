$(function(){
	/*setTimeout(function(){
		alert("hi, chan!");
	}, 1000);*/
});

function loadDemo(actv_id) {
	$('#start').prop('disabled', true);
	$('#levelref').attr('data-toggle','');
	$.ajax({
		type: "GET",
		url: "/demo_activity",
		data: {activity_id : actv_id},
		success: function(result) {
			syncActivityFunction(result, true).then(function(rslt){
				console.log("Return from syncActivity: " + rslt);
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

function syncActivityFunction(result, is_demo) {
	var dfrd1 = $.Deferred();
	var time = 1000;
	var progress = 0;
	$.each(result, function(k, v) {
		progress = is_demo ? 0 : v.levelCompletion;
		setTimeout(function(){
			$("#progressbar").width(progress+"%");
			var audioUrl = "resources/audio/" + v.appObject.audio_title;
			var name_th = v.appObject.name_th;
			playAudio(audioUrl, 1200, name_th, blankObjectName);
			// Activating buttons
			 if ((result.length == (k + 1))) {
				 activateBtns(800 * result.length);
			 }
			
		}, time);
		time += 1200;
		dfrd1.resolve(v.activity_level+"|"+v.level_round);
	});
	return dfrd1.promise();
}

function resetModalMsg() {
	$('#message').removeClass('alert-success');
	$('#message').removeClass('alert-danger');
	$("#message").html('');
}

function playAudio(audioUrl, time, name_th, callback) {
	$("#object_name").html(name_th);
	var audio = document.createElement("audio");
	audio.src = audioUrl;
	audio.addEventListener("canplaythrough", function () {
		audio.play();
		setTimeout(function(){
			audio.pause();
			if (typeof(callback) == 'function') {
		       callback();
		    }
		},
		time);
	}, false);
}

function displayImage(imgUrl, time, callback) {
	setTimeout(function(){
		$("#bckImg").css("background-image", "url("+imgUrl+")");
		$("#img_div").css('display', 'block');
		$("#bckImg").css('display', 'block');
		if (typeof(callback) == 'function') {
	       callback();
	    }
	}, time);
}

function blankObjectName() {
	var time = 1000;
	setTimeout(function(){
		$("#object_name").html("");
	}, time);
}

function hideImage() {
	var time = 1000;
	setTimeout(function(){
		$("#bckImg").css('background-image', 'none');
	    $("#bckImg").css('display', 'none');
	    $("#img_div").css('display', 'none');
	}, time);
}

function activateBtns(time) {
	setTimeout(function(){
		$('#start').prop('disabled', false);
		$("#start").focus();
		$('#demo').prop('disabled', false);
		$('#levelref').attr('data-toggle','modal');
	}, time);
}

function timeBreak(time) {
	setTimeout(function(){
		console.log("Pausing for: " + time + " duration!");
	}, time);
}

/*
 function handlerName(event) {
  alert(event.data.msg);
}

$(document).ready(function(){
  $("p").on("click", {msg: "You just clicked me!"}, handlerName);
  var param_obj = {data : {msg: "Hello"}}; 
  handlerName(param_obj);
});

 */
