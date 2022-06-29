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
<script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-cookies.js"></script>
<style>
.profile-img {
	text-align: center;
}

.profile-img img {
	width: 100%;
	height: 100%;
}

.profile-img .file {
	position: relative;
	overflow: hidden;
	margin-top: 0%;
	width: 100%;
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

<body ng-app="userprofile" ng-controller="user">
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



	<!-- User -->
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-12">
				<h2 ng-model="Account.username">{{Account.username}}</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 mb-3">
				<!--left col-->

				<form action="/Home/User/Upload" method="Post"
					enctype="multipart/form-data">
					<div class="col-12 m-0 p-0">
						<div class="profile-img m-0 p-0">
							<img ng-model="Account.avatar" ng-src="{{Account.avatar}}" alt=""
								class="avatar img-circle img-thumbnail" name="imgavatar" />
							<div class="file btn btn-lg btn-primary">
								Change Photo <input type="file" id="fileupload"
									name="fileupload" accept="image/png, image/jpeg"
									onchange="this.form.submit()" />
							</div>
						</div>
					</div>
				</form>
				<button class="col-12 btn btn-warning" data-toggle="modal"
					data-target="#changepassform">Change Password</button>
				<button class="col-12 btn btn-success" data-toggle="modal"
					data-target="#statuscart">Cart Status</button>
				<button class="col-12 btn btn-danger" ng-click="logout()">Log
					Out</button>
				<div class="modal fade" id="changepassform" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Change
									Password</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="form-outline mb-3">
									<label class="form-label" for="pw1">Old Password</label> <input
										type="password" id="pw1" ng-model="oldpass"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-2">
									<label class="form-label" for="pw2">New Password</label> <input
										type="password" id="pw2" ng-model="newpass"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-2">
									<label class="form-label" for="pw2">Confirm Password</label> <input
										type="password" id="pw2" ng-model="cfnewpass"
										class="form-control form-control-lg" />
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary"
									ng-click="changepass()">Save changes</button>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade bd-example-modal-sm" id="statuscart" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLongTitle">Modal
									title</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="card-header">
									<i class="fas fa-table me-1"></i>Đơn Hàng Đã Mua !
								</div>
								<div class="card-body  m-0 p-0">
									<table class="table table-bordered m-0">
										<thead>
											<tr class="text-center">
												<th ng-click="sortBy('id_Pro')">Mã Đơn Hàng</th>
												<th ng-click="sortBy('name_Pro')">Tên Sản Phẩm</th>
												<th ng-click="sortBy('nic_Pro')">Salt Nic</th>
												<th ng-click="groupBy('qty_Pro')">Số Lượng</th>
												<th ng-click="sortBy('price_Pro')">Giá Tiền</th>
												<th ng-click="sortBy('dateCre')">Ngày Mua</th>
											</tr>
										</thead>
										<tbody>
											<tr class="text-center"
												ng-repeat="a in ListU |  orderBy:selectValue">
												<td>{{a.id_Pro}}</td>
												<td>{{a.name_Pro}}</td>
												<td>{{a.nic_Pro}} %</td>
												<td>{{a.qty_Pro}}</td>
												<td>{{a.price_Pro}}</td>
												<td>{{a.dateCre | date:dd-mm-yyyy}}</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/col-3-->
			<div class="col-sm-8">
				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<form class="form" action="##" method="post" id="registrationForm">
							<div class="form-group">
								<div class="col-xs-6">
									<label for="Fullname">
										<h4>Full Name:</h4>
									</label> <input type="text" class="form-control"
										ng-model="Account.fullname" name="Fullname" id="Fullname"
										placeholder="Fullname" title="enter your Fullname  if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="PhoneNumber ">
										<h4>Phone Number:</h4>
									</label> <input type="text" class="form-control"
										ng-model="Account.phoneNumber" name="PhoneNumber "
										id="PhoneNumber " placeholder="PhoneNumber "
										title="enter your PhoneNumber  if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email">
										<h4>Email</h4>
									</label> <input type="email" class="form-control"
										ng-model="Account.email" name="email" id="email"
										placeholder="you@email.com" title="enter your email.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="location">
										<h4>Location</h4>
									</label> <input type="text" class="form-control"
										ng-model="Account.location" id="location"
										placeholder="somewhere" title="enter a location">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="datecre">
										<h4>Date Created</h4>
									</label> <span class="form-control disabled"
										aria-placeholder="This Can't Not Changes">{{Account.dateCre
										| date:'dd-MM-yyyy'}}</span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success rounded py-1 float-end"
										type="button" ng-click="updateuser()">Save</button>
									<button class="btn btn-lg btn-warning rounded py-1 float-end"
										type="reset">Reset</button>
								</div>
							</div>
						</form>
						<hr>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--/End Form-->








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