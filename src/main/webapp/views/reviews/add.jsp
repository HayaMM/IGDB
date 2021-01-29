<jsp:include page="../shared/layout_.jsp"/>

<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.checked {
  color: orange;
}
</style> -->
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
<form action="${appName}reviews/add" method="post">

	<div class="form-group">
		<label>Review Description </label>
		 <input type="text" name="reviewDes" class="form-control">
		 <label>input your evaluate from 1 to 5 </label>
		 <input type="text" name="rate" class="form-control">
	</div>

<!-- <div class="form-group">
<h2>Star Rating</h2>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</div>  -->

		<button type="submit" class="btn btn-primary">Submit</button>

</form>
</body>
</html>