<jsp:include page="../shared/layout_.jsp"/>

<form action="${appName}reviews/add" method="post">

	<div class="form-group">
		<label>Review Description </label>
		 <input type="text" name="reviewDes" class="form-control">

	</div>
	<br />
	
	<label> Rate this game from 5 </label>
	<select class="form-select" aria-label="Default select example">
  <option selected>select</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
  <option value="4">Four</option>
  <option value="5">Five</option>
</select>

<!-- <div class="form-group">
<h2>Star Rating</h2>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</div>  -->


			<input name="user" type="hidden" value="${user.id}">
<br />
		<button type="submit" class="btn btn-primary">Submit</button>

</form>
