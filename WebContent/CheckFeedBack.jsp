<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.* , javax.servlet.*"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">


</head>
<body class="bg-secondary">
<% 
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
response.setHeader("Cache-Control", "no-cache , no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");

%>

<div class="bg-dark text-light">
<p class="display-4">These are the feedback given to you by your Customers</p>

</div>

<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />

<sql:query dataSource="${db }"  var="rs" >
select * from feedback
</sql:query>


<c:forEach  var="table"  items="${rs.rows}"  >


<div class="row  bg-info">
<div class="col-md-4">

<c:out value="${table.name }"></c:out>


</div>

<div class="col-md-4">

<c:out value="${table.Email }"></c:out>


</div>

<div class="col-md-4">

<c:out value="${table.message }"></c:out>


</div>

</div><hr />
</c:forEach>
<div class="text-center"><a href="admin.jsp" class="btn btn-primary text-center">Home</a>
</div>

<%@  include  file="footer.jsp" %>

</body>
</html>