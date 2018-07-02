
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.* , javax.servlet.*"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="AdminError.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/Home.css" media="all" />
<link rel="stylesheet" href="customstyles/adminImage.css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">


<style>
.m{
margin-top: 100px;
}

</style>

</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

<% 
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");

%>

<!-- This is my navigation bar -->

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top ">


<div class="container">

<a href="#" class="navbar-brand float-left">Admin</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse" >
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbar-collapse">
<ul class="navbar-nav ml-auto" >
<li class="nav-item"><a href="#AvailableBooks" class="nav-link"> <p class="small text-light">Avalilable Books</p></a></li>

<li class="nav-item dropdown"><a href="" class="nav-link  dropdown-toggle" data-toggle="dropdown" id="navbar-collapse"><p class="small text-light">Add Books</p></a>
<div class="dropdown-menu" >
<a href="AddBiography.jsp" class="dropdown-item" class="nav-link  id="navbar-collapse"><p class="small">Add Biography, Diaries & True accounts</p></a>

  
    
    
<a href="AddAction.jsp" class="dropdown-item" class="nav-link  id="navbar-collapse"><p class="small">Add Action and Adventure</p></a>


    
    
<a href="AddComputing.jsp" class="dropdown-item" > <p class="small">Add Computing, Internet & digital media</p></a>
<a href="AddLiterature.jsp"  class="dropdown-item" ><p class="small">Add Literature and Fiction</p></a>
<a href="AddReligion.jsp" class="dropdown-item"  ><p class="small">Add Religious Book</p></a>


</div>
    </li>

<li class="nav-item"><a href="CheckFeedBack.jsp" class="nav-link"> <p class="small text-light">Check FeedBack</p></a></li>
<li class="nav-item"><a href="logout.jsp" class="nav-link" ><p class="small text-light"><i class="fas fa-sign-out-alt"></i>Logout</p></a>
</li>


 </ul>
</div>
</div>
</nav> 
<!-- 
This is Welcome section -->

<div class="jumbotron bg-secondary m display-4"><p class="text-center text-light">Welcome  ${username } You are in Admin PAnel </p></div>


<div id="AvailableBooks">

<p class="display-4">These are Available Books</p>
<div class="">

<div class="bg-warning  text-center"><h2>Biographies, Diaries and true account</h2></div>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />

<sql:query dataSource="${db }"  var="rs" >
select * from Biography
</sql:query>



<!-- 
Biography -->
<div id="biography">


<table class="table table-hover table-responsive table-primary table-info">
<thead class="thead-dark">

<tr>
<th>image</th>
<th>Book name</th>
<th>Author</th>
<th>Price</th>
<th>description</th>
</tr>
</thead>
<c:forEach  var="table"  items="${rs.rows}"  >
<tbody>
<tr>
<td><img class="img-fluid imgg" src="<c:out value="${table.image }"></c:out>" alt="kalam" /></td>
<td><c:out value="${table.name }"></c:out></td>
<td><c:out value="${table.author }"></c:out></td>

<td><c:out value="${table.price }"></c:out></td>

<td><c:out value="${table.descp }"></c:out></td>
</tr>


</c:forEach>
</tbody>



 </table>
 
 </div>

</div>
<!-- 
Action and Adventure -->

<div class="">


<div class="bg-warning  text-center"><h2>Add Action and Adventure</h2></div>

<div class="">
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />

<sql:query dataSource="${db }"  var="rs" >
select * from Action
</sql:query>

<div id="biography">


<table class="table table-responsive table-hover table-secondary">

<thead class="thead-dark">
<tr>
<th>image</th>
<th>Book name</th>
<th>Author</th>
<th>Price</th>
<th>description</th>
</tr>
</thead>
<c:forEach  var="table"  items="${rs.rows}"  >
<tr>
<td><img class="img-fluid imgg" src="<c:out value="${table.image }"></c:out>" alt="kalam" /></td>
<td><c:out value="${table.name }"></c:out></td>
<td><c:out value="${table.author }"></c:out></td>
<td><c:out value="${table.price }"></c:out></td>
<td><c:out value="${table.descp }"></c:out></td>
</tr>


</c:forEach>




 </table>
 
 </div>


</div>

</div>



<!-- Computing -->
<div class="">


<div class="bg-warning  text-center"><h2>Computing, Internet & digital media</h2></div>

<div class="">
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />

<sql:query dataSource="${db }"  var="rs" >
select * from Computing
</sql:query>

<div id="">


<table class="table table-responsive table-hover table-primary">

<thead class="thead-dark"><tr>
<th>image</th>
<th>Book name</th>
<th>Author</th>
<th>Price</th>
<th>description</th>
</tr>
</thead>
<c:forEach  var="table"  items="${rs.rows}"  >
<tr>
<td><img class="img-fluid imgg" src="<c:out value="${table.image }"></c:out>" alt="kalam" /></td>
<td><c:out value="${table.name }"></c:out></td>
<td><c:out value="${table.author }"></c:out></td>
<td><c:out value="${table.price }"></c:out></td>
<td><c:out value="${table.descp }"></c:out></td>
</tr>


</c:forEach>




 </table>
 
 </div>


</div>

</div>
<!-- 
Literature -->
<div class="">


<div class="bg-warning  text-center"><h2> Literature and Fiction</h2></div>

<div class="">
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />

<sql:query dataSource="${db }"  var="rs" >
select * from Literature
</sql:query>

<div id="">


<table class="table table-responsive table-hover table-warning">
<thead class="thead-dark">

<tr>
<th>image</th>
<th>Book name</th>
<th>Author</th>
<th>Price</th>
<th>description</th>
</tr>
</thead>
<c:forEach  var="table"  items="${rs.rows}"  >
<tr>
<td><img  class="img-fluid imgg" src="<c:out value="${table.image }"></c:out>" alt="kalam" /></td>
<td><c:out value="${table.name }"></c:out></td>
<td><c:out value="${table.author }"></c:out></td>
<td><c:out value="${table.price }"></c:out></td>
<td><c:out value="${table.descp }"></c:out></td>
</tr>


</c:forEach>

 </table>
 
 </div>

</div>

</div>
<!-- 
Religion -->

<div class="">


<div class="bg-warning  text-center"><h2>Religion</h2></div>

<div class="">
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />

<sql:query dataSource="${db }"  var="rs" >
select * from Religion
</sql:query>

<div id="">


<table class="table table-responsive table-hover table-success">
<thead class="thead-dark">
<tr>
<th>image</th>
<th>Book name</th>
<th>Author</th>
<th>Price</th>

<th>description</th>
</tr>
</thead>

<c:forEach  var="table"  items="${rs.rows}"  >
<tr>
<td><img class="img-fluid imgg" src="<c:out value="${table.image }"></c:out>" alt="kalam" /></td>
<td><c:out value="${table.name }"></c:out></td>
<td><c:out value="${table.author }"></c:out></td>
<td><c:out value="${table.price }"></c:out></td>
<td><c:out value="${table.descp }"></c:out></td>
</tr>


</c:forEach>

 </table>
 
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