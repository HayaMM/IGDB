<jsp:include page="../shared/layout_.jsp"/>

<b>${message}</b>
<br>
<form action="${appName}user/login" method="post">


<div class="from-group">
<label> Email Address </label>
<input name="emailAddress" type="email" class="form-control">
</div>

<div class="from-group">
<label> PassWord </label>
<input name="passWord" type="password" class="form-control">
</div>

<br>
<button type="submit" class="btn btn-primary">Submit</button>
</form>