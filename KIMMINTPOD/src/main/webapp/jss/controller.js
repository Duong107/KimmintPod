var app = angular.module("AdminApp", ['ngCookies']);
app.controller("Adminpage", function($scope, $http, $window, $cookies) {
	$http.get("/API/ListAccount").then(function(response) {
		$scope.$parent.listUser = response.data;
	});
	$http.get("/API/ListCartpuchases").then(function(response) {
		$scope.$parent.ListC = response.data;
	});
	$http.get("/API/ListBrand").then(function(response) {
		$scope.$parent.brlist = response.data;
	});
	$http.get("/API/ListProduct").then(function(response) {
		$scope.$parent.listprod = response.data;
	});
	$scope.Logout = function() {
		$http.get("/API/LogOut").then(function() {
			alert("Đăng Xuất Thành Công!");
			$window.location = "/Home/Login";
		});
	}
	$scope.edit = function(so) {
		$scope.$parent.index = so;
		$scope.$parent.stu = angular.copy($scope.$parent.listUser[so]);
		if ($scope.$parent.stu.admin) {
			document.getElementById('tcheck').checked = "true";
		}
		else {
			document.getElementById('tcheck2').checked = "true";
		}
	}
	$scope.editp = function(so) {
		$scope.$parent.index = so;
		$scope.$parent.p = angular.copy($scope.$parent.listprod[so]);
	}
	$scope.update = function() {
		if (document.getElementById('tcheck').checked) {
			$scope.$parent.stu.admin = true
		}
		else {
			$scope.$parent.stu.admin = false;
		}
		var e = $scope.stu;
		var url = "/API/UpdateAccount2?u=" + e.username + "&fn="
			+ e.fullname + "&pas=" + e.password + "&ph=" + e.phoneNumber + "&email=" + e.email + "&lo=" +
			e.location + "&ava=" + e.avatar + "&role=" + e.admin;
		$http.get(url
		).then(function(response) {
			if (response.data) {
				alert("Cập Nhật Thông Tin Thành Công!");
			}
			else {
				alert("Lỗi!Cập Nhật Thông Tin Không Thành Công!");
			}
			$window.location = "/admin/Page?ref=AccountPage";
		});
	}
	$scope.delete = function(so) {
		$scope.$parent.index = so;
		$scope.$parent.stu = angular.copy($scope.$parent.listUser[so]);
		if ($scope.$parent.stu.username != "admin") {
			$http.get("/API/DeleteAccount?u=" + $scope.$parent.stu.username
			).then(function(response) {
				if (response.data) {
					alert("Xóa User Thành Công!");
				}
				else {
					alert("Lỗi!Xóa User Không Thành Công!");
				}
				$window.location = "/admin/Page/AccountPage";
			});
		}
		else {
			alert("Lỗi!Xóa Không Thể Xóa ADMIN!");
		}
	}
	$scope.deletep = function(so) {
		$scope.$parent.index = so;
		$scope.$parent.p = angular.copy($scope.$parent.listprod[so]);
		$http.get("/API/DeleteProd?p=" + $scope.$parent.p.id_Pro
		).then(function(response) {
			if (response.data) {
				alert("Xóa Product Thành Công!");
			}
			else {
				alert("Lỗi!Xóa Product Không Thành Công!");
			}
			$window.location = "/admin/Page/ProductPage";
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
	$scope.groupBy = function(v) {
		if ($scope.keyword == "true") {
			$scope.keyword = "false";
		}
		else {
			$scope.keyword = "true";
		}
	}
});