<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/Home.css" media="all" />

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">


<!-- This is my navigation bar -->

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<div class="container">
<a href="#" class="navbar-brand">Online Book Store</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" >
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbar-collapse">
<ul class="navbar-nav ml-auto" >

<li class="nav-item dropdown"><a href="Home.jsp" class="nav-link  dropdown-toggle" data-toggle="dropdown" id="navbar-collapse">Home</a>
<div class="dropdown-menu" aria-labelledby="#a1">

<a href="#about" class="dropdown-item" id="tollfree">About</a>
<a href="#feedback" class="dropdown-item" id="email">Feedback</a>
</div>
    </li>
    
    
<li class="nav-item dropdown"><a href="" class="nav-link  dropdown-toggle" data-toggle="dropdown" id="navbar-collapse">Shop by Category</a>
<div class="dropdown-menu" >
<a href="Biography.jsp" class="dropdown-item" id="tollfree">Biographies, Diaries & True Accounts</a>
<a href="Action.jsp" class="dropdown-item" id="email">Action & Adventure</a>
<a href="Computing.jsp" class="dropdown-item" id="email">Computing, Internet & Digital Media</a>
<a href="Literature.jsp" class="dropdown-item" id="email">Literature & Fiction</a>
<a href="Religion.jsp" class="dropdown-item" id="email">Religion</a>

</div>
    </li>
    
    
<li class="nav-item"><a href="yourOrders.jsp" class="nav-link">Your Orders</a></li>
<li class="nav-item"><a href="cart.jsp" class="nav-link">Cart</a></li>
<li class="nav-item"><a href="account.jsp" class="nav-link">Acccount</a></li>
<li class="nav-item"><a href="logout.jsp" class="nav-link">Logout</a></li>


 </ul>
</div>
</div>
</nav> 




</body>
</html>