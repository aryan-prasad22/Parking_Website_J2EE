<%@page import="dto.ContactRegister"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | All ContactUs Details</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css">
<style type="text/css">
table{
margin-left:-8%;
}
</style>
</head>

<%@include file ="adminHeader.jsp" %>
<script defer src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script defer src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script defer src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>
<script defer src="scriptTable.js"></script>
<body>
	<%
	String uu = (String) session.getAttribute("user");
	if (uu == null)
		response.sendRedirect("home.jsp");
	else {
	%>

	<%
	ArrayList<ContactRegister> li = (ArrayList<ContactRegister>)request.getAttribute("LIST");
	%>
	
		<h1>
			WELCOME!
			<%=uu%></h1>

<%String m = (String)request.getAttribute("msg");
if(m!=null)
	out.println("<h2>" + m + "</h2>");
%>
<% if(li!=null){
%>
<div class="container">
<h1 style="margin-top:50px; align-text:"center";">User Contact Us Form Details</h1>
<table id="example" class="table table-striped table-bordered" style="width:100%">
<thead>
<tr class="thead-dark">
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Subject</th>
<th>Message</th>
<th>DELETION</th>
</tr>
</thead>
<tbody>
<%
for (ContactRegister cr: li){
%>
<tr>
<td><%=cr.getIdcontact() %> </td>
<td><%=cr.getName() %></td>
<td><%=cr.getEmail() %></td>
<td><%=cr.getSubject() %></td>
<td><%=cr.getMessage()%></td>
<td><a href="delete_Contact?id=<%=cr.getIdcontact() %>" class="btn btn-danger" onclick="return confirm('Are You Sure To Delete This Record?')">DELETE</a></td>

</tr>

					<%
					}
					%>
<tfoot>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Subject</th>
<th>Message</th>
<th>DELETION</th>
</tr>
</tfoot>
</tbody>
</table>
<%
}else{
	out.println("<h2> Records Not Available </h2>");
}
%>
</div>
<%} %>
</body>
</html>