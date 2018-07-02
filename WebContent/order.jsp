<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="orderError.jsp"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.* , javax.servlet.*"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
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

<%-- <%
response.addCookie(new Cookie("book_name",b_name));
response.addCookie(new Cookie("book_name",b_price)) ;
response.addCookie(new Cookie("book_name",b_author)) ;

%>  --%>

 <%  String s=request.getParameter("book_name"); %>
 <%  String p=request.getParameter("book_price"); %>
<%  String i=request.getParameter("book_image"); %>

<%=s %>
<div class="text-center">

<div class="card bg-success">
<div class="card-header"><p class="display-4 text-center">Please submit the information for successfull delivery</p></div>
<div class="card-body">
<form action="orderController" method="post" >

<input type="hidden" name="book_name" value="<%=s %>" />
<input type="hidden" name="book_price" value="<%=p %>" />
<input type="hidden" name="book_image" value="<%=i %>" />



<div class="form-group text-center">
<p>Enter Your Address</p> <br />
<input type="text-area" name="address" id="" placeholder="Your address" class="form-control"  required /><br />
<p>Enter Your Payment mode</p><br />
<select   name="payment-mode" id="" class="form-control">
<option value="Cash on Delivery">Cash on Delivery</option>
<option value="Through Paytm">Through Paytm</option>
<option value="Through PhonePay">Through PhonePay</option>

</select>

<input type="submit" value="Add Book"  class="btn btn-outline-light m-4"/>

</div>

</form>


</div>


</div>


</div>

</body>
</html>