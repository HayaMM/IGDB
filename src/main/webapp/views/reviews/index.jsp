<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<table>
<!--  -->
<tr>
<th>Review description</th> 
<th>Rank number</th>

<th>Modify</th>
</tr>
<c:forEach items="${review}" var="reviews">
<tr>
<td>${reviews.reviewDes}</td>
<td>${reviews.rate}</td>


 <td><a href="${appName}game/edit?id=${reviews.id}">edit</a>place holder <a href="${appName}game/delete?id=${reviews.id}">delete</a>
</td>

</tr>
</c:forEach>
</table>
