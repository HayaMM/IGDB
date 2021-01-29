<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game Application</title>
</head>
<body>
<h1>${appName}</h1>
<a href="${appName}user/login">log in</a>
<a href="${appName}user/signup">Sign UP</a>
<a href="${appName}reviews/detail">Reviews</a>
<!-- if the user log in only -->
<a href="${appName}user/profile">profile</a>
<a href="${appName}reviews/add">Add review</a>
<a href="${appName}user/logout">logout</a>


</body>
</html>