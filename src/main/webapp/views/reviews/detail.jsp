<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp"/>


<c:forEach items="${reviews.getReviews()}" var="review">
	<div> Review Description: ${review.reviewsDes}</div>
	<div> Rate: ${review.rate} </div>
	<hr>
</c:forEach>