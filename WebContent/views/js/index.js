/**
 * index.js Danqing Zhao
 */
function loadXMLDoc(page) {
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "./views/"+page+".jsp", true);
	xmlhttp.send();
}

function addUser() {
	alert("this is a test.");
	 var form = document.forms[0];  
     form.action = "/CS580/user/addUser";  
     form.method="post";  
     form.submit();  
	
}