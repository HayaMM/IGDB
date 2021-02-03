<jsp:include page="../shared/layout_.jsp" />

<form action="${appName}user/edit" method="post" enctype="multipart/form-data">



	<div class="form-group">
	
		<label>First Name</label><input type="text" name="firstName"
			value="${user.firstName}" class="form-control">
	</div>
	<div>
		<label>Last Name</label><input type="text" name="lastName"
			Value="${user.lastName}" class="form-control">
	</div>


	<div class="from-group">
		<label> Select Role </label> <select name="userRole"
			class="form-control">
			<option value="ROLE_ADMIN">Admin</option>
			<option value="ROLE_USER">User</option>
		</select>
	</div>
	<br> <input name="passWord" type="hidden" value="${user.passWord}">
	<input name="id" type="hidden" value="${user.id}"> 
	<input name="emailAddress" type="hidden" value="${user.emailAddress}">

	<br>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<button type="submit" class="btn btn-primary">SUBMIT</button>
</form>