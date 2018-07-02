<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />

<link rel="stylesheet" href="customstyles/Home.css" media="all" />

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">


<!-- This is my navigation bar -->

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<a href="#" class="navbar-brand float-left"><i class="fas fa-book"></i>&nbsp;Online Book Store</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" >
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbar-collapse">
<ul class="navbar-nav ml-auto" >

<li class="nav-item"><a href="yourOrders.jsp" class="nav-link"><p class="small text-light"><i class="fas fa-home"></i>Home</p></a></li>

    
<li class="nav-item dropdown"><a href="" class="nav-link  dropdown-toggle" data-toggle="dropdown" id="navbar-collapse"><p class="small"> <i class="fas fa-filter"></i>Shop by Category</p></a>
<div class="dropdown-menu" >
<a href="Biography.jsp" class="dropdown-item" id="tollfree">Biographies, Diaries & True Accounts</a>
<a href="Action.jsp" class="dropdown-item" id="email">Action & Adventure</a>
<a href="Computing.jsp" class="dropdown-item" id="email">Computing, Internet & Digital Media</a>
<a href="Literature.jsp" class="dropdown-item" id="email">Literature & Fiction</a>
<a href="Religion.jsp" class="dropdown-item" id="email">Religion</a>

</div>
    </li>
    
    
<li class="nav-item "><a href="yourOrders.jsp" class="nav-link"><p class="small text-light">Your Orders</p></a></li>
    
<li class="nav-item"><a href="#about" class="nav-link"><p class="small text-light">About</p></a></li>
    
<li class="nav-item"><a href="#feedback" class="nav-link"><p class="small text-light">Feedback</p></a></li>

<li class="nav-item"><a href="cart.jsp" class="nav-link"><p class="small text-light"> <i class="fas fa-shopping-cart"></i>Cart</p></a></li>

<li class="nav-item"><a href="account.jsp" class="nav-link"> <p class="small text-light"><i class="far fa-user"></i> Acccount</p></a></li>
<li class="nav-item"><a href="logout.jsp" class="nav-link"><p class="small text-light"><i class="fas fa-sign-out-alt"></i>Logout</p></a></li>


 </ul>
</div>

</nav> 



</body>
</html>