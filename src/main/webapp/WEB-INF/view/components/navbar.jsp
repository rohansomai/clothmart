<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt"%>

<nav class="navbar navbar-expand-lg navbar-dark custom-bg">
	<div class="container">

		<x:if test="${sessionScope.loggedIn eq null }">
			<a class="navbar-brand" href="/">ClothMart</a>
		</x:if>

		<x:if test="${sessionScope.loggedIn.role eq 'admin' }">
			<a class="navbar-brand" href="adminDashboard">ClothMart</a>
		</x:if>

		<x:if test="${sessionScope.loggedIn.role eq 'retailer' }">
			<a class="navbar-brand" href="retailerDashboard">ClothMart</a>
		</x:if>

		<x:if test="${sessionScope.loggedIn.role eq 'user' }">
			<a class="navbar-brand" href="/">ClothMart</a>
		</x:if>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">

				<x:if test="${sessionScope.loggedIn eq null }">
					<li class="nav-item active"><a class="nav-link" href="/">Home
							<span class="sr-only">(current)</span>
					</a></li>
				</x:if>

				<x:if test="${sessionScope.loggedIn.role eq 'admin' }">
					<li class="nav-item active"><a class="nav-link"
						href="adminDashboard">Home <span class="sr-only">(current)</span>
					</a></li>
				</x:if>

				<x:if test="${sessionScope.loggedIn.role eq 'retailer' }">
					<li class="nav-item active"><a class="nav-link"
						href="retailerDashboard">Home <span class="sr-only">(current)</span>
					</a></li>

				</x:if>

				<x:if test="${sessionScope.loggedIn.role eq 'user' }">
					<li class="nav-item active"><a class="nav-link" href="/">Home
							<span class="sr-only">(current)</span>
					</a></li>
				</x:if>



				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Categories </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>

			<x:if test="${sessionScope.loggedIn eq null}">

				<ul class="navbar-nav ml-auto">

					<li><a href="#" data-toggle="modal" data-target="#cartModal">
							<i class="fa fa-cart-plus text-white mt-2 mx-3"
							style="font-size: 20px"> <span style="font-size: 20px;"
								class="cart-items">( 5 )</span></i>
					</a></li>

					<li><a class="btn btn-warning mr-2" href="userRegistration">Sign
							Up</a></li>

					<li><a class="btn btn-success" href="login">Login</a></li>
				</ul>

			</x:if>

			<x:if test="${sessionScope.loggedIn ne null}">
				<ul class="navbar-nav ml-auto">
					<li><a href="#" data-toggle="modal" data-target="#cartModal">
							<i class="fa fa-cart-plus text-white mt-2 mx-3"
							style="font-size: 20px"> <span style="font-size: 20px;"
								class="cart-items">( 5 )</span></i>
					</a></li>
					<li><span class="btn custom-bg text-white">${sessionScope.loggedIn.email}(${sessionScope.loggedIn.role})</span></li>
					<li><a class="btn btn-success" href="signOut">Sign Out</a></li>
				</ul>
			</x:if>

		</div>
	</div>
</nav>