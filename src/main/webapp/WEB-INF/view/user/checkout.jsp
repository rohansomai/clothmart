<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout Page</title>
<!-- Libraries CSS Files -->
<link rel="stylesheet" href="userResources/css/bootstrap.min.css">
<link rel="stylesheet" href="userResources/css/normalize.css">
<link rel="stylesheet" href="userResources/css/font-awesome.min.css">
<link rel="stylesheet" href="userResources/css/jquery.flipster.css">
<link rel="stylesheet" href="userResources/css/icomoon.css">
<link rel="stylesheet" href="userResources/css/jquery-ui.css">
<link rel="stylesheet" href="userResources/css/pogoslider.css">
<link rel="stylesheet" href="userResources/css/owl.carousel.css">
<link rel="stylesheet" href="userResources/css/transitions.css">
<link rel="stylesheet" href="userResources/css/star.css">
<link rel="stylesheet" href="userResources/css/style.css">
<!-- Theme CSS Files -->
<link rel="stylesheet" href="userResources/css/main.css">
<link rel="stylesheet" href="userResources/css/color.css">
<link rel="stylesheet" href="userResources/css/responsive.css">
<script src="userResources/js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<%@include file="../components/cart.jsp"%>
<%@include file="../components/common_css_js.jsp"%>

</head>
<body>
	<%@include file="../components/cart.jsp"%>
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<%@include file="header.jsp"%>
		<div class="container" style="margin-top: 160px">
			<div class="row">
				<div class="col-md-6">
					<div class="card">
						<div class="card-header text-center">
							<h3>Review Your Cart</h3>
						</div>
						<div class="cart-body"></div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card">
						<div class="card-header text-center">
							<h3>Please Confirm your details</h3>
						</div>
						<div class="card-body">
							<f:form action="" modelAttribute="userData">
								<div class="form-row">
									<div class="col">
										<label for="name">First Name<span style="color: red">*</span></label>
										<f:input path="firstName" class="form-control"
											required="required" />
									</div>
									<div class="col">
										<label for="name">Last Name<span style="color: red">*</span></label>
										<f:input path="lastName" class="form-control"
											required="required" />
									</div>
								</div>
								<div class="form-row">
									<div class="col">
										<div class="form-group">
											<label for="email">Email<span style="color: red">*</span></label>
											<f:input path="login.email" id="email" type="email"
												class="form-control reg-form" required="true" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="address">Address<span style="color: red">*</span></label>
									<f:textarea path="address" class="form-control reg-form"
										style="height:100px" required="true" />
								</div>

								<div class="form-row">

									<div class="col">
										<label for="mobileNumber">Mobile Number<span
											style="color: red">*</span></label>
										<f:input path="mobileNumber" class="form-control reg-form"
											required="true"
											onKeyPress="if(this.value.length==10) return false;" />

									</div>

									<div class="col">
										<label for="city">City<span style="color: red">*</span></label>
										<f:input path="city" class="form-control reg-form"
											required="true" />
									</div>
								</div>
								<div class="form-row">
									<div class="col">
										<label for="state">State<span style="color: red">*</span></label>
										<f:input path="state" class="form-control reg-form"
											required="true" />
									</div>

									<div class="col">
										<label for="pincode">Pincode<span style="color: red">*</span></label>
										<f:input type="number" path="pincode"
											class="form-control reg-form" required="true"
											onKeyPress="if(this.value.length==6) return false;" />
									</div>
								</div>
								<div class="text-center" style="margin: 30px 0 40px 0">
									<a href="/" class="btn btn-outline-primary">Continue
										Shopping</a>
									<button class="tg-btn">Confirm details</button>
								</div>
							</f:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="userResources/js/jquery-library.js"></script>
	<script src="userResources/js/bootstrap.min.js"></script>
	<script
		src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
	<script src="userResources/js/jquery.flipster.min.js"></script>
	<script src="userResources/js/owl.carousel.min.js"></script>
	<script src="userResources/js/pogoslider.js"></script>
	<script src="userResources/js/jquery-ui.js"></script>
	<script src="userResources/js/countTo.js"></script>
	<script src="userResources/js/appear.js"></script>
	<script src="userResources/js/gmap3.js"></script>
	<script src="userResources/js/main.js"></script>
	<script src="userResources/js/script.js"></script>
</body>
</html>