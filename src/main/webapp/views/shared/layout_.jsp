<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game Application</title>
<link rel="stylesheet" href="../css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>

<h1>${appName}</h1>
<a href="${appName}user/login">log in</a>
<a href="${appName}user/signup">Sign UP</a>
<a href="${appName}reviews/add">Reviews</a>

	<h1>Game Reviews Database</h1>


	

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${appName}">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div style="text-align:right; float:right" class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${appName}user/login">login</a>
         
        </li> 
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${appName}user/signup">sign up</a>
         
        </li> 
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${appName}user/profile">profile</a>
         
        </li> 
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${appName}user/logout">logout</a>
         
        </li> 
        
      </ul>
    </div>
  </div>
</nav>



<a href="${appName}reviews/detail">Reviews</a>
<!-- if the user log in only -->
<a href="${appName}reviews/add">Add review</a>
<!-- Game -->
<a href="${appName}game/add">Add Game</a>
<a href="${appName}game/index">All Games</a>
</body>
</html>