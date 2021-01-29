<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<table>
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
</tr>
<c:forEach items="${games}" var="game">
<tr>
<%-- <td><a href="${appName}game/detail?id=${game.id}">${game.gameName}</a> </td> --%>
</tr>
</c:forEach>
</table>