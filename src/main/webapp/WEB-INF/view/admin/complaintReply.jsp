<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Complaint Reply</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
</head>

<body>
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper
	main-wrapper-1">
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
									<f:form modelAttribute="complaintData" action="saveReply">
										<div class="card-header">
											<h4>Complaint Reply</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Complaint Subject</label>
												<f:input type="text" class="form-control" required=""
													readonly="true" path="subject" />
											</div>

											<div class="form-group mb-0">
												<label>Complaint Description</label>
												<f:textarea class="form-control" required=""
													path="description" readonly="true"></f:textarea>
											</div>

											<div class="form-group mb-0">
												<label>Complaint Reply</label>
												<f:textarea class="form-control" path="reply"
													required="true"></f:textarea>
											</div>
										</div>
										<f:hidden path="id" />
										<%-- <f:hidden path="date_and_time" />  --%>
										<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

										<f:hidden path="date_and_time" />


										<f:hidden path="user.id" />
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
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- General JS Scripts -->
	<script src="adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
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