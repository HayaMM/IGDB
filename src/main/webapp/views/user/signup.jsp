<jsp:include page="../shared/layout_.jsp"/>


<form action="${appName}user/signup" method="post">

<div class="from-group">
<label> First Name </label>
<input name="firstName" type="text" class="form-control">
</div>

<div class="from-group">
<label> Last Name </label>
<input name="lastName" type="text" class="form-control">
</div>

<div class="from-group">
<label> Email Address </label>
<input name="emailAddress" type="email" class="form-control">
</div>

<div class="from-group">
<label> Password </label>
<input name="Password" type="password" class="form-control">
</div>
<br>

<div class="from-group">
<label> Select Role </label>
<select name="userRole" class="form-control">
<option value="ADMIN">Admin</option>
<option value="USER">User</option>
</select>
</div>
<br>
<button type="submit" class="btn btn-primary">Submit</button>
<button type="reset"  class="btn btn-primary">Clear</button>

</form>