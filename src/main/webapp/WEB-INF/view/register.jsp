<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>ClothMart Registration</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="../adminResources/css/app.min.css">
<link rel="stylesheet" href="../adminResources/css/selectric.css">
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
	<div class="loader"></div>
	<div id="app">
		<section class="section">
			<div class="container mt-5">
				<div class="row">
					<div
						class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
						<div class="card card-primary">
							<div class="card-header">
								<h4>Register</h4>
							</div>
							<div class="card-body">
								<f:form method="POST" modelAttribute="form-data"
									action="saveUser">
									<div class="row">
										<div class="form-group col-6">
											<label for="frist_name">First Name</label>
											<f:input class="form-control" path="firstName"
												required="true" />
										</div>
										<div class="form-group col-6">
											<label for="last_name">Last Name</label>
											<f:input class="form-control" path="lastName" required="true" />
										</div>
									</div>
									<div class="form-group">
										<label for="email">Email</label>
										<f:input class="form-control" type="email" id="email"
											path="login.email" required="true"
											onblur="checkEmailAlreadyExists()" />
									</div>
									<div style="display: none" id="emailAlreadyExitsMessage"
										class="alert alert-danger col-12"></div>
									<div class="row">
										<div class="form-group col-6">
											<label for="password" class="d-block">Password</label>
											<f:input id="password1" type="password" path="login.password"
												class="form-control pwstrength" data-indicator="pwindicator"
												name="password" />
											<div id="pwindicator" class="pwindicator">
												<div class="bar"></div>
												<div class="label"></div>
											</div>
										</div>
										<div class="form-group col-6">
											<label for="password2" class="d-block">Password
												Confirmation</label>
											<input id="password2" type="password" class="form-control"
												name="password-confirm" value="${login.password}"
												onblur="checkPassword()" required>
										</div>
										<div style="display: none" id="errorMessage"
											class="alert alert-danger col-12">Password and password
											confirmation did not matched. Please enter carefully!!</div>
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="frist_name">Mobile Number</label>
											<f:input class="form-control" path="mobileNumber"
												required="true" />
										</div>
										<div class="form-group col-6">
											<label for="last_name">City</label>
											<f:input class="form-control" path="city" required="true" />
										</div>
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="frist_name">State</label>
											<f:input class="form-control" path="state" required="true" />
										</div>
										<div class="form-group col-6">
											<label for="last_name">Pin code</label>
											<f:input class="form-control" path="pincode" required="true" />
										</div>
									</div>
									<div class="form-group">
										<label>Address</label>
										<f:textarea class="form-control" path="address"
											required="true"></f:textarea>
									</div>
									<div class="form-group">
										<button type="submit" id="submit-btn" class="btn btn-primary btn-lg btn-block">
											Register</button>
									</div>
								</f:form>
							</div>
							<div class="mb-4 text-muted text-center">
								Already Registered? <a href="login">Login</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- General JS Scripts -->
	<script src="../adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script src="../adminResources/js/jquery.pwstrength.min.js"></script>
	<script src="../adminResources/js/jquery.selectric.min.js"></script>
	<!-- Page Specific JS File -->
	<script src="../adminResources/js/auth-register.js"></script>
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>
	<script src="../adminResources/js/registrationJS.js"></script>
	<script src="../adminResources/js/jquery.js"></script>
</body>

</html>