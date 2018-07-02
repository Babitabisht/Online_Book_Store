  <%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.* , javax.servlet.*"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Literature</title>
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

<div class="bg-warning  text-center mt-5"><h2 class="display-3">Literature & Fiction</h2></div>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />
<sql:query dataSource="${db }"  var="rs" >
select * from Literature
</sql:query>

<div class="bg-secondary">

<c:forEach  var="b"  items="${rs.rows }">
<div>
<div class="row">
<div class="col-md-3 text-center">
<img src="<c:out value="${b.image }"></c:out>" alt="Biography" class="img img-fluid imgg" /> <br /><br />

<span class="float-left">
<form action="order.jsp" method="post">
 <input type="hidden" name="book_image" value="<c:out value="${b.image }"></c:out>" />
 
<input type="hidden" name="book_name" value="<c:out value="${b.name}"></c:out>" />
<input type="hidden" name="book_price" value="<c:out value="${b.price }"></c:out>" />

<input type="submit"   class="btn btn-outline-light" value="Buy Now" />

</form>
</span>
<span>
<form action="cartController" method="post">

<input type="hidden" name="book_image" value="<c:out value="${b.image }"></c:out>" />

<input type="hidden" name="book_name" value="<c:out value="${b.name}"></c:out>" />
<input type="hidden" name="book_price" value="<c:out value="${b.price }"></c:out>" />

<input type="submit" class="btn btn-outline-light" value="Add to cart" />

</form>

</span>

|<%--  <button   value="<c:out value="${b.name }" ></c:out>" class="btn btn-outline-light m-4"> Buy Now </button>
  --%>

</div>
<div class="col-md-2">
<p class="text-center"><c:out value="${b.name }"></c:out></p>

</div>
<div class="col-md-2">
<p class="text-center"><c:out value="${b.author }"></c:out></p>

</div>

<div class="col-md-2">
<p class="text-center"><c:out value="${b.price }"></c:out></p>

</div>

<div class="col-md-2 text-center">
<p class="text-center"><c:out value="${b.descp }"></c:out></p>
<button class="btn btn-outline-light m-4"  data-toggle="modal" data-target="#description">Know More</button>

   <div class="modal fade text-dark" id="description">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="contactModalTitle">
        Description about <c:out value="${a.name}" ></c:out>
      </h5>
      <button class="close" data-dismiss="modal">&times</button>

    </div>
    <div class="modal-body">
    
    <c:out value="${b.detail_descp }" ></c:out>
      
      
    </div>
    <div class="modal-footer">
        <!-- 
      <button class="btn btn-primary btn-block d-block float-center">Submit</button>
 -->    </div>
  </div>
</div>

   </div>
<hr />
</div>


</div>

</div>



</c:forEach>


</div>


<%@ include file="footer.jsp" %>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>


</body>
</html>