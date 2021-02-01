<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game Application</title>
<link rel="stylesheet" href="../css/style.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
</head>
<body>


	<h1>Game Reviews Database</h1>



	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><b>IGDB</b></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown"
				aria-controls="navbarNavDarkDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNavDarkDropdown">

			<security:authorize access="isAuthenticated()">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}user/profile">profile</a></li>
						<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}user/edit?id=<security:authentication property="principal.id"/>">edit profile</a></li>
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
				</div>
				 </security:authorize>
				 
				 			<security:authorize access="!isAuthenticated()">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}user/login">login</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}user/signup">sign up</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${appName}reviews/detail">Reviews</a></li>


					

					<li class="nav-item dropdown"><a
<<<<<<< HEAD
						class="nav-link dropdown-toggle " href="#"
						id="navbarDarkDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Games</a>
						<ul class="dropdown-menu active"
							aria-labelledby="navbarDarkDropdownMenuLink">
							<li><a class="dropdown-item "
								href="${app.name}game/index">All </a></li>
							<li><a class="dropdown-item "
								href="${app.name}game/add">Add </a></li>
						</ul></li>


=======
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Games</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="${app.name}game/index">All
							</a></li>
						</ul></li>
>>>>>>> 86d230079f56cfd1ca7c612007105cde33838aae
				</ul>
						</div>
				
				 </security:authorize>
				
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
	</nav>

<<<<<<< HEAD

	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#list').click(function(event) {
				event.preventDefault();
				$('#products .item').addClass('list-group-item');
			});
			$('#grid').click(function(event) {
				event.preventDefault();
				$('#products .item').removeClass('list-group-item');
				$('#products .item').addClass('grid-group-item');
			});
		});
	</script>
=======
>>>>>>> 86d230079f56cfd1ca7c612007105cde33838aae
</body>
</html>