<jsp:include page="../shared/layout_.jsp" />

<div>
	<h2>Reset Your Password</h2>
</div>
<script type="text/javascript">
function checkPasswordMatch(fieldConfirmPassword) {
    if (fieldConfirmPassword.value != $("#password").val()) {
        fieldConfirmPassword.setCustomValidity("Passwords do not match!");
    } else {
        fieldConfirmPassword.setCustomValidity("");
    }
}
</script>
<form action="/igdb/user/reset_password" method="post">
	<input type="hidden" name="token" value="${token}" />
	<div>
			<p>
				<input type="password" name="passWord" id="password"
					class="form-control" placeholder="Enter your new password" required
					autofocus />
			</p>
			<p>
				<input type="password" class="form-control"
					placeholder="Confirm your new password" required
					oninput="checkPasswordMatch(this);" />
			</p>
			<p>
				<br> <input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<button type="submit" class="btn btn-primary">Submit</button>
			</p>
		
	</div>

</form>
