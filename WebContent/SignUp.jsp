<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>

<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/login.css" />
<link rel="stylesheet" href="customstyles/signup.css" media="all" />

<style>
body{

background: url('Images/bible.jpg') no-repeat center  center  fixed;
background-size: cover;

}
/* .card1{
	
	opacity:0.9 ;
} */

</style>



</head>
<body>

<div class="container">
<div class="row justify-content-center">

<div class="col-md-6 d-center">

<div class="card bg-primary card1">
<div class="card-header"><div class="display-4 text-center text-light">SignUp</div></div>

<div class="card-body">
<form  name="registration"  action="SignUpController"  onSubmit="return formValidation();"    method="post">

<div class="form-group">

<input type="text" name="username"  class="form-control"  placeholder="Username"  required /> <br />
<input type="text" name="firstname"  class="form-control" placeholder="First Name"  required /><br />
<input type="text" name="lastname"  class="form-control" placeholder="Last Name" required /><br />
<input type="email" name="email"  class="form-control" placeholder="Email" required /><br />
<input type="date" name="dob"  class="form-control" placeholder="Date of Birth"  required /><br />
<input type="number" id="id1" name="contact"  class="form-control" placeholder="contact number"   min="1000000000" max="9999999999" required /><br />
<p class="text-danger" id="demo"></p>
<div class="radio">
<label for="male">
<input type="radio" name="radiogroup"  value="msex" /><span class="text-light">Male</span>
</label>
<label for="female">
 <input type="radio" name="radiogroup"  value="fsex" required /> <span class="text-light">Female</span>
</label>
</div>

<input type="password" name="pass"  class="form-control" placeholder="Password"  required /><br />

<input type="submit" value="submit" class="btn btn-success btn-block" onclick="myFunction()" required />



</div>

</form>


</div>

</div>

</div>

</div>






</div>


<script>
function myFunction() {
    var inpObj = document.getElementById("id1");
    if (!inpObj.checkValidity()) {
        document.getElementById("demo").innerHTML = inpObj.validationMessage;
    }
}
</script>

<script src="js/Validation.js"></script>


</body>
</html>