<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<form action="${appName}game/add" method="post">
<label>Game's Name: </label><input type="text" name="gameName">
<label>Cover of the game: </label><input type="text" name="cover">
<!-- <label>Rank Number: </label><input type="number" name="rankNum" min="1" max="5"> -->
<label>Game's Company: </label><input type="text" name="companyName">
<label>Game's Console: </label><input type="text" name="console">
<label>Game's release date: </label><input type="date" name="releaseDate">
<label>Category: </label><input type="text" name="category">
<label>Game's Description: </label><input type="text" name="description">
<label>Game's demo: </label><input type="text" name="demo">
<input name="user" type="hidden" value="${user.id}">
<button type="submit"> Add the Game </button>
</form>