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
