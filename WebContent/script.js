document.getElementById("txtEmail").addEventListener("blur", checkUser, true);

function checkUser() {
	if (document.getElementById("txtEmail").checkValidity()) {
		httpRequest = new XMLHttpRequest();
		httpRequest.onreadystatechange = checkUserAjax;

		httpRequest.open("GET", "checkUser.jsp?user="
				+ document.getElementById("txtEmail").value, true);
		httpRequest.send();
	}
}

function checkUserAjax() {
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {
		if (httpRequest.responseText.trim() == "true") {
			document.getElementById("lblCheckUser").innerHTML = "Username available";
		} else {
			document.getElementById("lblCheckUser").innerHTML = "Username not available";
			document.getElementById("txtEmail").value = "";
		}
	} else {
		document.getElementById("lblCheckUser").innerHTML = "Processing";
	}
}