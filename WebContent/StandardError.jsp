<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />

<link rel="stylesheet" href="customstyles/error.css" media="all" />
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

<div class="bg-secondary text-center"><p class="display-3  text-light p-4">OOps!!!.....Something went wrong please move to the feedback form and try again</p>

<a href="Home.jsp" class="btn btn-primary">Click here</a>

</div>


</body>
</html>