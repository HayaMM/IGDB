<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<link rel="stylesheet" href="css/game_details.css">

<div class="game__details">

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

<h3>Add review for ${game.gameName}</h3>
<form action="${appName}reviews/add?id=${game.id}" method="post">

	<div>
<<<<<<< HEAD
		<label>Review Description </label>
		 <input type="text" name="reviewDes">
		 <label>Rate score: </label><input type="number" name="rate" min="1" max="5">
=======
		 <label>Review description </label>
		 <input type="text" name="reviewDes"><br>
		 <label>Your rate from 1 to 5: </label><input type="number" name="rate" min="1" max="5">
>>>>>>> f3564d667d33f78a0e358566074db60946676868
	</div>
<input name="user" type="hidden" value="${user.id}">  
<input name="game" type="hidden" value="${game.id}">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

		<button type="submit">Submit</button>

</form>  
<hr><br>

<<<<<<< HEAD
</div>

<h3>Game reviews:</h3>
=======
<h3>${game.gameName} reviews:</h3>
>>>>>>> f3564d667d33f78a0e358566074db60946676868


<%--  <c:forEach items="${review.getReviews()}" var="reviews">
<div> Review Description: ${review.reviewsDes}</div>
	<div> Rate: ${review.rate} </div>
</c:forEach>  --%>

 <c:forEach items="${reviews}" var="review">
 <c:if test="${game.id == review.game.id }">
 
    <div>${review.reviewDes}</div>
	<div> ${review.rate} </div>
	<hr>
	</c:if>
</c:forEach> 


<br>
