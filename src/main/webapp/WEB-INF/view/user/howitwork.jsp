<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="zxx">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ClothMart - Try & Buy Clothes</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="userResources/apple-touch-icon" href="apple-touch-icon.png">
<!-- Liabraries CSS Files -->
<link rel="stylesheet" href="userResources/css/bootstrap.min.css">
<link rel="stylesheet" href="userResources/css/normalize.css">
<link rel="stylesheet" href="userResources/css/font-awesome.min.css">
<link rel="stylesheet" href="userResources/css/jquery.flipster.css">
<link rel="stylesheet" href="userResources/css/icomoon.css">
<link rel="stylesheet" href="userResources/css/jquery-ui.css">
<link rel="stylesheet" href="userResources/css/pogoslider.css">
<link rel="stylesheet" href="userResources/css/owl.carousel.css">
<link rel="stylesheet" href="userResources/css/transitions.css">
<!-- Theme CSS Files -->
<link rel="stylesheet" href="userResources/css/main.css">
<link rel="stylesheet" href="userResources/css/color.css">
<link rel="stylesheet" href="userResources/css/responsive.css">
<script src="userResources/js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<%@include file="../components/common_css_js.jsp"%>
<%@include file="../components/cart.jsp"%>
</head>

<body>
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!--************************************
			Wrapper Start
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<%@include file="header.jsp"%>
		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout tg-paddingzero">
			<!--************************************
					Tailor Online Start
			*************************************-->
			<section class="tg-sectionspace tg-haslayout">
				<div class="container text-center">
					<div class="row">
						<div class="tg-shortcode tg-tailoronline">
							<div
								class="col-xs-12 col-sm-12 col-md-6 col-lg-6 tg-verticalmiddle">
								<div class="tg-shortcodetext">
									<div class="tg-heading">
										<h2>About ClothMart</h2>
									</div>

									<div class="tg-description">
										<p>
											1)The user will select any cloth he wants to try.<br>
											2)Then the camera will be turned on.<br> 3) The
											algorithm will detect face, depending on the face width, the
											resizing will be done. <br>4) Accordingly the augmenting
											of virtual model will be done on user’s body. <br>5)The
											virtual model will appear and then the user can buy the
											clothes.
										</p>
									</div>
									<div class="tg-btns container text-center">
										<a class="tg-btn btn-block" href="/">Start Shopping</a>
									</div>
								</div>
							</div>
							<!-- <div
								class="col-xs-12 col-sm-12 col-md-6 col-lg-6 tg-verticalmiddle">
								<div class="tg-shortcodeimg tg-shortcodemultiimgs">
									<figure>
										<img src="userResources/images/img-01.jpg"
											alt="image description">
									</figure>
									<figure>
										<img src="userResources/images/img-02.jpg"
											alt="image description">
									</figure>
									<figure>
										<img src="userResources/images/img-03.jpg"
											alt="image description">
									</figure>
								</div>
							</div> -->
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Tailor Online End
			*************************************-->
			<!--************************************
					Statastic Start
			*************************************-->
			<section class="tg-sectionspace tg-bglight tg-haslayout">
				<div class="container">
					<div class="row">
						<img style="margin-left: 80px"
							src="userResources/images/about_clothmart.png">
					</div>
				</div>
			</section>
			<!--************************************
					Statastic End
			*************************************-->
			<!--************************************
					Team Members Start
			*************************************-->

			<!--************************************
					Trusted End
			*************************************-->
		</main>
		<!--************************************
				Main End
		*************************************-->
		<%@include file="footer.jsp"%>

	</div>
	<!--************************************
			Wrapper End
	*************************************-->
	<script src="userResources/js/jquery-library.js"></script>
	<script src="userResources/js/bootstrap.min.js"></script>
	<script
		src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&language=en"></script>
	<script src="userResources/js/jquery.flipster.min.js"></script>
	<script src="userResources/js/owl.carousel.min.js"></script>
	<script src="userResources/js/pogoslider.js"></script>
	<script src="userResources/js/jquery-ui.js"></script>
	<script src="userResources/js/countTo.js"></script>
	<script src="userResources/js/appear.js"></script>
	<script src="userResources/js/gmap3.js"></script>
	<script src="userResources/js/main.js"></script>
</body>

</html>