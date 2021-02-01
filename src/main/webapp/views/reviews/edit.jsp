<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<form action="${appName}reviews/index" method="post">
<label>Review description </label><input type="text" name="reviewDes" value="${reviews.reviewDes}">

<label>Rank Number: </label><input type="number" name="rate" min="1" max="5" value="${reviews.rate}">

<input type="hidden" name="id" value="${reviews.id}">
<button type="submit"> edit the Game </button>
</form> 