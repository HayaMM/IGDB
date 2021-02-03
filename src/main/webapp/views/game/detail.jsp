<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../shared/layout_.jsp" />
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


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
<form action="${appName}reviews/add?id=${game.id}" method="post">

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

 
<a href="${appName}reviews/index?id=${game.id}">My reviews</a>
 <br>
 <h3>${game.gameName} reviews:</h3>







<c:forEach items="${game.getReviews()}" var="review">
<b>${rank}</b>
	<div class="cards">
		<div class="card">
			<div class="card__content"><p>${review.reviewDes}</p></div>
			<div class="card__content"><p>${review.rate}</p></div>
			<div><a href="${appName}game/detail?id=${game.id}" class="card__link">View</a></div>
			</div>
		</div>
</c:forEach>


<%-- <c:forEach items="${reviews}" var="review">
<tr>
<td>${review.reviewDes}</td> 

<td>${review.rate}</td>
	<security:authorize access="isAuthenticated()">
				<td><a href="${appName}reviews/edit?id=${review.id}">Edit</a> 
				<security:authorize access="hasRole('ADMIN')">
			 | <a href="${appName}reviews/delete?id=${review.id}">Delete</a></td>
			</security:authorize>
			</security:authorize>


</tr>
</c:forEach> --%>
<br>
