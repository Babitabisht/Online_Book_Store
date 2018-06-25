<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/Home.css" media="all" />
</head>
<body>
<%-- <c:if test="${username ==null }">
response.sendRedirect("index.jsp");
</c:if> --%>


<!-- This is my navigation bar -->

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<div class="container">
<a href="index.jsp" class="navbar-brand">Online Book Store</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" >
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbar-collapse">
<ul class="navbar-nav ml-auto" >
<li class="nav-item"><a href="" class="nav-link">Home</a></li>
<li class="nav-item"><a href="" class="nav-link">Explore</a></li>
<li class="nav-item"><a href="" class="nav-link">Create</a></li>
 </ul>
</div>
</div>
</nav> 

<!-- This is welcome section -->

<p class=" jumbotron display-3 bg-secondary text-center ">Welcome to Online Book Store <lead class="text-light text-uppercase"> <c:out  value ="${username}" /></lead></p>










<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>