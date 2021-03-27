<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ClothMart - Try & Buy Clothes</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
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
<!-- Theme CSS Files -->
<link rel="stylesheet" href="userResources/css/main.css">
<link rel="stylesheet" href="userResources/css/color.css">
<link rel="stylesheet" href="userResources/css/responsive.css">
<%@include file="../components/common_css_js.jsp"%>
<%@include file="../components/cart.jsp"%>

<script src="userResources/js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>

	<!--************************************
			Wrapper Start
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">

		<%@include file="header.jsp"%>

		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
				<div class="row">
					<div id="tg-twocolumns" class="tg-twocolumns">

						<div class="col-xs-12 col-sm-4 col-md-5 col-lg-3 pull-left">
							<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-list-group">
									<x:if test="${subcategoryName eq 'All Products'}">
										<a href="getAllProducts"
											class="list-group-item active list-group-item-action">All
											Products</a>
									</x:if>
									<x:if test="${subcategoryName ne 'All Products'}">
										<a href="getAllProducts"
											class="list-group-item list-group-item-action">All
											Products</a>
									</x:if>
									<x:forEach var="i" items="${subcategoryList}">
										<x:if test="${i.sid eq subcategoryId}">
											<a href="getProduct?sid=${i.sid}"
												class="list-group-item list-group-item-action active subcategory-item">${i.name}</a>
										</x:if>
										<x:if test="${i.sid ne subcategoryId}">
											<a href="getProduct?sid=${i.sid}"
												class="list-group-item list-group-item-action subcategory-item">${i.name}</a>
										</x:if>
									</x:forEach>
								</div>
							</aside>
						</div>

						<div class="col-xs-12 col-sm-8 col-md-7 col-lg-9 pull-right">
							<div class="row">
								<div id="tg-content" class="tg-content">
									<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
										<div class="tg-pagehead">
											<h2 id="subcategoryName">${subcategoryName}</h2>
											<div class="tg-description">
												<p>${subcategoryDescription}</p>
											</div>
										</div>
									</div>
									<div class="tg-products tg-productgrid">
										<x:forEach var="i" items="${productsList}">
											<div class="col-xs-6 col-sm-6 col-md-6 col-lg-4">
												<div class="tg-product" style="height: 420px;">
													<figure class="tg-productimg">
														<img src="${i.imageUrl}" alt="${i.imageFileName}" style="height: 264px">
														<figcaption>
															<div class="tg-hoverimglink">
																<img src="userResources/images/only_logo.png"
																	alt="image description"> <a
																	href="productdetail?pid=${i.pid}"> <span>View
																		Detail</span> <i class="fa fa-angle-right"></i>
																</a>
															</div>
														</figcaption>
													</figure>
													<div class="tg-productcontent">
														<div class="tg-producttitle">
															<h3>
																<a href="productdetail?pid=${i.pid}">${i.name}</a>
															</h3>
														</div>
														<div class="tg-rating">
															<span>Sold By: ${i.retailer.shopName}</span>
														</div>
														<div class="tg-price">
															<h4>
																<a href="javascript:void(0);">&#8377; ${i.price}</a>
															</h4>
														</div>
													</div>
												</div>
											</div>
										</x:forEach>
									</div>
									<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
										<nav class="tg-pagination">
											<ul>
												<li class="tg-prevpage"><a href="#"><i
														class="fa fa-angle-left"></i></a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li class="tg-active"><a href="#">5</a></li>
												<li>...</li>
												<li><a href="#">10</a></li>
												<li class="tg-nextpage"><a href="#"><i
														class="fa fa-angle-right"></i></a></li>
											</ul>
										</nav>
									</div>
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
		src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
	<script src="userResources/js/jquery.flipster.min.js"></script>
	<script src="userResources/js/owl.carousel.min.js"></script>
	<script src="userResources/js/pogoslider.js"></script>
	<script src="userResources/js/jquery-ui.js"></script>
	<script src="userResources/js/countTo.js"></script>
	<script src="userResources/js/appear.js"></script>
	<script src="userResources/js/gmap3.js"></script>
	<script src="userResources/js/main.js"></script>
	<script>
		/* $(".subcategory-item").click(function() {

			$(".subcategory-item").html("HM");
			
		}); */
		/* $(".list-group-item").click(function() {

			// Select all list items 
			var listItems = $(".list-group-item");

			// Remove 'active' tag for all list items 
			for (let i = 0; i < listItems.length; i++) {
				listItems[i].classList.remove("active");
			}

			// Add 'active' tag for currently selected item 
			this.classList.add("active");
		}); */
	</script>
</body>

</html>