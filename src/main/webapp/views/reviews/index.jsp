<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/layout_.jsp" />
<table>
<tr>
<th>Review description</th> 
<th>Rank number</th>

<th>Modify</th>
</tr>

<c:forEach items="${review}" var="reviews">

 <c:if test="${reviews.user.id == id}">

<tr>
<td>${reviews.reviewDes}</td>
<td>${reviews.rate}</td>


<td><a href="${appName}reviews/edit?id=${reviews.id}">edit</a>&nbsp;or&nbsp;<a href="${appName}reviews/delete?id=${reviews.id}">delete</a>

</td>

</tr>
</c:if> 
</c:forEach>

</table>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
