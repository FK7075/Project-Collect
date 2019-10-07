var u_location = "http://localhost:8984/project-collect/user/";
var a_location = "http://localhost:8984/project-collect/admfkxfl/";

function login() {
	var user = $("#user").val();
	var pass = $("#password").val();
	var check = $("#checkbox").prop("checked");
	if(user == "") {
		warn("您没有输入用户名！");
		localStorage.setItem("isLogin", "0");
		return;
	}
	if(pass == "") {
		warn("您没有输入密码！");
		localStorage.setItem("isLogin", "0");
		return;
	}
	$.ajax({
		type: "post",
		url: u_location + "login",
		async: true,
		data: {
			"user": user,
			"password": pass,
			"checkbox": check,
		},
		xhrFields: {
			withCredentials: true
		},
		success: function(data) {
			if(1 == data) {
				succe("登录成功！");
				setTimeout(function() {
					succe("正在跳转...");
				}, 2000);
				localStorage.setItem("isLogin", "1");
				window.location.href = "index.html";
			} else {
				warn("用户名与密码不匹配!");
				localStorage.setItem("isLogin", "0");
			}
		}
	});

}

function loginLoad() {
	$.ajax({
		type: "post",
		url: u_location + "loginLoad",
		async: true,
		xhrFields: {
			withCredentials: true
		},
		success: function(data) {
			var user = JSON.parse(data);
			$("#user").attr("value", user.user);
			$("#password").attr("value", user.pass);
			if(user.user != "" || user.pass != "") {
				$("#checkbox").attr("checked", "checked")
			}
		}
	});
}

function warn(info) {
	$("#myInfo").html("");
	$("#myInfo").html("<div id='myAlert2' class='alert alert-warning'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>警告！</strong>" + info + "</div>");
}

function succe(info) {
	$("#myInfo").html("");
	$("#myInfo").html("<div id='myAlert' class='alert alert-success'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>成功！</strong>" + info + "</div>");
}

function loginOff(){
	localStorage.setItem("isLogin", "0");
	window.location.href = "index.html";
}
