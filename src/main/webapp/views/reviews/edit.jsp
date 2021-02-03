<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<form action="${appName}reviews/edit" method="post">
<label>Review description </label><input type="text" name="reviewDes" value="${reviews.reviewDes}">

<label>Rank Number: </label><input type="number" name="rate" min="1" max="5" value="${reviews.rate}">

<input type="hidden" name="id" value="${reviews.id}">
<%-- <input type="hidden" name="id" value="${user.id}">
 --%>
<input name="user" type="hidden" value="${reviews.user.id}">
 <input name="game" type="hidden" value="${reviews.game.id}">
 
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

<button type="submit"> edit the review </button>
</form> 