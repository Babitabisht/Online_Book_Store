<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Admin Errors</title>
<link rel="stylesheet" href="css/bootsrap.css" media="all" />

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

<div class="bg-secondary text-center">

<p class="text-light">
>OOps!!!.....Something went wrong Either this book has been Added by the admin or something else has happened please move to the feedback form and try again
</p>
<a href="admin.jsp" class="btn btn-primary">Click here</a>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>