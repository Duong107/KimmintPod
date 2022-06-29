<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - MintPod</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/csss/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!-- angular js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-cookies.js"></script>
</head>
<script type="text/javascript" src="/jss/controller.js"></script>
<body class="sb-nav-fixed" ng-app="AdminApp" ng-controller="Adminpage">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<b class="navbar-brand ps-3">KIMMINT<i class="fas fa-leaf"></i></b>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">Settings</a></li>
					<li><a class="dropdown-item" href="#!">Activity Log</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><button type="button" class="dropdown-item"
							ng-click="Logout()">Logout</button></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="/admin">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Pages
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="/admin/Page/AccountPage">
									Accounts </a> <a class="nav-link collapsed"
									href="/admin/Page/ProductPage"> Products </a> <a
									class="nav-link collapsed" href="/admin/Page/BlogPage">
									Blogs </a> <a class="nav-link collapsed"
									href="/admin/Page/AboutPage"> About </a> <a
									class="nav-link collapsed" href="/admin/Page/VotedPage">
									Voted </a> <a class="nav-link collapsed" href="/Error?ref=404">
									... </a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts
						</a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">
						KIMMIND POD<i class="fas fa-leaf"></i>
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="px-4 mt-2 mb-2">
					<button class="btn btn-success" data-toggle="modal"
						data-target="#formnewproduct">
						<i class="fa-solid fa-plus"></i> New Product
					</button>
					<div class="modal fade" id="formnewproduct" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLongTitle">New
										Product</h5>
									<button type="button" class="close btn-lg btn"
										data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<form:form action="/admin/Page/ProductPage/add" method="POST"
									modelAttribute="product" enctype="multipart/form-data">
									<div class="modal-body">
										<div class="form-outline mb-3">
											<label class="form-label" for="Name_Pro">Name Product</label>
											<form:input path="Name_Pro" type="text"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="Price_Pro">Price
												Product</label>
											<form:input path="Price_Pro" type="number"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="Nic_Pro">Salt Nic</label>
											<form:input path="Nic_Pro" type="number"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="Charg_Pro">Charging ?</label>
											<input name="Charg_Pro" value="true" id="Charg_Pro" type="checkbox" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="ML_Pro">Mililit</label>
											<form:input path="ML_Pro" type="number"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="QTY_Pro">Quantity</label>
											<form:input path="QTY_Pro" type="number"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="Image_Pros">Image</label> <input
												name="Image_Pros" type="file" class="form-control" />
										</div>
										<div class="form-outline mb-3">
											<label class="form-label" for="te">Brand</label>
											<form:select path="Brand_Pro" class="form-select"
												aria-label="Default select example">
												<option value="{{br.id_Brand}}" ng-repeat="br in brlist">{{br.name_Brand}}</option>
											</form:select>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-success">Add</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
				<div class="container-fluid px-4">
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i>Account Table
						</div>
						<div class="card-body  m-0 p-0" style="overflow: scroll;">
							<table class="table table-bordered m-0">
								<thead>
									<tr class="text-center">
										<th ng-click="sortBy('id_Pro')">ID Prod</th>
										<th ng-click="sortBy('name_Pro')">Name</th>
										<th ng-click="sortBy('price_Pro')">Price</th>
										<th ng-click="sortBy('amount')">Amount Sold</th>
										<th ng-click="sortBy('nic_Pro')">Salt Nic</th>
										<th ng-click="sortBy('qty_Pro')">Quantity</th>
										<th ng-click="sortBy('ml_Pro')">Mililit</th>
										<th ng-click="sortBy('charg_Pro')">Charging</th>
										<th ng-click="sortBy('dateCre')">Date Create</th>
										<th ng-click="sortBy('brand_Pro')">Brand</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<tr class="text-center" ng-repeat="prod in listprod | orderBy:selectValue">
										<td>{{prod.id_Pro}}</td>
										<td>{{prod.name_Pro}}</td>
										<td>{{prod.price_Pro}}</td>
										<td>{{prod.amount}}</td>
										<td>{{prod.nic_Pro}}</td>
										<td>{{prod.qty_Pro}}</td>
										<td>{{prod.ml_Pro}}</td>
										<td>{{prod.charg_Pro==true?"Yes":"No"}}</td>
										<td>{{prod.dateCre | date:dd-mm-yyyy}}</td>
										<td>{{prod.brand_Pro}}</td>
										<td class="m-0 p-0" style="width: 30px"><button
												class="btn btn-primary col-12 rounded-0 m-0 px-4 pb-2"
												type="button" data-toggle="modal" data-target="#editform"
												ng-click="editp($index)">
												<i class="fa-solid fa-pencil m-0 p-0"></i>
											</button></td>
										<td class="m-0 p-0" style="width: 30px"><button
												ng-click="deletep($index)"
												class="btn btn-danger col-12 rounded-0 m-0 px-2 pb-2">
												<i class="fa-solid fa-trash m-0 p-0"></i>
											</button></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
			<!-- Modal -->
			<div class="modal fade" id="editform" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Edit
								Product</h5>
							<button type="button" class="close btn btn-lg"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form:form action="/admin/Page/ProductPage/update" method="POST"
							modelAttribute="product" enctype="multipart/form-data">
							<div class="modal-body">
							<div class="form-outline mb-3">
									<label class="form-label" for="ID_Pro">ID Product</label>
									<form:input path="ID_Pro" type="text" ng-model="p.id_Pro"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="Name_Pro">Name Product</label>
									<form:input path="Name_Pro" type="text" ng-model="p.name_Pro"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="Price_Pro">Price Product</label>
									<form:input path="Price_Pro" type="number"
										ng-model="p.price_Pro" class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="Nic_Pro">Salt Nic</label>
									<form:input path="Nic_Pro" type="number" ng-model="p.nic_Pro"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="Charg_Pro">Charging ?</label> <input
										name="Charg_Pro" id="Charg_Pro"
										{{p.charg_Pro?"checked":""}} type="checkbox" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="ML_Pro">Mililit</label>
									<form:input path="ML_Pro" type="number" ng-model="p.ml_Pro"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="QTY_Pro">Quantity</label>
									<form:input path="QTY_Pro" type="number" ng-model="p.qty_Pro"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="Image_Pros">Image</label> <input
										name="Image_Pros" type="file" class="form-control" />
								</div>
								<div class="form-outline mb-3">
									<label class="form-label" for="te">Brand</label>
									<form:select path="Brand_Pro" class="form-select"
										aria-label="Default select example">
										<option value="{{br.id_Brand}}" {{p.brand_Pro==br.id_Brand?
											"selected":""}} ng-repeat="br in brlist">{{br.name_Brand}}</option>
									</form:select>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-success">Add</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">
							<b class="d-block">@Author NguyenDuong.Dev</b>
						</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/jss/scripts.js"></script>
</body>
</html>
