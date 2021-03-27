<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Add Sub category</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="../adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="../adminResources/css/style.css">
<link rel="stylesheet" href="../adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="../adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='../adminResources/image/favicon.ico' />
</head>

<body>
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
									<f:form modelAttribute="form-data" action="saveRetailer"
										method="post">
										<div class="card-header">
											<h4>Add Retailer</h4>
										</div>
										<div class="card-body">
											<div class="form-row">
												<div class="col">
													<div class="form-group">
														<label>First Name</label>
														<f:input class="form-control" path="firstName"
															required="true" />
													</div>
												</div>
												<div class="col">
													<div class="form-group">
														<label>Last Name</label>
														<f:input path="lastName" class="form-control"
															required="true" />
													</div>
												</div>
											</div>
											<div class="form-row">
												<div class="col">
													<div class="form-group">
														<label>Email</label>
														<f:input type="email" class="form-control"
															path="login.email" required="true" id="email"
															onblur="checkEmailAlreadyExists()" />
													</div>
													<div style="display: none" id="emailAlreadyExitsMessage"
														class="alert alert-danger col-12"></div>
												</div>

												<div class="col">
													<div class="form-group">
														<label>Password</label>
														<f:input type="password" class="form-control"
															path="login.password" required="true" />
													</div>
												</div>
											</div>
											<div class="form-row">
												<div class="col">
													<div class="form-group">
														<label>Mobile Number</label>
														<f:input type="number" path="mobileNumber"
															onKeyPress="if(this.value.length>=10) return false;"
															class="form-control" required="true" />
													</div>
												</div>
												<div class="col">
													<div class="form-group">
														<label>Shop Name</label>
														<f:input path="shopName" class="form-control"
															required="true" />
													</div>
												</div>
											</div>
											<div class="form-group mb-0">
												<label>Shop Address</label>
												<f:textarea class="form-control" path="shopAddress"
													required="true"></f:textarea>
											</div>
										</div>
										<f:hidden path="id" />
										<f:hidden path="login.id" />

										<div class="card-footer text-right">
											<button class="btn btn-primary">Submit</button>
										</div>
									</f:form>
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
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>
	<script src="../adminResources/js/registrationJS.js"></script>

	<script>
		$(document).ready(function() {
			iziToast.error({
				title : 'Hello, world!',
				message : 'This awesome plugin is made by iziToast',
				position : 'topRight'
			});
		});
	</script>
</body>

</html>