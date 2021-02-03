<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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

<h3>Add review for ${game.gameName}</h3>
<form action="${appName}reviews/add?id=${game.id}" method="post">

	<div>
		 <label>Review description </label>
		 <input type="text" name="reviewDes"><br>
		 <label>Your rate from 1 to 5: </label><input type="number" name="rate" min="1" max="5">
	</div>
<input name="user" type="hidden" value="${user.id}">  
<input name="game" type="hidden" value="${game.id}">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<button type="submit">Submit</button>

</form>  
<hr><br>
 
<a href="${appName}reviews/index?id=${game.id}">My reviews</a>
 <br>
 <h3>${game.gameName} reviews:</h3>


<%--  <c:forEach items="${review.getReviews()}" var="reviews">
<div> Review Description: ${review.reviewsDes}</div>
	<div> Rate: ${review.rate} </div>
</c:forEach>  --%>
<c:forEach items="${reviews}" var="review">
 <c:if test="${game.id == review.game.id && user.id == review.user.id}">
    <div>${review.reviewDes}</div>
	<div> ${review.rate} </div>
	
	
	<hr>
	</c:if>
<%-- 	</c:if> --%>
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
