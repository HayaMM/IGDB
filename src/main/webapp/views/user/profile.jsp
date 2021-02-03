<jsp:include page="../shared/layout_.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<br>
<b>Hi Again : ${user.firstName} ${user.lastName} </b><br>
<b>Your Role in this web site is :${user.userRole}</b><br>
<b>Your your current email address :${user.emailAddress}</b><br>

<c:forEach items="${user.getGame()}" var="game">

	<div class="cards">
		<div class="card">
			<img class="card__image" src="${game.cover}" alt="">
			<div class="card__content"><p>${game.gameName}</p></div>
			<div class="card__info"><div><i class="material-icons">rank</i>${game.rankNum}</div>
			<div><a href="${appName}game/detail?id=${game.id}" class="card__link">View</a></div>
			</div>
		</div>
	</div>
</c:forEach>






