<jsp:include page="../shared/layout_.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="${appName}reviews/add" method="post">

	<div class="form-group">
		<label>Review Description </label>
		 <input type="text" name="reviewDes" class="form-control">
		 <label>input your evaluate from 1 to 5 </label>
		 <input type="text" name="rate" class="form-control">
	</div>

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
