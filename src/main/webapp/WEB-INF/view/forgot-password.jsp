<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
		<title>Forgot Password</title>
		<!-- General CSS Files -->
		<link rel="stylesheet" href="../adminResources/css/app.min.css">
		<link rel="stylesheet" href="../adminResources/css/bootstrap-social.css">
		<link rel="stylesheet" href="../adminResources/css/iziToast.min.css">
		<!-- Template CSS -->
		<link rel="stylesheet" href="../adminResources/css/style.css">
		<link rel="stylesheet" href="../adminResources/css/components.css">
		<!-- Custom style CSS -->
		<link rel="stylesheet" href="../adminResources/css/custom.css">
		<link rel='shortcut icon' type='image/x-icon' href='../adminResources/image/favicon.ico' />
		<script type="text/javascript">
			function checkEmailExistsOrNot() {
				var email = $("#email").val();
				var emailNotExistsMessage = $("#emailNotExistsMessage");
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = function () {
					if (xhr.readyState == 4) {
						if (xhr.responseText != "") {
							emailNotExistsMessage.html(xhr.responseText);
							emailNotExistsMessage.show();
							$("#submit-btn").attr('disabled', 'disabled'); //disable submit button 
						}
						else {
							emailNotExistsMessage.hide();
							$("#submit-btn").removeAttr('disabled'); //enable submit button
						}
					}
				}
				xhr.open("GET", "checkEmailExistsOrNot?email=" + email, true);
				xhr.send();
			}
		</script>
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
									<h4>Forgot Password</h4>
								</div>
								<div class="card-body">
									<p class="text-muted">We will send a OTP on your Email
										address</p>
									<div style="display: none" id="emailNotExistsMessage"
										class="alert alert-danger col-12"></div>
									<form method="POST" action="sendOTP">
										<div class="form-group">
											<label for="email">Email</label> <input id="email"
											type="email" class="form-control" name="email" tabindex="1"
											required autofocus onblur="checkEmailExistsOrNot()" onkeypress="$('#emailNotExistsMessage').hide();$('#submit-btn').removeAttr('disabled')">
									</div>
										<div class="form-group">
											<button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4"
												id="submit-btn" onclick="checkEmailExistsOrNot()">Forgot Password</button>
										</div>	
									</form>
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
		<!-- JS Libraries -->
		<!-- Page Specific JS File -->
		<!-- Template JS File -->
		<script src="../adminResources/js/scripts.js"></script>
		<!-- Custom JS File -->
		<script src="../adminResources/js/custom.js"></script>
		<script src="../adminResources/js/jquery.js"></script>
	</body>

	</html>