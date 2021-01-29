<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<form action="${appName}game/add" method="post">
<label>Game's Name: </label><input type="text" name="gameName" value="${game.gameName}">
<label>Cover of the game: </label><input type="text" name="cover" value="${game.cover}">
<label>Rank Number: </label><input type="number" name="rankNum" min="1" max="5" value="${game.rankNum}">
<label>Game's Company: </label><input type="text" name="companyName" value="${game.companyName}">
<label>Game's Console: </label><input type="text" name="console" value="${game.console}">
<label>Game's release date: </label><input type="date" name="releaseDate" value="${game.releaseDate}">
<label>Category: </label><input type="text" name="category" value="${game.category}">
<label>Game's Description: </label><input type="text" name="description" value="${game.description}">
<label>Game's demo: </label><input type="text" name="demo" value="${game.demo}">
<input type="hidden" name="id" value="${game.id}">
<button type="submit"> edit the Game </button>
</form>