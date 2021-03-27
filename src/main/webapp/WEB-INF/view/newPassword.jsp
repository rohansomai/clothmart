<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Create New Password</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="../adminResources/css/app.min.css">
<link rel="stylesheet" href="../adminResources/css/bootstrap-social.css">
<link rel="stylesheet" href="../adminResources/css/iziToast.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="../adminResources/css/style.css">
<link rel="stylesheet" href="../adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="../adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='../adminResources/image/favicon.ico' />
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<section class="section">
			<div class="container mt-5">
				<div class="row">
					<div
						class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
						<div class="card card-primary">
							<div class="card-header">
								<h4>Create New Password</h4>
							</div>
							<div class="card-body">
								<p class="text-muted">Enter new password to reset</p>
								<form method="POST" action="saveNewPassword">
									<div class="form-group">
										<label for="password">Password</label> <input id="password1"
											type="password" class="form-control" name="password"
											tabindex="1" required autofocus>
									</div>
									<div class="form-group">
										<label for="password">Confirm Password</label> <input
											id="password2" type="password" class="form-control"
											name="confirmPassword" tabindex="1" required autofocus
											onblur="checkPassword()">
									</div>
									<div style="display: none" id="errorMessage"
										class="alert alert-danger col-12">Password and password
										confirmation did not matched. Please enter carefully!!</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-lg btn-block"
											tabindex="4">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- General JS Scripts -->
	<script src="../adminResources/js/app.min.js"></script>
	<!-- JS Libraries -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>
	<script src="../adminResources/js/registrationJS.js"></script>
	<script src="../adminResources/js/jquery.js"></script>
</body>

</html>