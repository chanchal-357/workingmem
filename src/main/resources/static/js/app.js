function validate() {
	var username = document.getElementById("username").value;
	if (username == '') {
		alert('Please enter a valid username.');
		return false;
	} else {
		return true;
	}
}