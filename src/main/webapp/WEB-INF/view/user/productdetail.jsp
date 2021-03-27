<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>${selectedProduct.name}</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="userResources/apple-touch-icon.png">
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
<%@include file="../components/common_css_js.jsp"%>
<%@include file="../components/cart.jsp"%>

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
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div id="tg-content" class="tg-content">
							<div class="tg-product tg-productdetail">
								<div class="tg-productbox">
									<div class="col-xs-12 col-sm-6 col-md-5 col-lg-4">
										<div class="tg-productgallery">
											<figure class="item">
												<img src="${selectedProduct.imageUrl}"
													alt="${selectedProduct.name}">
											</figure>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-7 col-lg-8">
										<div class="tg-producttextbox">
											<div class="tg-producttextboxhead">
												<div class="tg-leftbox">
													<h1>${selectedProduct.name}</h1>
													<span>Sold By: ${selectedProduct.retailer.shopName}</span>
												</div>
												<div class="tg-rightbox">
													<span>&#8377;${selectedProduct.price}</span> <span>Available
														In Stock</span>
												</div>
											</div>
											<div class="tg-description">
												<p>${selectedProduct.description}</p>
											</div>
											<div class="tg-producttextboxfoot">
												<!-- <a class="" href="javascript:void(0);">Add To Cart</a>
 -->
												<button class="tg-btn" id="cart${i.pid}"
													onclick="add_to_cart('${selectedProduct.pid}', '${selectedProduct.name}', '${selectedProduct.price}')">Add
													To Cart</button>
												<a class="tg-btn" href="http://127.0.0.1:5000/video_feed?keyName=${selectedProduct.modelFileName}">Try Virtually</a>
												<div class="tg-productshare">
													<span>Share:</span>
													<ul class="tg-socialicons">
														<li class="tg-facebook"><a href="javascript:void(0);"><i
																class="fa fa-facebook"></i></a></li>
														<li class="tg-twitter"><a href="javascript:void(0);"><i
																class="fa fa-twitter"></i></a></li>
														<li class="tg-linkedin"><a href="javascript:void(0);"><i
																class="fa fa-linkedin"></i></a></li>
														<li class="tg-dribbble"><a href="javascript:void(0);"><i
																class="fa fa-dribbble"></i></a></li>
														<li class="tg-rss"><a href="javascript:void(0);"><i
																class="fa fa-rss"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<%-- <div class="tg-producttabs">
									<ul class="tg-producttabnav" role="tablist">
										<!-- <li role="presentation" ><a
											href="#tg-deescription" role="tab" data-toggle="tab">Description</a></li> -->
										<li role="presentation"><a href="#tg-reviews" role="tab"
											data-toggle="tab">Reviews</a></li>
									</ul>
									<div class="tab-content tg-tabcontent">
										<div role="tabpanel" class="tab-pane fade in active"
											id="tg-description">
											<figure class="tg-alignleft">
												<img src="userResources/images/image_tshirts.jpg"
													alt="image description"
													style="height: 286px; width: 409px;">
											</figure>
											<div class="tg-description">
												<p>${selectedProduct.description}</p>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tg-reviews">
											<figure class="tg-alignright">
												<img src="userResources/images/image_tshirts.jpg"
													alt="image description"
													style="height: 286px; width: 409px;">
											</figure>
											<div class="tg-description">
												<p>Consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore etaiatiea dolore magna aliqua aseenim
													adiat minim veniam, quis nostrud exercitation ullaceoate
													laboris nisi ut aliquip ex eaommodo consequat aute irure
													dolor ina reprehenderit inchieach voluptate velit esse
													cillum dolore eufugiat aeur sint occaecat cupidatate non
													proident sunt in culpa quista.</p>
												<p>Sed ut perspiciatis unde omnis iste natus error
													sitateu voluptatem accusantium doloremque laudantium totam
													rem aperiam, eaque ipsa quae ab illo inventore veritatiset
													quasi architecto beatae vitae dicta sunt explicabo
													lokiatana poketona shonua.</p>
												<p>Nemo enim ipsam voluptatem quia voluptas sit
													aspernatur aut odit aut fugit, sed quia consequuntur magni
													dolores eos qui ratione voluptatem sequi nesciunt. Neque
													porro quisquam est, qui dolorem ipsum quia dolor sit amet,
													consectetur, adipisci velit, sed quia non numquam eius
													modita tempora incidunt ut labore et dolore magnam aliquam
													quaerat voluptatem.</p>
											</div>
										</div>
									</div>
								</div> --%>

								<div class="tg-producttabs">
									<ul class="tg-producttabnav" role="tablist">
										<li role="presentation" class="active"><a
											href="#tg-deescription" role="tab" data-toggle="tab"
											aria-expanded="true">Description</a></li>
										<li role="presentation" class=""><a href="#tg-reviews"
											role="tab" data-toggle="tab" aria-expanded="false">Reviews</a></li>
									</ul>
									<div class="tab-content tg-tabcontent">
										<div role="tabpanel" class="tab-pane fade active in"
											id="tg-deescription">
											<figure class="tg-alignleft">
												<img src="userResources/images/image_tshirts.jpg"
													alt="image description"
													style="height: 286px; width: 409px;">
											</figure>
											<div class="tg-description">
												<p>${selectedProduct.description}</p>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tg-reviews">
											<figure class="tg-alignright">
												<img src="userResources/images/image_tshirts.jpg"
													alt="image description"
													style="height: 286px; width: 409px;">
											</figure>

											<div class="tg-description">
												<x:forEach var="i" items="${feedbackList}">

													<x:set var="starCount" value="${i.starRating}"></x:set>

													<x:forEach begin="0" end="${starCount - 1}">
														<i class="fa fa-star" style="color: #6777EF"></i>
													</x:forEach>
													<h5>${i.title}</h5>
													<p style="font-size: 16px;">${i.feedback}</p>
													<div class="pull-right "
														style="margin-top: -17px; margin-right: 14px; font-style: italic;">
														<span>-</span> ${i.user.firstName}&nbsp;${i.user.lastName}
													</div>
													<br />
												</x:forEach>
												<!-- <button class="tg-btn" data-toggle="modal"
													data-target="#feedback-modal">Give your own
													feedback</button> -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- <div class="tg-relatedproducts">
								<h2>Related Products</h2>
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
										<div class="tg-product">
											<figure class="tg-productimg">
												<img src="userResources/images/products/img-01.jpg"
													alt="image description">
												<figcaption>
													<div class="tg-hoverimglink">
														<img src="userResources/images/products/img-10.png"
															alt="image description"> <a href="shopdetail.html">
															<span>View Detail</span> <i class="fa fa-angle-right"></i>
														</a>
													</div>
												</figcaption>
											</figure>
											<div class="tg-productcontent">
												<div class="tg-producttitle">
													<h3>
														<a href="shopdetail.html">Fabric Title Here</a>
													</h3>
												</div>
												<div class="tg-rating">
													<span class="tg-stars"><span></span></span>
												</div>
												<div class="tg-price">
													<h4>
														<a href="javascript:void(0);">$330</a>
													</h4>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
										<div class="tg-product">
											<figure class="tg-productimg">
												<img src="userResources/images/products/img-02.jpg"
													alt="image description">
												<figcaption>
													<div class="tg-hoverimglink">
														<img src="userResources/images/products/img-10.png"
															alt="image description"> <a href="shopdetail.html">
															<span>View Detail</span> <i class="fa fa-angle-right"></i>
														</a>
													</div>
												</figcaption>
											</figure>
											<div class="tg-productcontent">
												<div class="tg-producttitle">
													<h3>
														<a href="shopdetail.html">Fabric Title Here</a>
													</h3>
												</div>
												<div class="tg-rating">
													<span class="tg-stars"><span></span></span>
												</div>
												<div class="tg-price">
													<h4>
														<a href="javascript:void(0);">$330</a>
													</h4>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
										<div class="tg-product">
											<figure class="tg-productimg">
												<img src="userResources/images/products/img-03.jpg"
													alt="image description">
												<figcaption>
													<div class="tg-hoverimglink">
														<img src="userResources/images/products/img-10.png"
															alt="image description"> <a href="shopdetail.html">
															<span>View Detail</span> <i class="fa fa-angle-right"></i>
														</a>
													</div>
												</figcaption>
											</figure>
											<div class="tg-productcontent">
												<div class="tg-producttitle">
													<h3>
														<a href="shopdetail.html">Fabric Title Here</a>
													</h3>
												</div>
												<div class="tg-rating">
													<span class="tg-stars"><span></span></span>
												</div>
												<div class="tg-price">
													<h4>
														<a href="javascript:void(0);">$330</a>
													</h4>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
										<div class="tg-product">
											<figure class="tg-productimg">
												<img src="userResources/images/products/img-04.jpg"
													alt="image description">
												<figcaption>
													<div class="tg-hoverimglink">
														<img src="userResources/images/products/img-10.png"
															alt="image description"> <a href="shopdetail.html">
															<span>View Detail</span> <i class="fa fa-angle-right"></i>
														</a>
													</div>
												</figcaption>
											</figure>
											<div class="tg-productcontent">
												<div class="tg-producttitle">
													<h3>
														<a href="shopdetail.html">Fabric Title Here</a>
													</h3>
												</div>
												<div class="tg-rating">
													<span class="tg-stars"><span></span></span>
												</div>
												<div class="tg-price">
													<h4>
														<a href="javascript:void(0);">$330</a>
													</h4>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</main>
		<!--************************************
				Main End
		*************************************-->
		<!-- Modal with form -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="formModal" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="formModal">Upload New Image</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body"></div>
				</div>
			</div>
		</div>

		<div id="feedback-modal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<a class="close" data-dismiss="modal">×</a>
						<h3>Give Feedback</h3>
					</div>
					<form action="saveFeedback" method="post">
						<div class="modal-body">
							<div class="form-group">
								<label>Star Rating</label>
								<div class="rating">
									<input type="radio" id="star5" name="rating" value="5" /><label
										class="full" for="star5" title="Awesome - 5 stars"></label> <input
										type="radio" id="star4" name="rating" value="4" /><label
										class="full" for="star4" title="Pretty good - 4 stars"></label>
									<input type="radio" id="star3" name="rating" value="3" /><label
										class="full" for="star3" title="Meh - 3 stars"></label> <input
										type="radio" id="star2" name="rating" value="2" /><label
										class="full" for="star2" title="Kinda bad - 2 stars"></label>
									<input type="radio" id="star1" name="rating" value="1" /><label
										class="full" for="star1" title="Sucks big time - 1 star"></label>
								</div>
							</div>
							<div class="form-group">
								<label>Feedback Title</label> <input type="text"
									class="form-control" name="feedbackTitle" />
							</div>
							<div class="form-group">
								<label>Feedback</label>
								<textarea class="form-control" name="feedback" id="feedback"
									style="height: 120px"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default btn-lg"
								data-dismiss="modal">Close</button>
							<button type="submit" class="tg-btn btn-lg" id="submit">Submit
								Feedback</button>
						</div>
					</form>
				</div>
			</div>
		</div>
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
	<script src="userResources/js/script.js"></script>
</body>

</html>