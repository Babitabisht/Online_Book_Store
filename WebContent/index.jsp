<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Book Store</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="CustomCSS/login.css" media="all" />
<style>

body{
background: url('Images/book.jpg') no-repeat center  center  fixed;
background-size: cover;

}


</style>

</head>
<body>
<div style="background-color:#95afc0;">
<div class="jumbotron" style="background-color: #95afc0;"> <div class="display-4 text-center "> Your Ultimate Destination to find all your Favourite books</div> </div>
</div>
<div class="bg">
<div class="container" >


<div class="row">
<div class="col-md-6">
<div class="d-flex flex-row d-none d-md d-md-block">
  <div class="p-4 align-self-start" >
    <i class="fa fa-angle-double-right"></i>
  </div>
  <div class="p-4 align-self-end">
     <p class="text-center text-light">Books are the essence of life , one good friend is equal to hundred friends . </p>
  </div>
</div>
<div class="d-flex flex-row">
  <div class="p-4 align-self-start" >
    <i class="fa fa-angle-double-right"></i>
  </div>
  <div class="p-4 align-self-end">
     <p class="text-center text-light">Here ,at OBS you will find all your favourite book at one place</p>
  </div>
</div>
<div class="d-flex flex-row">
  <div class="p-4 align-self-start" >
    <i class="fa fa-angle-double-right"></i>
  </div>
  <div class="p-4 align-self-end">
    <p class="text-justified text-light">All your favourite book at one place , read whenever you want, at your suitable place</p>
  </div>
</div>

</div>

<div class="col-md-6 ">

<div class="card">
<div class="card bg-primary text-center card-form">
<div class="card-header"><h1 class="display-4 text-center">Login</h1></div>
	<div class="card-body bg-primary">
	
	<form action="LoginController" method="post">
	
	<div class="form-group">
	
	<input type="text" name="user" id="user"     class="form-control"  placeholder=" User Name"  required /> <br />
	
	<input type="password" name="pass" id="pass"  class="form-control" placeholder="Your Password"    required  /> <br />
	
	<input type="submit" value="SignIn" class="btn btn-success btn-block"  />
	<a href="SignUp.jsp" class="btn btn-danger btn-block">SignUp</a>
	
	</div>
	
	
	</form>
	
	
	
	</div>
	</div>

</div>




</div>


</div>


</div>

</div>





<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script>

if(user.length < 6){
console.log('length is not sufficient');
	alert("Username should be greater than six characters")
}

</script>

</body>
</html>