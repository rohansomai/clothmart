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
<title>BootStrap HTML5 CSS3 Theme</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon"
	href="userResources/images/apple-touch-icon.png">
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
				Inner Page Banner Start
		*************************************-->
		<div class="tg-innerpagebanner">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ol class="tg-breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="tg-active">404</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!--************************************
				Inner Page Banner End
		*************************************-->
		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div id="tg-content" class="tg-content">
							<div class="tg-404error">
								<figure class="tg-errorimg">
									<img src="userResources/images/404.png" alt="image description">
								</figure>
								<div class="tg-errorcontent">
									<h2>Oooops!</h2>
									<div class="tg-description">
										<p>Something Went Wrong With The Link :(</p>
									</div>
									<form class="tg-themeform tg-formsearch">
										<fieldset>
											<input type="email" class="form-control" name="email"
												placeholder="Enter Your Email Here">
											<button type="button" class="tg-btn">Search</button>
										</fieldset>
									</form>
									<span class="tg-gobackhome">OR You Can Go Back To <a
										href="index.html">Main Page</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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