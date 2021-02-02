<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">




<c:forEach items="${games}" var="game">

	<div class="cards">
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
			</div>
		</div>
	</div>
</c:forEach>





<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>