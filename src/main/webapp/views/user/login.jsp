<jsp:include page="../shared/layout_.jsp"/>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<b>${message}</b>
<div> 
    <c:if test="${updatemessage != null}">
		<div class="alert-success" role="alert">
			${updatemessage}</div>
		
	</c:if>
</div>

<br>
<form action="${appName}login" method="post">


<div class="from-group">
<label> Email Address </label>
<input name="username" type="email" class="form-control">
</div>

<div class="from-group">
<label> Password </label>
<input name="password" type="password" class="form-control">
</div>

<br>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

<button type="submit" class="btn btn-primary">Submit</button>
            <a href="${appName}user/forgotpassword">Forgot Password?</a>
</form>