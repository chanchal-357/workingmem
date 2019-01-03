var apl_level = undefined;
var lvl_round = undefined;
			
$(function(){
	
	apl_level = $("#app_level").val();
	lvl_round = $("#lvl_round").val();
	
	$("#resetlevel").on('click', refreshLevel);
	
	$('#levelModal').on('hidden.bs.modal', function (e) {
		resetModalMsg();
	});
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

function loadActivity(actv_id) {
	$.ajax({
		type: "GET",
		cache: false,
		url: "/start_activity",
		data: {activity_id : actv_id, app_level : apl_level, level_round : lvl_round },
		success: function(result) {
			syncActivityFunction(result, false).then(function(rslt){
				var arr = rslt.split("|");
				apl_level = arr[0];
				lvl_round = arr[1];
				
				$("#act_level").html(apl_level);
				$("#level_round").html(lvl_round);
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

function refreshLevel() {
	resetModalMsg();
	var level = $("#acty_level").val();
	if(level != "" && parseInt(level) > 0) {
		apl_level = level;
		lvl_round = 0;
		$("#acty_level").val('');
		$('#message').addClass('alert-success');
		$("#message").html('Level refreshed successfully!');
	}
	else {
		$('#message').addClass('alert-danger');
		$("#message").html('Invalid Level selected!');
	}
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

function deactivateBtns() {
	$("#start").prop("value", "Next")
	$('#start').prop('disabled', true);
	$('#demo').prop('disabled', true);
	$('#levelref').attr('data-toggle','');
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
