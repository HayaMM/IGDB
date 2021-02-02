<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />


<b>Game's Name:</b> ${game.gameName} <br>
<b>Cover of the game:</b><br>
<img src="${game.cover}" width="200" height="300"> <br>

<b>Rank Number:</b> ${game.rankNum} <br>
<b>Game's Company:</b> ${game.companyName} <br>
<b>Game's Console:</b> ${game.console} <br>
<b>Game's release date:</b> ${game.releaseDate} <br>
<b>Category:</b>${game.category} <br>
<b>Game's Description:</b> ${game.description} <br>
<b>Game's demo:</b><br />
<iframe width="420" height="345" src="${game.demo}"></iframe> 

<hr><br>

 <h3>Add review for this Game:</h3>
<form action="${appName}reviews/add" method="post">

	<div>
		<label>Review Description </label>
		 <input type="text" name="reviewDes">
		 <label>Rate score: </label><input type="number" name="rate" min="1" max="5">
	</div>
<input name="user" type="hidden" value="${user.id}"> 
<input name="game" type="hidden" value="${game.id}">
		<button type="submit">Submit</button>

</form>  
<hr><br>

<h3>Game reviews:</h3>


<%--  <c:forEach items="${review.getReviews()}" var="reviews">
<div> Review Description: ${review.reviewsDes}</div>
	<div> Rate: ${review.rate} </div>
</c:forEach>  --%>

 <c:forEach items="${reviews}" var="review">
 <c:if test="${game.id == review.game.id }">
 
    <div>${review.reviewDes}</div>
	<div> ${review.rate} </div>
	</c:if>
</c:forEach> 


<br>
