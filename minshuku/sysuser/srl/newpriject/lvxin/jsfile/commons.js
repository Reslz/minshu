var base_path = "http://localhost:8080/OurProject"

/*模态框的登陆*/
function login() {
	var email = $("#email").val();
	var password = $("#password").val();
	$.post(base_path + "/login", {
		email: email,
		password: password
	}, function(data) {
		if(data.length != 0) {
			alert("欢迎登陆名树");
			$('#myModal').modal('hide');
			window.location.reload();			
			window.localStorage.setItem("username",data.username);
			window.localStorage.setItem("img",data.img);
			window.localStorage.setItem("uid", data.uid);
			window.localStorage.setItem("islogin", "1");
		} else {
			alert("请仔细核对邮箱密码 ^-^");
		}

	});
}

/*注册*/
function regist() {
	var email1 = $("#email1").val();
	var registpassword = $("#password1").val();
	var newpassword = $("#repassword").val();
	if(email1 == "" || registpassword == "" || newpassword == "") {
		alert("请认真填写信息")
	} else if(registpassword != newpassword) {
		alert("两次密码不一致");
	} else if(1 == 1) {
		$.post(base_path + "/check", {
			email: email1
		}, function(data) {
			if(data != "") {
				alert("该邮箱已被注册");
			} else {
				$.post(base_path + "/regist", {
					email: email1,
					password: registpassword
				}, function(data) {
					if(data == 1) {
						alert("注册成功^-^");
						window.location.href = "index.html";
					} else {
						alert("注册失败");
					}
				})
			}

		})
	}

}