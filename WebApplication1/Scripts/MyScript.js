function rememberEmail() {
	if (typeof (Storage) !== "undefined") {
		localStorage.setItem('EmailTextBox', document.getElementById("MainContent_Main_EmailTextBox").value);
	}
	else {
		document.getElementById("EmailTextBox").value = "Sorry, your browser does not support web storage.";
	}
}

function rememberMessage() {
	if (typeof (Storage) !== "undefined") {
		localStorage.setItem('MessageTextBox', document.getElementById("MainContent_Main_MessageTextBox").value);
	}
	else {
		document.getElementById("MessageTextBox").value = "Sorry, your browser does not support web storage.";
	}
}

window.onload = function retrieve() {
	if (typeof (Storage) !== "undefined") {
		if (localStorage.EmailTextBox) {
			document.getElementById("MainContent_Main_EmailTextBox").value = localStorage.EmailTextBox;
		}
		if (localStorage.MessageTextBox ) {
			document.getElementById("MainContent_Main_MessageTextBox").value = localStorage.MessageTextBox;
		}
	}
}