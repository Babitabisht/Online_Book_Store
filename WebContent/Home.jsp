<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/Home.css" media="all" />

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<body>

<!-- This is my navigation bar -->

<%@ include file="header.jsp" %>

<!-- This is welcome section -->


<% 
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");

%>

<div>
<div class="row">
<div class="col-md-12">
<div>
<p class=" jumbotron display-4 bg-secondary text-center ">Welcome to Online Book Store <span class=""><lead class="text-light"> <c:out  value ="${username}" /></lead></span></p>

</div>
<!-- 

 -->
 
 <!-- carousel of books -->
 
 <div class=" text-center display-4 m-4">One Place for all your favourites</div>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="Images/tech.jpeg" alt="First slide">
       <div class="carousel-caption d-none d-md-block">
    <h5  class="text-dark">Computing or Tech Books</h5>
    <p class="text-dark">Get all the technical books here</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/openBookS.jpg" alt="Second slide">
         <div class="carousel-caption d-none d-md-block">
    <h5  class="text-light">Novel</h5>
    <p class="text-light">Obsessed with reading Biographies ? No need to be worried , we have latest arrivals</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/kindleS.jpg" alt="Third slide">'
       <div class="carousel-caption d-none d-md-block">
    <h5  class="text-light">Fiction and Literature</h5>
    <p class="text-light">We have Wide range of Books bades upon fiction and Literature</p>
  </div>
    </div>
     <div class="carousel-item">
      <img class="d-block w-100" src="Images/deskS.jpg" alt="Third slide">'
       <div class="carousel-caption d-none d-md-block">
    <h5  class="text-light">Reliogious Books</h5>
    <p class="text-light">Enlight Yourself by reading These Religious Books </div>
    </div>
    
  </div>
   <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
 
  </div>

</div>

<div class="col-md-12">

  <!-- About section -->
 
 <div>
 
<div class="bg-info about" id="about">
 <h1 class="text-center display-4 ">About</h1>
 
 <p class="text-center  p-4 mx-auto">We have a wide variety of books , we have secondary classes books ,competitive books,technical books and the latest arrivals of novels. If you are a book lover than you have landed on a right place,here are some major categories of books </p>
 <div class="row">	

<div class="col-md-3">
<a href="Biography.jsp"><img src="Images/Biographies2.jpg" alt="Tech Books" class=" img-fluid rounded-circle" />
</a>
<p class="text-center p-4">Get all the Biographies and get yourself inspired </p>
 
</div>

<div class="col-md-3">
<a href="Action.jsp"><img src="Images/harryPotter.jpeg" alt="Novel" class="img-fluid rounded-circle" />
</a>
<p class="text-center   p-4">Get all Action and Adventurous books</p>
</div>

<div class="col-md-3">
<a href="Computing.jsp"></a>
<img src="Images/Computingg.jpg" alt="Novel" class="img-fluid rounded-circle" />
<p class="text-center  p-4">Make Yourself Aware of all the latest technologies, and Be a Geek</p>

</div>

<div class="col-md-3">
<a href="Literature.jsp"><img src="Images/Literaturegg.jpg" class="img-fluid rounded-circle" alt="Novel" class="img-fluid  rounded-circle" />
</a>
<p class="text-center  p-4">Read The fiction, and Literature</p>

</div>

</div>
<div class="row">
<div class="col-md-12 text-center">

<a href="Religion.jsp"><img src="Images/Religious.jpg" alt="Religious" class="img-fluid rounded-circle" />
</a>

<p class="text-center  p-4">Get all Religion based book here , identify Your inner Spiritr</p>

</div>

</div>
 </div>
 
 </div>

</div>


<div class="col-md-12">


<!-- Feedback Section -->

<div class="bg-secondary text-center" id="feedback">
<p class="display-4 text-center p-4 text-light">Feedback</p>
<p class="text-center p-4 mx-auto text-light">Your Feedback is important for us, Tell us if there is any flaw on this site, all your suggestions are really appreciated. We really appreciate all your efforts</p>

<button class="btn btn-outline-light m-4" data-toggle="modal" data-target="#FeedbackModal">Give Feedback</button>


   <!-- Feedbacks-Modal-->
   <div class="modal fade text-dark" id="FeedbackModal">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="contactModalTitle">
        Give your valuable Feedback
      </h5>
      <button class="close" data-dismiss="modal">&times</button>

    </div>
    <div class="modal-body">
    
    
      <form action="FeedbackController"  method="post">
        <div class="form-group">
          <label for="name">Name </label>
            <input type="text" class="form-control" name="name" id="" required>
        </div>

        <div class="form-group">
          <label for="email"  required>Email</label>
            <input type="email" class="form-control" name="email" id=""  required>
        </div>

        <div class="form-group">
          <label for="message">message</label>
          <textarea name="message" rows="8" cols="80" class="form-control" required></textarea>
        </div>
        
         <input type="submit" value="submit"  class="btn btn-primary btn-block d-block float-center" />
        
      </form>
      
      
    </div>
    <div class="modal-footer">
        <!-- 
      <button class="btn btn-primary btn-block d-block float-center">Submit</button>
 -->    </div>
  </div>
</div>

   </div>


</div>

</div>


</div>

</div>

<%@ include file="footer.jsp" %>














<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>