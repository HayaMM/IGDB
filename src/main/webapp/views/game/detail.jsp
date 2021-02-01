<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
Game's Name: ${game.gameName} <br>
Cover of the game: <img src="${game.cover}" width="200" height="300"> <br>
Rank Number: ${game.rankNum} <br>
Game's Company: ${game.companyName} <br>
Game's Console: ${game.console} <br>
Game's release date: ${game.releaseDate} <br>
Category: ${game.category} <br>
Game's Description: ${game.description} <br>
Game's demo: <iframe width="420" height="345" src="${game.demo}"></iframe> 

<hr><br>
<h3>Add review for this Game:</h3>
<form action="${appName}reviews/index" method="post">

	<div>
		<label>Review Description </label>
		 <input type="text" name="reviewDes">
		 <label>Rank Number: </label><input type="number" name="rate" min="1" max="5">
	</div>
<input name="user" type="hidden" value="${user.id}"> 
<input name="game" type="hidden" value="${game.id}">
		<button type="submit">Submit</button>

</form>
<hr><br>

<h3>Game reviews:</h3>

<c:forEach items="${review.getReview()}" var="reviews">
<div> Review Description: ${reviews.reviewsDes}</div>
	<div> Rate: ${reviews.rate} </div>
</c:forEach>

<br>
