<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.* , javax.servlet.*"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Orders</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />

<link rel="stylesheet" href="customstyles/adminImage.css" media="all" />
</head>
<body>
<%@ include file="headerBook.jsp" %>


<% 
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");

%>

<div style="margin-top: 100px;" class="text-center bg-primary " > 

<h2>Here are Your Orders</h2>
</div>

<%  String u=(String)session.getAttribute("username"); %>

<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />
<sql:query dataSource="${db }"  var="rs" >
select * from orders where username='<%=u %>'
</sql:query>
<div class="mb-5">
<c:forEach    var="b"  items="${rs.rows }">
<div class="mb-5">
<div class="row">

<div class="col-md-3 text-center img-fluid imgg ">
<img class="img-fluid imgg" src="<c:out value="${b.book_image}"></c:out>" />
</div>

<div class="col-md-2 text-center">
<p> Book name: ${b.book_name }</p>
</div>

<div class="col-md-1 text-center">
<p> Book Price is : ${b.book_price }</p>
</div>

<div class="col-md-2 text-center">
<p> Date of buying ${b.date_of_buying }</p>
</div>

<div class="col-md-2 text-center">
<p> Payment Mode : ${b.payment_mode}</p>
</div>

<div class="col-md-2 text-center">
<p>Address :  ${b.address }</p>
</div>




</div>

</div>
<hr />
</c:forEach>
</div>

<div  style="margin-top: 150px;">
<%@ include file="footer.jsp"  %></div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>