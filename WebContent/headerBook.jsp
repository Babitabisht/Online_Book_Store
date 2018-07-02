<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header Books</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

<style>

</style>
</head>
<body class="bg-secondary">

<%-- 
<% 
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");

%> --%>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<div class="container">
<a href="#" class="navbar-brand"><i class="fas fa-book"></i> &nbsp;Online Book Store</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" >
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbar-collapse">
<ul class="navbar-nav ml-auto" >

<li class="nav-item dropdown"><a href="Home.jsp" class="nav-link  id="navbar-collapse"><p class="small"><i class="fas fa-home"></i>Home</p></a>

    </li>
    
    
<li class="nav-item dropdown"><a href="" class="nav-link  dropdown-toggle" data-toggle="dropdown" id="navbar-collapse"><p class="small">Shop by Category</p></a>
<div class="dropdown-menu" >
<a href="Biography.jsp" class="dropdown-item" id="tollfree">Biographies, Diaries & True Accounts</a>
<a href="Action.jsp" class="dropdown-item" id="email">Action & Adventure</a>
<a href="Computing.jsp" class="dropdown-item" id="email">Computing, Internet & Digital Media</a>
<a href="Literature.jsp" class="dropdown-item" id="email">Literature & Fiction</a>
<a href="Religion.jsp" class="dropdown-item" id="email">Religion</a>

</div>
    </li>
    
<li class="nav-item"><a href="yourOrders.jsp" class="nav-link"> <p class="small">Your Order</p></a></li>
<li class="nav-item"><a href="cart.jsp" class="nav-link"> <p class="small"><i class="fas fa-shopping-cart"></i>Cart</p></a></li>
<li class="nav-item"><a href="account.jsp" class="nav-link"><p class="small"><i class="far fa-user"></i>Acccount</p></a></li>
<li class="nav-item"><a href="logout.jsp" class="nav-link"><p class="small"><i class="fas fa-sign-out-alt"></i>Logout</p></a></li>


 </ul>
</div>
</div>
</nav> 
<!-- 
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
 -->
</body>
</html>