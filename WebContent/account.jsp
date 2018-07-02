<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.* , javax.servlet.*"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" errorPage="standardError.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Account</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/adminImage.css" media="all" />
</head>
<body>


<% 
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");

%>

<%@ include file="headerBook.jsp" %>
<%  String u=(String)session.getAttribute("username"); %>

<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />
<sql:query dataSource="${db }"  var="rs" >
select * from loginAndSignUp where Username='<%=u %>'
</sql:query>
<div  style=" margin-top: 100px; margin-bottom: 100px;">


</div>

<h1>Your Account Details :</h1>
<c:forEach  var="b"  items="${rs.rows }">

<div class="row">
<div class="col-md-3 text-center">
	<p> Username : <c:out value="${b.Username }" ></c:out></p>

</div>

<div class="col-md-2 text-center">
	<p>First name: <c:out value="${b.FirstName }" ></c:out></p>

</div>

<div class="col-md-2 text-center">
	<p> Last name : <c:out value="${b.LastName }" ></c:out></p>

</div>


<div class="col-md-3 text-center">
	<p>Email : <c:out value="${b.Email }" ></c:out></p>

</div>

<div class="col-md-2 text-center">
	<p> Contact : <c:out value="${b.Contact }" ></c:out></p>

</div>









</div>

</c:forEach>

<%@ include file="footer.jsp"  %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>