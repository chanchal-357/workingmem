$(document).ready(function() { 
	
	first("vartolat", "vartolon", function(distance) {
	   console.log("From 1st method return "+distance);
	   second(third);
	});
	
});

function first(tolat, tolon, callback) {
	distance = 10;
	setTimeout(function(){
		console.log("1st getting called!");
		if (typeof(callback) == 'function') {
	       callback(distance);
	    }
	}, 3000);
}

function second(callback) {
	setTimeout(function(){
		console.log("2nd getting called!");
		if (typeof(callback) == 'function') {
	       callback();
	    }
	}, 2000);
}

function third() { 
	console.log("3rd getting called!");
}
