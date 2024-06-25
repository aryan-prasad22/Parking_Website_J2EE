<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | Home</title>
</head>
<%@include file="adminHeader.jsp" %>
<style>
body{
 width: 100%;
   
   background-image:
      url("images/admin-bg.png");
     background-size: 100%;
    background-repeat: no-repeat fixed;
     background-position: 0px -300px;
    
}
</style>
<body>
	<%
	String uu = (String) session.getAttribute("user");
	if (uu == null)
		response.sendRedirect("home.jsp");
	else {
	%>
	<h1>
		WELCOME!
		<%=uu%></h1>
	<%
	}
	%>
</body>
</html>


