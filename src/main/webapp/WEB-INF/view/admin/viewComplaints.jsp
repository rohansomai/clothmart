<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>View Complaints</title>
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
										<h4>View Complaints</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>User Name</th>
														<th>Complaint Subject</th>
														<th>Complaint Description</th>
														<th>Date And Time</th>
														<th>Action</th>
														<th>Status</th>
														<th>Complaint Reply</th>
													</tr>
												</thead>
												<tbody>
													<x:forEach items="${complaintsList}" var="i">
														<tr>
															<td>${i.user.firstName} ${i.user.lastName}</td>
															<td>${i.subject}</td>
															<td>${i.description}</td>
															<td>${i.date_and_time}</td>
															<td><a href="deleteComplaint?id=${i.id}"> <i class="fas fa-trash"
																	style="font-size: 16px; margin-left: 15px; color: red;"></i></a></td>
															<td><x:if test="${i.status eq 'replied'}">

																	<span class="badge badge-success">Replied</span>

																</x:if> <x:if test="${i.status eq 'pending'}">
																	<a href="complaintReply?id=${i.id}"
																		class="btn btn-outline-primary">Reply</a>
																</x:if></td>
															<td>${i.reply}</td>
														</tr>
													</x:forEach>
													<!-- <tr>
														<td>Tiger Nixon</td>
														<td>System Architect</td>
														<td>Lorem ipsum dolor sit amet, consectetur
															adipisicing elit. Ad error.</td>
														<td>12/12/20 16:04</td>
														<td><a href=""> <i class="fas fa-trash"
																style="font-size: 16px; margin-left: 15px; color: red;"></i></a></td>
														<td><a href="complaintReply"
															class="btn btn-outline-primary">Reply</a></td>
														<td></td>
													</tr>

													<tr>
														<td>Tiger Nixon</td>
														<td>System Architect</td>
														<td>Lorem ipsum dolor sit amet, consectetur
															adipisicing elit. Ad error.</td>
														<td>12/12/20 16:04</td>
														<td><a href=""> <i class="fas fa-trash"
																style="font-size: 16px; margin-left: 15px; color: red;"></i></a></td>
														<td><a href="complaintReply.jsp"
															class="btn btn-outline-primary">Reply</a></td>
														<td></td>
													</tr> -->

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