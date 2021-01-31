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



</body>
</html>