<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<%@ taglib prefix="security"
uri="http://www.springframework.org/security/tags"%>
<table>
<!--  -->
<tr>
<th>Game's Name</th> 
<th>Cover of the game</th>
<th>Rank Number</th>
<th>Game's Company</th>
<th>Game's Console</th>
<th>Game's release date</th>
<th>Category</th>
<th>Game's Description</th>
<th>Game's demo</th>
<security:authorize access="isAuthenticated()">	
			<th>Modify</th>
		</security:authorize>

</tr>
<c:forEach items="${games}" var="game">
<tr>
<td><a href="${appName}game/detail?id=${game.id}">${game.gameName}</a></td> 
<td><img src="${game.cover}" width="200" height="300"></td>
<td>${game.rankNum}</td>
<td>${game.companyName}</td>
<td>${game.console}</td>
<td>${game.releaseDate}</td>
<td>${game.category}</td>
<td>${game.description}</td>
<td><iframe width="420" height="345" src="${game.demo}"></iframe></td>
	<security:authorize access="isAuthenticated()">
				<td><a href="${appName}game/edit?id=${game.id}">Edit</a> 
				<security:authorize access="hasRole('ADMIN')">
			 | <a href="${appName}game/delete?id=${game.id}">Delete</a></td>
			</security:authorize>
			</security:authorize>


</tr>
</c:forEach>
</table>