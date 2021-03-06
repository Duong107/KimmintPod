<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title id="title"></title>
    <!-- Favicon -->
    <link href="/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- angular js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-cookies.js"></script>
    <style>
        body {
            background-color: #edf1f5;
        }

        .card {
            margin-bottom: 30px;
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid transparent;
            border-radius: 0;
        }

        .card .card-subtitle {
            font-weight: 300;
            margin-bottom: 10px;
            color: #8898aa;
        }

        .table-product.table-striped tbody tr:nth-of-type(odd) {
            background-color: #f3f8fa !important
        }

        .table-product td {
            border-top: 0px solid #dee2e6 !important;
            color: #728299 !important;
        }
    </style>
</head>

<body ng-app="ProductInfor" ng-controller="Product">
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
    <div class="container" >
        <div class=" col-12 col-md-10 m-auto">
            <div class="container">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">{{p.name_Pro}}</h3>
                        <h6 class="card-subtitle">Amount Sold: {{p.amount}}</h6>
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-6">
                                <div class="white-box text-center"><img ng-src="{{p.image_Pro}}" class="border img-responsive col-12">
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7 col-sm-6">
                                <h4 class="box-title mt-5">Product description</h4>
                                <p>{{p.name_Pro}} with a unique design with RGB LEDs makes the device look more
                                    sparkling at night,
                                    using advanced fast charging technology, you no longer have to worry about running
                                    out of battery when using.
                                    The large {{p.nic_Pro}} salt nic content satisfies the user along with {{p.ml_Pro}}
                                    ml of delicious essential oils, all in one seamless design,
                                    the oil leak is completely handled to reproduce the smoking experience perfectly.
                                    Convenient micro USB charger can be plugged in anywhere the device can take it.</p>
                                <h2 class="mt-5">
                                    {{p.price_Pro}},000 VND<small class="text-success"></small>
                                </h2>
                                <button class="btn btn-dark btn-rounded mr-1" type="button" onclick="addtocart(this)" value="${prod}" id="prod" >
                                    <i class="fas fa-shopping-cart"></i> add To Cart
                                </button>
                                <button class="btn btn-primary btn-rounded">Buy Now</button>
                                <h3 class="box-title mt-5">Key Highlights</h3>
                                <ul class="list-unstyled">
                                    <li><i class="fa fa-check text-success"></i>Sturdy structure</li>
                                    <li><i class="fa fa-check text-success"></i>Designed to foster easy portability</li>
                                    <li><i class="fa fa-check text-success"></i>Perfect furniture to flaunt your
                                        wonderful
                                        collectibles</li>
                                </ul>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <h3 class="box-title mt-5">General Info</h3>
                                <div class="table-responsive">
                                    <table class="table table-striped table-product">
                                        <tbody>
                                            <tr>
                                                <td width="390">Brand</td>
                                                <td>{{p.brand_Pro}}</td>
                                            </tr>
                                            <tr>
                                                <td>Quantity</td>
                                                <td>{{p.qty_Pro}}</td>
                                            </tr>
                                            <tr>
                                                <td>Salt Nic</td>
                                                <td>{{p.nic_Pro}}</td>
                                            </tr>
                                            <tr>
                                                <td>Charging</td>
                                                <td>{{p.charg_Pro==true?"C??":"Kh??ng"}}</td>
                                            </tr>
                                            <tr>
                                                <td>Ml</td>
                                                <td>{{p.ml_Pro}}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    




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

					<!--/*** This template is free as long as you keep the footer author???s credit link/attribution link/backlink. If you'd like to use the template without the footer author???s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
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
    
</body>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="/lib/waypoints/waypoints.min.js"></script>
<script src="/lib/counterup/counterup.min.js"></script>
<script src="/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="/mail/jqBootstrapValidation.min.js"></script>
<script src="/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="/js/main.js"></script>
<script src="/js/Json.js" type="text/javascript"></script>

</html>