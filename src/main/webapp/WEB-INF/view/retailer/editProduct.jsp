<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Add Product</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="../adminResources/css/app.min.css">
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
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<jsp:include page="header.jsp"></jsp:include>

			<jsp:include page="menu.jsp"></jsp:include>

			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<f:form method="post" action="updateProduct"
										modelAttribute="productData" enctype="multipart/form-data">
										<div class="card-header">
											<h4>Add Product</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label for="category"> Category </label>
												<f:select class="form-control" path="category.cid"
													required="true" id="category">
													<option selected disabled>Select Category</option>
													<x:forEach items="${categoryList}" var="i">
														<x:if test="${i.status eq true}">
															<f:option value="${i.cid}">${i.name}</f:option>
														</x:if>
													</x:forEach>
												</f:select>
											</div>
											<div class="form-group">
												<label for="category"> Sub category </label>
												<f:select class="form-control" path="subcategory.sid"
													required="true" id="subcategory">
													<option selected disabled>Select Sub category</option>
													<x:forEach items="${subcategoryList}" var="i">
														<x:if test="${i.status eq true}">
															<f:option value="${i.sid}">${i.name}</f:option>
														</x:if>
													</x:forEach>
												</f:select>
											</div>
											<div class="form-group">
												<label>Product Name</label>
												<f:input class="form-control" required="true" path="name"
													id="name" />
											</div>

											<div class="form-group">
												<label>Product Description</label>
												<f:textarea class="form-control" path="description"
													id="productDescription"></f:textarea>
											</div>
											<div class="form-group">
												<label>Product Color</label>
												<f:input class="form-control" required="true" path="color"
													id="color" />
											</div>
											<div class="form-group">
												<label>Product Price</label>
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<span class="input-group-text">&#8377;</span>
													</div>
													<f:input class="form-control" aria-label="Amount"
														path="price" type="number" required="true" id="price" />
													<div class="input-group-append">
														<span class="input-group-text">.00</span>
													</div>
												</div>
											</div>

											<div class="form-group">
												<label>Product Quantity</label>
												<f:input class="form-control" required="true"
													path="quantity" type="number" id="quantity" />
											</div>
											<div class="form-group">
												<label>Product Image</label> <br /> <img alt=""
													src="${productData.imageUrl}" width="200px" height="200px">
											</div>
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#exampleModal">Upload
												new image</button>
											<x:set var="pid" value="${productData.pid}"></x:set>
											<f:hidden path="pid" />
											<f:hidden path="imageFileName"
												value="${productData.imageFileName}" />
											<f:hidden path="imageUrl" value="${productData.imageUrl}" />
										</div>


										<div class="card-footer text-right">
											<button class="btn btn-primary">Submit</button>
										</div>
									</f:form>
								</div>
							</div>

						</div>
					</div>
				</section>
				<!-- Modal with form -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="formModal" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="formModal">Upload New Image</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<f:form action="updateImage" method="post"
									enctype="multipart/form-data" modelAttribute="productData">
									<div class="form-group">
										<input type="file" class="form-control" name="file"
											required="true">
									</div>
									<f:input type="hidden" path="quantity" />
									<f:input type="hidden" path="name" />
									<f:input type="hidden" path="category.cid" />
									<f:input type="hidden" path="subcategory.sid" />
									<f:input type="hidden" path="description" />
									<f:input type="hidden" path="color" />
									<f:input type="hidden" path="price" />
									<f:input type="hidden" path="pid" />
									<input type="submit"
										class="btn btn-primary m-t-15 waves-effect">
								</f:form>
							</div>
						</div>
					</div>
				</div>

			</div>

			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="../adminResources/js/app.min.js"></script>
	<!-- JS Libraries -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>
	<!-- Tiny MCE -->
	<script
		src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"
		referrerpolicy="origin"></script>
	<script>
		tinymce.init({
			selector : '#productDescription'
		});
	</script>
</body>

</html>