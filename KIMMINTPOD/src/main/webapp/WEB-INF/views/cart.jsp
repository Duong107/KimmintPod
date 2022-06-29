<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>KimMint POD - Pod|Cart</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
<!-- angular js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-cookies.js"></script>
</head>

<body ng-app="myCart" ng-controller="cart">
	<!-- Topbar Start -->
	<div class="container-fluid bg-dark">
		<div class="row py-2 px-lg-5">
			<div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
				<div class="d-inline-flex align-items-center text-white">
					<small><i class="fa fa-phone-alt mr-2"></i>0867151745</small> <small
						class="px-3">|</small> <small><i
						class="fa fa-envelope mr-2"></i>work.voduong@gmail.com</small>
				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<a class="text-white px-2"
						href="https://www.facebook.com/nguyenduong.dev/"> <i
						class="fab fa-facebook-f"></i>
					</a> <a class="text-white px-2"
						href="https://twitter.com/nguyenduong_dev/"> <i
						class="fab fa-twitter"></i>
					</a> <a class="text-white px-2"
						href="https://www.instagram.com/nguyenduong.dev/"> <i
						class="fab fa-instagram"></i>
					</a> <a class="text-white pl-2"
						href="https://www.youtube.com/channel/UCJD3anwjzQxQmIGYCYaO4_w">
						<i class="fab fa-youtube"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid p-0">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
			<a href="/Home" class="navbar-brand ml-lg-3">
				<h1 class="m-0 display-5 text-uppercase text-primary">
					KIMMINT<i class="fas fa-leaf"></i>
				</h1>
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse" onclick="AATNC()">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between px-lg-3"
				id="navbarCollapse">
				<div class="navbar-nav m-auto py-0">
					<a href="/Home" class="nav-item nav-link "><i
						class="fas fa-home"></i> Home</a> <a href="/Home/About"
						class="nav-item nav-link "><i class="fas fa-info-circle"></i>
						About</a> <a href="/Home/Product" class="nav-item nav-link"><i
						class="fas fa-box"></i> Product</a> <a href="/Home/Blog"
						class="nav-link nav-item"><i class="fas fa-mail-bulk"></i>
						Blog</a> <a href="/Home/Contract" class="nav-item nav-link"><i
						class="fas fa-address-card"></i> Contact</a> <a type="button"
						class="p-2 nav-item nav-link collapse" id="TT"
						data-toggle="collapse" data-target="#user"> <i
						class="fas fa-user"></i> Account
					</a>
					<div class="collapse justify-content-between px-lg-3" id="user">
						<div class="navbar-nav m-auto py-0">
							<a href="/Home/User/Profile" class="nav-item nav-link"> <i
								class="fas fa-user"></i> User Profile
							</a> <a href="/Home/User/Cart" class="nav-item nav-link active">
								<i class="fas fa-shopping-cart"></i> Cart
							</a> <a href="/Home/Blog" class="nav-link nav-item text-warning"><i
								class="fas fa-key"></i> Change Password</a> <a href="/Home/Contract"
								class="nav-item nav-link text-danger"><i
								class="fas fa-sign-out-alt"></i>Sign-Out</a>
						</div>
						<button class="btn btn-primary py-2 px-4 d-none d-lg-block ">
							<i class="fas fa-shopping-cart"></i>CART
						</button>
						<a href=""
							class="btn btn-primary py-2 px-4 ml-2 d-none d-lg-block"
							id="login">LOGIN</a>
					</div>
				</div>
				<a href="/Home/Cart" class="btn py-2 px-4 d-none d-lg-block"
					onmouseenter="opencart()" onmouseleave="closecart()"><i
					class="fas fa-shopping-cart"></i>CART</a> <a ng-if="!islogin"
					href="/Home/Login"
					class="btn btn-primary py-2 px-4 ml-2 d-none d-lg-block" id="login">LOGIN</a>
				<a ng-if="islogin" href="/Home/User"
					class="btn btn-primary py-2 px-4 ml-2 d-none d-lg-block" id="user"><i
					class="fa fa-user"></i> USER</a>
			</div>
		</nav>
	</div>
	<!-- Navbar End -->
	<!-- BOX CART ON HOVER START-->
	<div class="col-3 rounded bg-secondary position-absolute collapse"
		id="carthover" style="right: 10px; box-shadow: 0 5px 5px; z-index: 1;">
		<h6 class="mt-3">
			<b class="float-start">Your Cart</b><b class="float-right">Total:
				{{total}}K</b>
		</h6>
		<hr class="mb-1">
		<!-- Item InCart -->
		<div
			class="d-flex justify-content-between align-items-center bg-light row items rounded mb-1"
			ng-repeat="x in Carts">
			<div class="d-flex flex-row">
				<img class="rounded border mr-3 ml-1" ng-src="{{x.image_Pro}}"
					width="60px" height="60px">
				<div class="">
					<span class="font-weight-bold d-block">{{x.name_Pro}}</span><span
						class="spec">{{x.nic_Pro}}% SaltNic</span>
				</div>
			</div>
			<div class="d-flex flex-row align-items-center">
				<span class="d-block">{{x.qty_Pro}}</span><span
					class="d-block ml-5 font-weight-bold mr-3">{{x.price_Pro}}</span>
			</div>
		</div>
		<!-- Item InCart -->
		<div class="align-items-center bg-light row items rounded mb-1">
			<b class="col-12 text-center">...</b>
			<p class="row m-auto">See More In Cart</p>
		</div>
		<!-- end Show your cart here -->
	</div>
	<!-- BOX CART ON HOVER END -->
	<section class="h-100" style="background-color: #eee;">
		<div class="container h-100 py-5">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="row m-auto position-relative">

					<div
						class="d-flex col-12 justify-content-between align-items-center mb-4">
						<h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
						<div>
							<p class="mb-0">
								<b>Total: {{total}}k</b>
							</p>
						</div>
					</div>
					<!--  -->
					<div class="card col-12 rounded-3 mb-4" ng-repeat="i in Carts">
						<div class="card-body p-4">
							<div
								class="row d-flex justify-content-between align-items-center">
								<div class="col-1">
									<input type="checkbox" class="text-primary" value="{{i.id_Pro}}" name="cate">
								</div>
								<div class="col-md-2 col-lg-2 col-xl-2">
									<img ng-src="{{i.image_Pro}}" class="img-fluid rounded-3"
										alt="Cotton T-shirt">
								</div>
								<div class="col-md-3 col-lg-3 col-xl-3">
									<p class="lead fw-normal mb-2">{{i.name_Pro}}</p>
									<p>
										<span class="text-muted">ML: {{i.ml_Pro}}</span> SaltNic:<span
											class="text-muted">{{i.nic_Pro}}%</span>
									</p>
								</div>
								<div class=" col-md-3 col-lg-3 col-xl-2 d-flex p-4">
									<button class="btn btn-link px-2 " value="{{i.id_Pro}}"
										onclick="updatecartdown(this)">
										<i class="fas fa-minus"></i>
									</button>

									<input id="form1" min="0" name="quantity" value="{{i.qty_Pro}}"
										type="number" class="form-control col-6 text-center">

									<button class="btn btn-link px-2 " onclick="updatecartup(this)"
										value="{{i.id_Pro}}">
										<i class="fas fa-plus"></i>
									</button>
								</div>
								<div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
									<h5 class="mb-0">{{i.price_Pro}} K</h5>
								</div>
								<div class="col-md-1 col-lg-1 col-xl-1 text-end p-2">
									<a href="/Home/Cart/Delete?p={{i.id_Pro}}"
										class="btn btn-danger p-3 px-4 rounded "><i
										class="fas fa-trash fa-lg"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!--  -->
					<p class="m-4"></p>
					<div class="card col-12 position-fixed"
						style="z-index: 1; bottom: 0px; left: 0;">
						<div class="card-body col-12 col-md-8 col-lg-7 m-auto">
							<b class="col mr-5">All <input type="checkbox" name="all" onchange="selectAll()" id=""></b>
							<button type="button"
								class="btn btn-primary btn-lg col-12 col-md-10" onclick="pay()">Proceed
								to Pay</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="/lib/waypoints/waypoints.min.js"></script>
	<script src="/lib/counterup/counterup.min.js"></script>
	<script src="/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="/mail/jqBootstrapValidation.min.js"></script>
	<script src="/mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="/js/main.js"></script>
</body>
<script src="/js/Json.js" type="text/javascript"></script>
<script>
	let all = document.querySelector('input[name="all"]');

	function selectAll() {
		let checkboxes = document.querySelectorAll('input[name="cate"]');
		for (var i = 0, n = checkboxes.length; i < n; i++) {
			checkboxes[i].checked = all.checked;
		}
	}
</script>
</html>