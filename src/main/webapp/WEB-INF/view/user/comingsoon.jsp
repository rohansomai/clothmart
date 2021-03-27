<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>BootStrap HTML5 CSS3 Theme</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="userResources/apple-touch-icon.png">
<link rel="stylesheet" href="userResources/css/bootstrap.min.css">
<link rel="stylesheet" href="userResources/css/normalize.css">
<link rel="stylesheet" href="userResources/css/font-awesome.min.css">
<link rel="stylesheet" href="userResources/css/icomoon.css">
<link rel="stylesheet" href="userResources/css/jquery-ui.css">
<link rel="stylesheet" href="userResources/css/pogoslider.css">
<link rel="stylesheet" href="userResources/css/prettyPhoto.css">
<link rel="stylesheet" href="userResources/css/owl.carousel.css">
<link rel="stylesheet" href="userResources/css/transitions.css">
<link rel="stylesheet" href="userResources/css/main.css">
<link rel="stylesheet" href="userResources/css/color.css">
<link rel="stylesheet" href="userResources/css/responsive.css">
<script src="userResources/js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body class="tg-comingsoonpage">
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!--************************************
			Wrapper Start
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout tg-paddingzero">
			<!--************************************
					Comingsoon Start
			*************************************-->
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="tg-comingsooncontent">
							<strong class="tg-logo"> <img
								src="userResources/images/logo.png" alt="image description">
							</strong>
							<h2>Stay Tuned!</h2>
							<h3>We're Launching Very Soon</h3>
							<div class="tg-commingsooncounter">
								<div class="tg-counterbox">
									<div id="tg-days" class="tg-counter"></div>
								</div>
								<div class="tg-counterbox">
									<div id="tg-hours" class="tg-counter"></div>
								</div>
								<div class="tg-counterbox">
									<div id="tg-minutes" class="tg-counter"></div>
								</div>
								<div class="tg-counterbox">
									<div id="tg-seconds" class="tg-counter"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--************************************
					Comingsoon End
			*************************************-->
		</main>
		<!--************************************
				Main End
		*************************************-->
		<!--************************************
				Footer Start
		*************************************-->
		<footer id="tg-footer" class="tg-footer tg-haslayout">
			<div class="tg-footerbar">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<span class="tg-copyright">2017 All Rights Reserved ©
								Tailor Online</span>
							<nav class="tg-addnav">
								<ul>
									<li><a href="javascript:void(0);">Terms &amp;
											Conditions</a></li>
									<li><a href="javascript:void(0);">Privacy Policy</a></li>
									<li><a href="javascript:void(0);">How It Works</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!--************************************
				Footer End
		*************************************-->
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
	<script>
		function comingsooncounter() {
			var launch = new Date(2018, 03, 05);
			var days = $('#tg-days');
			var hours = $('#tg-hours');
			var minutes = $('#tg-minutes');
			var seconds = $('#tg-seconds');
			setDate();
			function setDate() {
				var now = new Date();
				if (launch < now) {
					days.html('<h5>Days</h5><h3>0</h3>');
					hours.html('<h5>hrs</h5><h3>0</h3>');
					minutes.html('<h5>Min</h5><h3>0</h3>');
					seconds.html('<h5>Sec</h5><h3>0</h3>');
				} else {
					var s = -now.getTimezoneOffset() * 60
							+ (launch.getTime() - now.getTime()) / 1000;
					var d = Math.floor(s / 86400);
					days.html('<h4>' + d + '</h4><h5>Day' + (d > 1 ? 's' : ''),
							'</h5>');
					s -= d * 86400;
					var h = Math.floor(s / 3600);
					hours.html('<h4>' + h + '</h4><h5>Hour'
							+ (h > 1 ? 's' : ''), '</h5>');
					s -= h * 3600;
					var m = Math.floor(s / 60);
					minutes.html('<h4>' + m + '</h4><h5>Minute'
							+ (m > 1 ? 's' : ''), '</h5>');
					s = Math.floor(s - m * 60);
					seconds.html('<h4>' + s + '</h4><h5>Second'
							+ (s > 1 ? 's' : ''), '</h5>');
					setTimeout(setDate, 1000);
				}
			}
		}
		comingsooncounter();
	</script>
</body>
</html>