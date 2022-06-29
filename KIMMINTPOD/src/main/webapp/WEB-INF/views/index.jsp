<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>KimMint POD - Pod,Vape System</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="/img/favicon.ico" rel="icon">

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

<body ng-app="Home" ng-controller="Homcontroller">
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
					<a href="/Home" class="nav-item nav-link active"><i
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
							</a> <a href="/Home/User/Cart" class="nav-item nav-link"> <i
								class="fas fa-shopping-cart"></i> Cart
							</a> <a href="/Home/Blog" class="nav-link nav-item text-warning"><i
								class="fas fa-key"></i> Change Password</a> <a href="/Home/Contract"
								class="nav-item nav-link text-danger"><i
								class="fas fa-sign-out-alt"></i>Sign-Out</a>
						</div>
						<button class="btn py-2 px-4 d-none d-lg-block">
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
	<!-- Testimonial Start -->
	<div class="container-fluid py-5">
		<div class="container">
			<div class="text-center pb-2">
				<h6 class="text-primary text-uppercase font-weight-bold">KIMMINT
					POD - POD SYSTEM</h6>
				<h1 class="mb-4">TOP AMOUNT PRODUCT</h1>
			</div>
			<div class="owl-carousel testimonial-carousel">
				<!-- item start -->
				<div class="position-relative bg-secondary"
					ng-repeat="i in products |orderBy : '-amount' | limitTo : 1 : 0 ">
					<div class="col-lg-12 col-md-6 col-12">
						<div
							class="team card position-relative overflow-hidden border-0 mb-5">
							<img class="card-img-top" ng-src="{{i.image_Pro}}" alt="">
							<div class="card-body text-center p-0">
								<div
									class="team-text d-flex flex-column justify-content-center bg-secondary">
									<h5 class="font-weight-bold">{{i.name_Pro | uppercase}}0</h5>
									<span>{{i.dateCre | date : 'EEEE,MMM'}}</span>
								</div>
								<div
									class="team-social d-flex align-items-center justify-content-center bg-primary">
									<button class="col-6 btn btn-secondary h-100"
										ng-value="{{i.id_Pro}}" onclick="addtocart(this)">Add
										To Cart</button>
									<a href="/Home/Product/Show?prod={{i.id_Pro}}"
										class="col-6 h-100 btn btn-secondary text-center"
										style="line-height: 550%;">Goto Detail</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="position-relative bg-secondary"
					ng-repeat="i in products |orderBy : '-dateCre' |  limitTo : 1 : 1 ">
					<div class="col-lg-12 col-md-6 col-12">
						<div
							class="team card position-relative overflow-hidden border-0 mb-5">
							<img class="card-img-top" ng-src="{{i.image_Pro}}" alt="">
							<div class="card-body text-center p-0">
								<div
									class="team-text d-flex flex-column justify-content-center bg-secondary">
									<h5 class="font-weight-bold">{{i.name_Pro | uppercase}}1</h5>
									<span>{{i.dateCre | date : 'EEEE,MMM'}}</span>
								</div>
								<div
									class="team-social d-flex align-items-center justify-content-center bg-primary">
									<button class="col-6 btn btn-secondary h-100"
										ng-value="{{i.id_Pro}}" onclick="addtocart(this)">Add
										To Cart</button>
									<a href="" class="col-6 h-100 btn btn-secondary text-center"
										style="line-height: 550%;">Goto Detail</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="position-relative bg-secondary"
					ng-repeat="i in products  |orderBy : '-dateCre' |  limitTo : 1 : 2 ">
					<div class="col-lg-12 col-md-6 col-12">
						<div
							class="team card position-relative overflow-hidden border-0 mb-5">
							<img class="card-img-top" ng-src="{{i.image_Pro}}" alt="">
							<div class="card-body text-center p-0">
								<div
									class="team-text d-flex flex-column justify-content-center bg-secondary">
									<h5 class="font-weight-bold">{{i.name_Pro | uppercase}}2</h5>
									<span>{{i.dateCre | date : 'EEEE,MMM'}}</span>
								</div>
								<div
									class="team-social d-flex align-items-center justify-content-center bg-primary">
									<button class="col-6 btn btn-secondary h-100"
										ng-value="{{i.id_Pro}}" onclick="addtocart(this)">Add
										To Cart</button>
									<a href="" class="col-6 h-100 btn btn-secondary text-center"
										style="line-height: 550%;">Goto Detail</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- item end -->
			</div>
		</div>
	</div>
	<!-- Testimonial End -->
	<!-- Blog Start -->
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<h6 class="text-primary text-uppercase font-weight-bold">News
					Blog</h6>
				<h1 class="mb-4">New Feeds</h1>
			</div>
			<div class="row">
				<!-- Feed Start -->
				<div class="col-md-6 mb-5"
					ng-repeat="x in blogs  |orderBy : '-dateCre' | limitTo:2:0">
					<div class="position-relative">
						<div
							class="position-absolute bg-primary d-flex flex-column align-items-center justify-content-center rounded-circle"
							style="width: 60px; height: 60px; bottom: -30px; right: 30px;">
							<!-- day of date upload -->
							<h4 class="font-weight-bold mb-n1">{{x.dateCre|date : 'dd'}}</h4>
							<!-- month of date upload -->
							<small class="text-white text-uppercase">{{i.dateCre|date
								: 'MMM'}}</small>
						</div>
					</div>
					<div class="bg-secondary" style="padding: 30px;">
						<div class="d-flex mb-3">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" style="width: 40px; height: 40px;"
									src="/img/user.jpg" alt=""> <b class="text-muted ml-2">{{x.id_User
									| uppercase}}</b>
							</div>
							<div class="d-flex align-items-center ml-4">
								<i class="far fa-bookmark text-primary"></i> <b
									class="text-muted ml-2">POD SYSTEM</b>
							</div>
						</div>
						<h4 class="font-weight-bold mb-3">{{x.title}}</h4>
						<p>{{x.subj}}</p>
						<a
							class="border-bottom border-primary text-uppercase text-decoration-none"
							href="">Read More <i class="fa fa-angle-right"></i></a>
					</div>
				</div>
				<!-- Feed End -->
			</div>
		</div>
	</div>
	<!-- Blog End -->




	<!-- Footer Start -->
	<div
		class="container-fluid bg-dark text-white mt-5 py-5 px-sm-3 px-md-5">
		<div class="row pt-5">
			<div class="col-lg-7 col-md-6">
				<div class="row">
					<div class="col-md-6 mb-5">
						<h3 class="text-primary mb-4">Get In Touch</h3>
						<p>
							<i class="fa fa-map-marker-alt mr-2"></i>537/12 Nguyen Oanh, P17,
							Go Vap, HCM CITY
						</p>
						<p>
							<i class="fa fa-phone-alt mr-2"></i>0867151745
						</p>
						<p>
							<i class="fa fa-envelope mr-2"></i>work.voduong@gmail.com
						</p>
						<div class="d-flex justify-content-start mt-4">
							<a class="btn btn-outline-light btn-social mr-2"
								href="https://twitter.com/nguyenduong_dev"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light btn-social mr-2"
								href="https://www.facebook.com/nguyenduong.dev/"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light btn-social"
								href="https://www.instagram.com/nguyenduong.dev/"><i
								class="fab fa-instagram"></i></a>
						</div>
					</div>
					<div class="col-md-6 mb-5">
						<h3 class="text-primary mb-4">Quick Links</h3>
						<div class="d-flex flex-column justify-content-start">
							<a class="text-white mb-2" href="/Home"><i
								class="fa fa-angle-right mr-2"></i>Home</a> <a
								class="text-white mb-2" href="/Home/About"><i
								class="fa fa-angle-right mr-2"></i>About Us</a> <a
								class="text-white mb-2" href="/Home/Product"><i
								class="fa fa-angle-right mr-2"></i>Product</a> <a
								class="text-white mb-2" href="/Home/Blog"><i
								class="fa fa-angle-right mr-2"></i>Blog</a> <a class="text-white"
								href="/Home/Contract"><i class="fa fa-angle-right mr-2"></i>Contact
								Us</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5 col-md-6 mb-5">
				<h3 class="text-primary mb-4">
					KIMMINT<i class="fas fa-leaf"></i>
				</h3>
				<p>Products belonging to KimMint Pod always ensure quality as
					well as price in the market. We say no to counterfeit goods, 100%
					warranty commitment if detecting fake goods, poor quality goods
					when buying in our store!</p>
			</div>
		</div>
	</div>
	<div
		class="container-fluid bg-dark text-white border-top py-4 px-sm-3 px-md-5"
		style="border-color: #3E3E4E !important;">
		<div class="row">
			<div class="col-lg-6 text-center text-md-left mb-3 mb-md-0">
				<p class="m-0 text-white">
					&copy; <a href="#">KimMint Pod</a>. All Rights Reserved.

					<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
					Designed by <a href="https://facebook.com/nguyenduong.dev/">NGUYENDUONG.DEV</a>
				</p>
			</div>
			<div class="col-lg-6 text-center text-md-right">
				<ul class="nav d-inline-flex">
					<li class="nav-item"><a class="nav-link text-white py-0"
						href="#">Privacy</a></li>
					<li class="nav-item"><a class="nav-link text-white py-0"
						href="#">Terms</a></li>
					<li class="nav-item"><a class="nav-link text-white py-0"
						href="#">FAQs</a></li>
					<li class="nav-item"><a class="nav-link text-white py-0"
						href="#">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


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

</html>