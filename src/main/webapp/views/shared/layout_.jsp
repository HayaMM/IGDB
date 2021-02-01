<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game Application</title>
<link rel="stylesheet" href="../css/style.css">
<script src="js/myjs.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>


	<h1>Game Reviews Database</h1>



	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">IGDB</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<security:authorize access="isAuthenticated()">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}user/profile">profile</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}logout">logout</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}reviews/detail">Reviews</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Games</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="${app.name}game/index">All
							</a></li>
					<li><a class="dropdown-item" href="${app.name}game/add">Add
							</a></li>
						</ul></li>
				</ul>
				 </security:authorize>
				 
				 			<security:authorize access="!isAuthenticated()">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}login">login</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}user/signup">sign up</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}reviews/detail">Reviews</a></li>


					

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Games</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="${app.name}game/index">All
							</a></li>
						</ul></li>
				</ul>
				 </security:authorize>
				
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>



</body>
</html>