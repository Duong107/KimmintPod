var login = false;
function AATNC() {
	document.getElementById('TT').style.display = "block";
}
function showform1() {
	document.getElementById('signup').style.display = "block";
	document.getElementById('signin').style.display = "none";

}
function showform2() {
	document.getElementById('signup').style.display = "none";
	document.getElementById('signin').style.display = "block";
}
function opencart() {
	document.getElementById('carthover').style.display = "block";
}
function closecart() {
	document.getElementById('carthover').style.display = "none";
}
var app = angular.module("MyApp", ['ngCookies']);
app.controller("Mycontroller", function($scope, $http, $cookies, $interval) {
	$scope.islogin = $cookies.get("IsLogin");
	$http.get("/API/ListProduct").then(function(response) {
		$scope.products = response.data;
		document.getElementById('countproduct').innerText = $scope.products.length;
	});
	$scope.selectValue = "";
	$scope.changeCount = function(s) {
		$scope.selectValue = s;
	}
	var allitemlength = document.getElementById('countproduct').value;
	$scope.numpage = 0;
	$scope.changepage = function(c) {
		$scope.numpage = ($scope.numpage + c);
		console.log($scope.numpage)
		if ($scope.numpage < 0) {
			$scope.numpage = 0;
		}
		if ($scope.numpage > allitemlength) {
			$scope.numpage = allitemlength - 8;
		}
	}
	$scope.searchText = "";
	$http.get("/API/ListCartBy").then(function(response) {
		$scope.Carts = response.data;
		$scope.total = 0;
		for (var i = 0; i < $scope.Carts.length; i++) {
			$scope.total += $scope.Carts[i].price_Pro * $scope.Carts[i].qty_Pro;
		}
	});
});
var app = angular.module("Blogapp", ['ngCookies']);
app.controller("app", function($scope, $http, $cookies) {
	$scope.islogin = $cookies.get("IsLogin");
	$http.get("/API/ListBLOG").then(function(response) {
		$scope.blogs = response.data;
		console.log($scope.blogs);
	});
	var us = $cookies.get("us");
	$http.get("/API/ListCartBy?u=" + us).then(function(response) {
		$scope.Carts = response.data;
		$scope.total = 0;
		for (var i = 0; i < $scope.Carts.length; i++) {
			$scope.total += $scope.Carts[i].price_Pro * $scope.Carts[i].qty_Pro;
		}
	});
	$scope.islogin = $cookies.get("IsLogin");
});
var app = angular.module("Home", ['ngCookies']);
app.controller("Homcontroller", function($scope, $http, $cookies, $interval) {
	$http.get("/API/ListBLOG").then(function(response) {
		$scope.blogs = response.data;
		console.log($scope.blogs);
	});
	$http.get("/API/ListProduct").then(function(response) {
		$scope.products = response.data;
	});

	$scope.islogin = $cookies.get("IsLogin");
	var us = $cookies.get("us");
	$http.get("/API/ListCartBy?u=" + us).then(function(response) {
		$scope.Carts = response.data;
		$scope.total = 0;
		for (var i = 0; i < $scope.Carts.length; i++) {
			$scope.total += $scope.Carts[i].price_Pro * $scope.Carts[i].qty_Pro;
		}
	});
});
function enablebtn() {
	var vla = document.getElementsByName('checks');
	for (let index = 0; index < vla.length; index++) {
		if (vla[index].checked == true) {
			document.getElementById('hihi').disabled = false;
		}
		else {
			document.getElementById('hihi').disabled = true;
		}
	}
}
function addtocart(p) {
	$.ajax({
		type: "GET",
		url: "/API/AddCart?p=" + p.value + "&u=" + getCookie("us") + "&qty=1",
		success: function(data) {
			alert("Thêm Vào Giỏ Hàng Thành Công!");
		},
		error: function(e) {
			alert("Thêm Vào Giỏ Hàng Không Thành Công!/n" + e);
		}
	});
}
function updatecartdown(a) {
	a.parentNode.querySelector('input[type=number]').stepDown();
	var qty = a.parentNode.querySelector('input[type=number]').value;
	var id = a.value;
	if (qty != 0) {
		$.ajax({
			type: "GET",
			url: "/API/UpdateQTYCart?p=" + id + "&qty=" + qty
		});
	}
	else {
		window.location.href = "/Home/Cart/Delete?p=" + id;
	}
}
function updatecartup(a) {
	a.parentNode.querySelector('input[type=number]').stepUp();
	var qty = a.parentNode.querySelector('input[type=number]').value;
	var id = a.value;
	$.ajax({
		type: "GET",
		url: "/API/UpdateQTYCart?p=" + id + "&qty=" + qty
	});
}
function getCookie(cname) {
	let name = cname + "=";
	let decodedCookie = decodeURIComponent(document.cookie);
	let ca = decodedCookie.split(';');
	for (let i = 0; i < ca.length; i++) {
		let c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}
	return "";
}
var app = angular.module("userprofile", ['ngCookies']);
app.controller("user", function($scope, $http, $cookies, $window) {
	var us = $cookies.get("us");
	var ps = $cookies.get("pw");
	$http.get("/API/GetAccount?u=" + us + "&p=" + ps).then(function(response) {
		$scope.Account = response.data;
	});
	$scope.islogin = $cookies.get("IsLogin");
	$scope.logout = function() {
		$http.get("/API/LogOut").then(function() {
			alert("Đăng Xuất Thành Công!");
			$window.location = "/Home/Login";
		});
	}
	$http.get("/API/ListCartbyu").then(function(response) {
		$scope.$parent.ListU = response.data;
	});
	$scope.updateuser = function() {
		$http.get("/API/UpdateAccount?u=" + user.username + "&fn=" + user.fullname + "&ph=" + user.phoneNumber + "&email=" + user.email + "&lo=" + user.location + "&ava=" + user.avatar + "&role=false", formData).then(function() {
			alert("Cập Nhật Thành Công!");
			$window.location = "/Home/User";
		});
	}
		$scope.sortBy = function(v) {
		if ($scope.selectValue == v) {
			$scope.selectValue = '-' + v;
		}
		else {
			$scope.selectValue = v;
		}
	}
	var us = $cookies.get("us");
	$http.get("/API/ListCartBy?u=" + us).then(function(response) {
		$scope.Carts = response.data;
		$scope.total = 0;
		for (var i = 0; i < $scope.Carts.length; i++) {
			$scope.total += $scope.Carts[i].price_Pro * $scope.Carts[i].qty_Pro;
		}
	});
	$scope.changepass = function() {
		if ($scope.newpass == $scope.cfnewpass && $scope.oldpass != null && $scope.newpass != null && $scope.cfnewpass != null) {
			$http.get("/API/ChangePass?pass=" + $scope.oldpass + "&newpass=" + $scope.newpass).then(function(response) {
				if (response.data) {
					alert("Đổi Mật Khẩu Thành Công!");
				}
				else {
					alert("Lỗi! Đổi Mật Khẩu Không Thành Công");
				}
			});
		}
		else {
			alert("Lỗi! Vui Lòng Nhập Đầy Đủ Thông Tin");
		}
	}
});
var app = angular.module("myCart", ['ngCookies']);
app.controller("cart", function($scope, $http, $cookies) {
	var us = $cookies.get("us");
	$http.get("/API/ListCartBy?u=" + us).then(function(response) {
		$scope.Carts = response.data;
		$scope.total = 0;
		for (var i = 0; i < $scope.Carts.length; i++) {
			$scope.total += $scope.Carts[i].price_Pro * $scope.Carts[i].qty_Pro;
		}
	});
	$scope.islogin = $cookies.get("IsLogin");
});
var app = angular.module("Login", ['ngCookies']);
app.controller("LoginC", function($scope, $http, $window, $cookies) {
	$scope.islogin = $cookies.get("IsLogin");
	$scope.login = function() {
		var uss = document.getElementById("us2").value;
		var pwss = document.getElementById("pw").value;
		var check = "false";
		console.log(uss + ":" + pwss);
		var vla = document.getElementsByName('remember');
		for (let index = 0; index < vla.length; index++) {
			if (vla[index].checked == true) {
				check = vla[index].value;
			}
		}
		$http.get("/API/CheckAccount?u=" + uss + "&p=" + pwss + "&r=" + check).then(function(response) {
			if (response.data == true) {
				alert("Đăng Nhập Thành Công!");
				login = true;
				$window.location = "/Home";
			}
			else {
				alert("Lỗi! Đăng Không Nhập Thành Công!");
			}
			console.log(response.data);
		});
	}
	$scope.signupp = function() {
		let us1 = document.getElementById("us1").value;
		let pw1 = document.getElementById("pw1").value;
		let pw2 = document.getElementById("pw2").value;
		if (pw1 == pw2 && pw1 != "" && pw2 != "" && us1 != "") {
			$http.get("/API/Register?u=" + us1 + "&p=" + pw1).then(function(response) {
				if (response.data == true) {
					alert("Đăng Ký Thành Công!");
					$window.location = "/Home/Login";
				}
				else {
					alert("Đăng Ký Không Thành Công!");
				}
				console.log(response.data + "avas");
			});
		}
	}
	$scope.SendCaptha = function() {
		$http.get("/Authentication/SendCaptha?mail=" + $scope.email).then(function(response) {
			if (response.data == true) {
				alert("Đã gửi mã xác nhận mật khẩu về tài khoản!");
			}
			else {
				alert("Lỗi không thành công do email này không có trong hệ thống!");
			}
		});
	}
	$scope.CheckCaptha = function() {
		$http.get("/Authentication/CheckCaptha?mail=" + $scope.email + "&CapthaCode=" + $scope.code).then(function(response) {
			if (response.data == true) {
				alert("Đã gửi mật khẩu mới về tài khoản!");
			}
			else {
				alert("Lỗi không thành công!");
			}
		});
	}
	
});

var app = angular.module("ProductInfor", ['ngCookies']);
app.controller("Product", function($scope, $http, $window, $cookies) {
	var pr = document.getElementById('prod').value;
	$http.get("/API/GetProduct?p=" + pr).then(function(response) {
		$scope.p = response.data
		document.getElementById('title').innerText = $scope.p.name_Pro + " | KimmintPod"
	});
	$scope.islogin = $cookies.get("IsLogin");
});
function pay() {
	let checkboxes = document.querySelectorAll('input[name="cate"]');
	for (var i = 0, n = checkboxes.length; i < n; i++) {
		if (checkboxes[i].checked) {
			$.ajax({
				type: "GET",
				url: "/API/Pay?p=" + checkboxes[i].value,
				success: function(data) {
					if (data) {
						alert("Thanh Toán Thành Công!");
					}
					else {
						alert("Lỗi!");
					}
					window.location.href = "/Home/Cart/";
				}
			});
		}
	}
}
