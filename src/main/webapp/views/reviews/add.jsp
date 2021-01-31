<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp"/>

<form action="${appName}reviews/add" method="post">

	<div class="form-group">
		<label>Review Description </label>
		 <input type="text" name="reviewDes" class="form-control">
		 <label>input your evaluate from 1 to 5 </label>
		 <input type="text" name="rate" class="form-control">
	</div>

<!-- <div class="form-group">
<h2>Star Rating</h2>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</div>  -->

	<div class ="form-group">
		<label>Reviews</label>
		<select name="reviews" class="form-control" >
			<c:forEach items="${reviews}" var="review">
				<option value="${review.id}"> ${review.reviewDes} </option>
			</c:forEach>	
		</select>
	</div>
	
			<input name="user" type="hidden" value="${user.id}">

		<button type="submit" class="btn btn-primary">Submit</button>

</form>
