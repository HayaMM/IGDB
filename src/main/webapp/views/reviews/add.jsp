  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />

<form action="${appName}reviews/add" method="post">
<label>Review description: </label><input type="text" name="reviewDes">

<label>Rank Number: </label><input type="number" name="rate" min="1" max="5"> 

<input name="user" type="hidden" value="${user.id}">
<button type="submit"> Add the Review </button>
</form>  