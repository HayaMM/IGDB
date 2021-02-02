<jsp:include page="../shared/layout_.jsp"/>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div> 
    <c:if test="${error != null}">
		<div class="text-danger" role="alert">
			${error}</div>
		
	</c:if>
</div>
<div> 
    <c:if test="${message != null}">
		<div class="alert-success" role="alert">
			${message}</div>
		
	</c:if>
</div>
<h1 >Forgot Password</h1>
	<form action="${appName}user/forgotpassword" method="post" >


		<div>
			<p>We will be sending a reset password link to your email.</p>
		</div>
		<div>
			<p>
				<input type="email" name="emailAddress" class="form-control"
					placeholder="Enter your e-mail" required autofocus />
			</p>
			<p class="text-center">
				<input type="submit" value="Send" class="btn btn-primary" />
			</p>
		</div>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

	</form>

