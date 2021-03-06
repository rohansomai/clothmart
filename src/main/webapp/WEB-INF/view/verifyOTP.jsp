<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Enter OTP</title>
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
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>
	<div class="loader"></div>
	<div id="app">
		<section class="section">
			<div class="container mt-5">
				<div class="row">
					<div
						class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
						<div class="card card-primary">
							<div class="card-header">
								<h4>Verify OTP</h4>
							</div>
							<div class="card-body">
								<p class="text-muted">Please enter OTP that is received on
									your Email</p>

								<x:if test="${errorMessage ne null}">
									<div id="errorMessage" class="alert alert-danger col-12">${errorMessage}</div>
								</x:if>
								<form method="POST" action="verifyOTP">
									<div class="form-group">
										<label for="otp">OTP</label> <input id="otp" type="number"
											class="form-control" name="otp" tabindex="1" required
											autofocus onKeyPress="if(this.value.length>=6) return false;">
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-lg btn-block"
											tabindex="4">Verify OTP</button>
									</div>
								</form>
								<!-- <p class="text-muted float-right">
									Didn't received OTP? <a href="resendOTP">Re-send OTP</a>
								</p> -->
							</div>
						</div>
						<div class="mt-5 text-muted text-center">
							Do you remember your password? <a href="login">Login Here</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- General JS Scripts -->
	<script src="../adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>
</body>

</html>