<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>View Retailers</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
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
										<h4>View Retailers</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Email</th>
														<th>Mobile Number</th>
														<th>Shop Name</th>
														<th>Shop Address</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<x:forEach items="${retailersList}" var="i">
														<tr>
															<td>${i.firstName}</td>
															<td>${i.lastName}</td>
															<td>${i.login.email}</td>
															<td>${i.mobileNumber}</td>
															<td>${i.shopName}</td>
															<td>${i.shopAddress}</td>
															<td><a href="editRetailer?id=${i.id}"><i
																	class="fas fa-edit" style="font-size: 16px;"></i></a> <a
																href="deleteRetailer?lid=${i.login.id}"> <i
																	class="fas fa-trash"
																	style="font-size: 16px; margin-left: 15px; color: red;"></i></a></td>
														</tr>
													</x:forEach>
												</tbody>
											</table>
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
	<script src="adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<script src="adminResources/js/datatables.min.js"></script>
	<script src="adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="adminResources/js/dataTables.buttons.min.js"></script>
	<script src="adminResources/js/buttons.flash.min.js"></script>
	<script src="adminResources/js/jszip.min.js"></script>
	<script src="adminResources/js/pdfmake.min.js"></script>
	<script src="adminResources/js/vfs_fonts.js"></script>
	<script src="adminResources/js/buttons.print.min.js"></script>
	<script src="adminResources/js/datatables.js"></script>
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
</body>

</html>