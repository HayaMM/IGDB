<jsp:include page="../shared/layout_.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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


<div class="form-group">
		<label>Games</label> <select name="game" class="form-control" >
			<c:forEach items="${games}" var="game">
				<option value="${game.id}">${game.gameName}</option>
			</c:forEach>
		</select>
	</div>
	

			<input name="user" type="hidden" value="${user.id}">
		<button type="submit" class="btn btn-primary">Submit</button>

</form>
