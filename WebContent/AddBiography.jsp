<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
</head>
<body>

<div class="bg-success">

<div class="card bg-success">
<div class="card-header"><p class="display-4 text-center">Add a new  book on Biography, Diary or True Account</p></div>
<div class="card-body">
<form action="AddBiographyController" method="post" >
<div class="form-group text-center">
<input type="text" name="name" id="" placeholder="Book's name" class="form-control"  required /> <br />
<input type="text" name="author" id="" placeholder="Author name" class="form-control"  required /><br />
<input type="text" name="price" id="" placeholder="price" class="form-control"  required /><br />
<input type="text" name="path" id="" placeholder=" Path of the Book's image" class="form-control"  required /><br />
<input type="text" name="descp" id="" placeholder="description" class="form-control"  required /><br />
<a href="admin.jsp" class="btn btn-warning">Back</a>

<input type="submit" value="Add Book"  class="btn btn-primary"/>

</div>

</form>


</div>


</div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>