<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<b>Game's Name:</b> ${game.gameName} <br>
<b>Cover of the game:</b><br>
<img src="${game.cover}">
<br />

<b>Rank Number:</b> ${game.rankNum} <br />

<b>Game's Company:</b> ${game.companyName} <br />
<b>Game's Console:</b> ${game.console} <br />
<b>Game's release date:</b> ${game.releaseDate} <br />
<b>Category:</b>${game.category} <br>
<b>Game's Description:</b> ${game.description} <br />
<b>Game's demo:</b><br />
<iframe width="420" height="345" src="${game.demo}"></iframe> 

<hr><br>

 <h3>Add review for this Game:</h3>
<form action="${appName}reviews/add" method="post">

	<div>
		<label>Review Description </label>
		 <input type="text" name="reviewDes">
		 <label>Rate score: </label>
		 <input type="number" name="rate" min="1" max="5">
	</div>
<input name="user" type="hidden" value="<security:authentication property="principal.id"/>">
<input name="game" type="hidden" value="${game.id}">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<button type="submit">Submit</button>
		

</form>  
<hr><br>



<h3>Game reviews:</h3>


<%--  <c:forEach items="${review.getReviews()}" var="reviews">
<div> Review Description: ${review.reviewsDes}</div>
	<div> Rate: ${review.rate} </div>
</c:forEach>  --%>

<%--  <c:forEach items="${reviews}" var="review">
 <c:if test="${game.id == review.game.id }">
 
    <div>${review.reviewDes}</div>
	<div> ${review.rate} </div>
	</c:if>
</c:forEach>  --%>

<c:forEach items="${game.getReviews()}" var="review">

	<div class="cards">
		<div class="card">
			<div class="card__content"><p>${review.reviewDes}</p></div>
			<div class="card__content"><p>${review.rate}</p></div>
			<div><a href="${appName}game/detail?id=${game.id}" class="card__link">View</a></div>
			</div>
		</div>
</c:forEach>



<br>
