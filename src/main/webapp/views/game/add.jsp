<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>



<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"></link>




<form class="row g-3"  action="${appName}game/add" method="post">




	<div  class="col-md-4" >
		<label class="form-label">Game's Name:</label> <input type="text"
			name="gameName" class="form-control" required>
	</div>




	<div class="col-md-4">
		<label class="form-label">Cover of the game:</label> <input
			type="text" name="cover" class="form-control" required>
	</div>

	

	<div class="col-md-4">
		<label class="form-label">Rank Number:</label> <input type="number"
			name="rankNum" min="0" max="5" class="form-control" required>
	</div>

	<!-- 	 <label>Rank Number: </label><input
		type="number" name="rankNum" min="0" max="5"> -->



	<div class="col-md-4">
		<label class="form-label">Game's Company:</label> <input type="text"
			name="companyName" class="form-control" required>
	</div>



	<div class="col-md-4">
		<label class="form-label">Game's Console:</label> <input type="text"
			name="console" class="form-control" required>
	</div>



	<div class="col-md-4">
		<label class="form-label">Game's release date:</label> <input
			type="date" name="releaseDate" class="form-control" required>
	</div>




	<div class="col-md-4">
		<label class="form-label">release date:</label> <input
			type="text" name="category" class="form-control" required>
	</div>


	<div class="col-md-4">
		<label class="form-label">Category: </label> <input type="text"
			name="category" class="form-control" required>
	</div>


	<div class="col-md-4">
		<label class="form-label">Description </label> <input type="text"
			name="description" class="form-control" required>
	</div>



	<div class="col-md-4">
		<label class="form-label">Game's demo: </label> <input type="text"
			name="demo" class="form-control" required>
			 <input name="user" type="hidden" value="<security:authentication property="principal.id"/>"> <br />
		<button class="btn btn-primary" type="submit">Add the Game</button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</div>




</form>