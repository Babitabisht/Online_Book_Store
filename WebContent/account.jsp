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
<title>Your Account</title>
<link rel="stylesheet" href="css/bootstrap.css" media="all" />
<link rel="stylesheet" href="customstyles/adminImage.css" media="all" />
</head>
<body>
<%@ include file="headerBook.jsp" %>
<%  String u=(String)session.getAttribute("username"); %>

<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  url="jdbc:oracle:thin:@localhost:1521:xe" user="web" password="Online_Book_shopping" />
<sql:query dataSource="${db }"  var="rs" >
select * from  loginAndSignUp where Username='<%=u %>'
</sql:query>

<c:forEach var="s" items="rs.rows">

<div class="text-center">

<p class="display-4"><c:out value="${s.Username}" ></c:out></p>
</div>
<div class="display-4 text-center" >
${s.FirstName }
</div>
<div class="display-4 text-center">
${s.LastName}
</div>

<%-- <div class="display-4 text-center">
${s.FirstName } &nbsp ${s.LastName}
</div>
 --%>
<div class="display-4 text-center">
${s.Email }
</div>

<div class="display-4 text-center">
${s.Contact }
</div>





</c:forEach>


<%@ include file="footer.jsp"  %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>