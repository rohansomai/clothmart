<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Add Sub category</title>
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
									<f:form method="post" action="saveSubcategory"
										modelAttribute="subcategoryData">
										<div class="card-header">
											<h4>Add Sub category</h4>
										</div>
										<div class="card-body">

											<div class="form-group">
												<label for="category"> Category </label>
												<f:select class="form-control" path="category.cid"
													required="true">
													<option selected disabled>Select Category</option>
													<x:forEach items="${categoryList}" var="i">
														<x:if test="${i.status eq true}">
															<f:option value="${i.cid}">${i.name}</f:option>
														</x:if>
													</x:forEach>
												</f:select>
											</div>
											<div class="form-group mb-0">
												<label>Sub category Name</label>
												<f:input class="form-control" required="true" path="name" />
											</div>

											<div class="form-group mb-0">
												<label>Sub category Description</label>
												<f:textarea class="form-control" path="description"
													required="true"></f:textarea>
											</div>
<%-- 											<f:hidden path="category.cid" />
 --%>											<f:hidden path="sid" />
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

			</div>

			<jsp:include page="footer.jsp"></jsp:include>

		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="../adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="../adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="../adminResources/js/custom.js"></script>
	<script>
		$(document).ready(function() {
			iziToast.error({
				title : 'Hello, world!',
				message : 'This awesome plugin is made by iziToast',
				position : 'topRight'
			});
		});
	</script>
</body>

</html>