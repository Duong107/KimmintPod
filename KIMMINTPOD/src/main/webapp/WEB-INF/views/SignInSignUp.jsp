<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>KimMint POD - Pod,Vape system</title>
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
<script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-cookies.js"></script>
<style>
.profile-img {
	text-align: center;
}

.profile-img img {
	width: 70%;
	height: 100%;
}

.profile-img .file {
	position: relative;
	overflow: hidden;
	margin-top: 0%;
	width: 70%;
	border: none;
	border-radius: 0;
	font-size: 15px;
	background: #212529b8;
}

.profile-img .file input {
	position: absolute;
	opacity: 0;
	right: 0;
	top: 0;
}
</style>
</head>

<body ng-app="Login" ng-controller="LoginC">
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
					<a href="/Home" class="nav-item nav-link"><i
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
								class="fas fa-user"></i> Sign In
							</a> <a href="/Home/User/Cart" class="nav-item nav-link"> <i
								class="fa fa-user-plus"></i> Sign Up
							</a> <a href="/Home/Blog" class="nav-link nav-item text-warning"><i
								class="fas fa-key"></i> Forgot Password ?</a>
						</div>
						<a href=""
							class="btn btn-primary py-2 px-4 ml-2 d-none d-lg-block"
							id="login">LOGIN</a>
					</div>
				</div>
				<a href="/Home/Cart" class="btn py-2 px-4 d-none d-lg-block"><i
					class="fas fa-shopping-cart"></i>CART</a> <a href=""
					class="btn btn-primary py-2 px-4 ml-2 d-none d-lg-block" id="login">SignUp</a>
			</div>
		</nav>
	</div>
	<!-- Navbar End -->
	<section>
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card  shadow" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img src="/img/img1.jpg" alt="login form" class="img-fluid"
									style="border-radius: 1rem 0 0 1rem; height: 100%;" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-3 p-lg-5 text-black ">
									<form class="pb-0 mb-0 collapse" id="signup">

										<div class="d-flex align-items-center mb-3 pb-0">
											<h2 class="text-primary">
												KIMMINT<i class="fas fa-leaf"></i>
											</h2>
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="us1">Username</label> <input
												type="text" id="us1" class="form-control form-control-lg" />
										</div>

										<div class="form-outline mb-3">
											<label class="form-label" for="pw1">Password</label> <input
												type="password" id="pw1"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-2">
											<label class="form-label" for="pw2">Confirm Password</label>
											<input type="password" id="pw2"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-2">
											<input type="checkbox" name="checks" onclick="enablebtn()" />
											<a href="#">Accept our terms and conditions</a>
										</div>

										<div class="pt-1">
											<button class="btn btn-primary btn-lg btn-block"
												type="submit" ng-click="signupp()" disabled id="hihi">SignUp</button>
										</div>
										<hr>
										<p class="mb-0 pb-0" style="color: #393f81;">
											You have an account?
											<button type="button" onclick="showform2()" class="btn"
												style="color: #393f81;">Login here</button>
										</p>
									</form>

									<form id="signin">

										<div class="d-flex align-items-center mb-3 pb-1">
											<h2 class="text-primary">
												KIMMINT<i class="fas fa-leaf"></i>
											</h2>
										</div>


										<div class="form-outline mb-4">
											<label class="form-label" for="us2">Username</label> <input
												type="text" value="${user}" name="user" id="us2"
												class="form-control form-control-lg" />
										</div>

										<div class="form-outline mb-4">
											<label class="form-label" for="pw">Password</label> <input
												type="password" value="${pass}" name="pass" id="pw"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-2">
											<input type="checkbox" name="remember" id="remember"
												value="true" /> <b>Remember me ?</b>
										</div>
										<div class="pt-1">
											<button class="btn btn-primary btn-lg btn-block"
												type="button" ng-click="login()" id="hihidd">Login</button>
										</div>
										<hr>
										<button class="small text-muted mb-0 btn px-0" type="button"
											data-toggle="modal" data-target="#forgotpass">Forgot
											password?</button>
										<br>
										<div class="modal fade" id="forgotpass" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Forgot
															Password ?</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">
														<div class="form-outline mb-4">
															<label class="form-label" for="us2">Email</label> <input
																type="email" ng-model="email" name="emailforgot" id="em"
																class="form-control form-control-lg" />
															<button type="button" class="btn btn-secondary"
																ng-click="SendCaptha()">Send Captha</button>
														</div>
														<div class="form-outline mb-4">
															<label class="form-label" for="us2">Captha</label> <input
																type="text" ng-model="code" name="emailforgot" id="em"
																class="form-control form-control-lg" />
														</div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">Close</button>
														<button type="button" ng-click="CheckCaptha()"
															class="btn btn-primary">Reset Password</button>
													</div>
												</div>
											</div>
										</div>
										<p class="mb-0" style="color: #393f81;">
											Don't have an account?
											<button type="button" onclick="showform1()" class="btn p-0"
												style="color: #393f81;">Register here</button>
										</p>


									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>






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
	<!-- Template Javascript -->
	<script src="/js/main.js"></script>
</body>
<script src="/js/Json.js" type="text/javascript"></script>

</html>