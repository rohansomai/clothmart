<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<%@include file="../components/common_css_js.jsp"%>
</head>

<body class="reg-bg">

	<%@include file="../components/navbar.jsp"%>

	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container">
		<div class="row justify-content-center mt-5 mb-5">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body px-5">
						<h3 class="my-3 text-center">Sign Up here!!</h3>

						<f:form action="saveUserRegistration" modelAttribute="form-data"
							method="post">

							<x:if test="${sessionScope.msg ne null}">
								<div class="alert alert-success" id="reg-msg" role="alert">
									${sessionScope.msg}</div>
								<x:remove var="msg" scope="session" />
							</x:if>

							<div class="alert alert-danger alert-dismissible fade show"
								role="alert" style="display: none" id="error-msg">
								Please Enter all the required details first!!
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

							<div class="form-row">
								<div class="col">
									<label for="firstName">First Name<span
										style="color: red">*</span></label>
									<f:input path="firstName" class="form-control reg-form"
										required="required" />
								</div>

								<div class="col">
									<label for="lastName">Last Name<span style="color: red">*</span></label>
									<f:input path="lastName" class="form-control reg-form"
										required="true" />
								</div>
							</div>
							<div class="form-group">
								<label for="email">Email<span style="color: red">*</span></label>
								<f:input path="loginVO.email" id="email" type="email"
									class="form-control reg-form" required="true" />
							</div>
							<div class="form-row">

								<div class="col">
									<label for="password">Password<span style="color: red">*</span></label>
									<f:input type="password" path="loginVO.password" id="password"
										class="form-control reg-form" required="true" />
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
									<f:input path="pincode" class="form-control reg-form"
										required="true"
										onKeyPress="if(this.value.length==6) return false;" />
								</div>
							</div>

							<f:hidden path="id" />
							<f:hidden path="loginVO.id" />

							<div class="container text-center mt-2">
								<button type="submit" id="submit-btn"
									class="btn btn-primary mr-2">Register</button>
								<button type="reset" class="btn btn-warning">Reset</button>
							</div>
						</f:form>
					</div>
				</div>
			</div>
		</div>

	</div>


</body>
</html>