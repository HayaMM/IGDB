<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<div class="cards">
<c:forEach items="${games}" var="game">

	
		<div class="card">
			<img class="card__image" src="${game.cover}" alt="">
			<div class="card__content">
				<p> ${game.gameName}</p>
			</div>
			<div class="card__info">
				<div>
					<i class="material-icons">rank</i>${game.rankNum}
				</div>
				
				<div>
					<a href="${appName}game/detail?id=${game.id}" class="card__link">View</a>
				</div>
				<div>
					<security:authorize access="isAuthenticated()">
					<a href="${appName}game/edit?id=${game.id}">Edit</a>

				<security:authorize access="hasRole('ADMIN')"> <a href="${appName}game/delete?id=${game.id}">Delete</a>
					</security:authorize>
				</security:authorize>
				</div>
			</div>
			<div class="card__content">
				<p> ${game.description}</p>
			</div>
		</div>

</c:forEach>

	</div>

