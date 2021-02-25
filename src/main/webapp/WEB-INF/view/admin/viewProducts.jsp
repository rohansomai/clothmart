<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Product Details</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="../adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="../adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="../adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="../adminResources/css/style.css">
<link rel="stylesheet" href="../adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="../adminResources/css/custom.css">

<link rel="stylesheet" href="../adminResources/css/productStyle.css">

<link rel='shortcut icon' type='image/x-icon'
	href='../adminResources/image/favicon.ico' />

</head>

<body>
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<jsp:include page="header.jsp"></jsp:include>

			<jsp:include page="menu.jsp"></jsp:include>

			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4>Product Details</h4>
									</div>
									<div class="form-group col-md-4 mr-auto ml-3">
										<label for="retailer">Filter by Retailer</label> <select
											id="retailer" class="form-control"
											onchange="loadProductsByRetailer()">
											<option selected value="all">All</option>
											<x:forEach items="${retailersList}" var="i">
												<option value="${i.id}">${i.shopName}</option>
											</x:forEach>

										</select>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover" id="table"
												style="width: 100%;">
												<thead>
													<tr>
														<th>Sr. no</th>
														<th>Image</th>
														<th>Product Name</th>
														<th>Description</th>
														<th>Quantity</th>
														<th>Price</th>
														<th>Retailer Name</th>
														<th>Retailer's Shop Name</th>
														<th>Category</th>
														<th>Sub Category</th>
													</tr>
												</thead>
												<tbody id="tbody">
													<x:forEach items="${productsList}" var="i" varStatus="j">
														<tr>
															<td>${j.count}</td>
															<td><img alt="${i.name}" class="productImage"
																src="${i.imageUrl}" height="50px" width="50px"></td>
															<td>${i.name}</td>
															<td>${i.description}</td>
															<td>${i.quantity}Pieces</td>
															<td>&#8377;${i.price}</td>
															<td>${i.retailer.firstName}${i.retailer.lastName}</td>
															<td>${i.retailer.shopName}</td>
															<td>${i.category.name}</td>
															<td>${i.subcategory.name}</td>
														</tr>
													</x:forEach>
												</tbody>
											</table>

											<!-- The Modal -->
											<div id="myModal" class="modal">
												<span class="close">&times;</span> <img
													class="modal-content" id="img01">
												<div id="caption"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="../adminResources/js/app.min.js"></script>
	<!-- JS Libraries -->
	<!-- Page Specific JS File -->
	<script src="../adminResources/js/datatables.min.js"></script>
	<script src="../adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="../adminResources/js/dataTables.buttons.min.js"></script>
	<script src="../adminResources/js/buttons.flash.min.js"></script>
	<script src="../adminResources/js/jszip.min.js"></script>
	<script src="../adminResources/js/pdfmake.min.js"></script>
	<script src="../adminResources/js/vfs_fonts.js"></script>
	<script src="../adminResources/js/buttons.print.min.js"></script>
	<script src="../adminResources/js/datatables.js"></script>
	<script src="../adminResources/js/productJS.js"></script>
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>

</body>

</html>