<%@page import="dto.ParkerRegister"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | All Parker Details</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css">
</head>
<%@include file ="adminHeader.jsp" %>
<script defer src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script defer src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script defer src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap4.min.js"></script>
<script defer src="scriptTable.js"></script>
<style>
table{
margin-left:-10%;
}
</style>

<body>
	<%
	String uu = (String) session.getAttribute("user");
	if (uu == null)
		response.sendRedirect("home.jsp");
	else {
	%>

	<%
	ArrayList<ParkerRegister> li = (ArrayList<ParkerRegister>)request.getAttribute("LIST");
	%>
	<h1>
			WELCOME!
			<%=uu%></h1>
<h1>STUDENTS DETAILS FORM</h1>
<%String m = (String)request.getAttribute("msg");
if(m!=null)
	out.println("<h2>" + m + "</h2>");
%>
<% if(li!=null){
%>
<div class="container">
 <table id="example" class="table table-striped table-bordered" style="width:100%">
 <thead>
 <tr class="thead-dark">
<th>First Name </th>
<th>Last Name </th>
<th>Phone</th>
<th>Email</th>
<th>Vehicle</th>
<th>Plate Number</th>
<th>Car Model</th>
<th>Color</th>
<th>Date</th>
<th>Hours</th>
<th>Enter</th>
<th>Exit</th>
<th>DELETION</th>
</tr>
</thead>
<tbody>
<%
for (ParkerRegister pr: li){
%>

<tr>
<td><%=pr.getFname() %> </td>
<td><%=pr.getLname() %></td>
<td><%=pr.getPhone() %></td>
<td><%=pr.getEmail() %></td>
<td><%=pr.getVehicle() %></td>
<td><%=pr.getPlate() %></td>
<td><%=pr.getCarmodel() %></td>
<td><%=pr.getColor() %></td>
<td><%=pr.getDate() %></td>
<td><%=pr.getHrs() %></td>
<td><%=pr.getEnter() %></td>
<td><%=pr.getExit() %></td>
<td><a href="delete_Parker?id=<%=pr.getId() %>" class="btn btn-danger" onclick="return confirm('Are You Sure To Delete This Record?')">DELETE</a></td>

</tr>

<%
}
%>
</tbody>
<tfoot>
<tr>
<th>First Name </th>
<th>Last Name </th>
<th>Phone</th>
<th>Email</th>
<th>Vehicle</th>
<th>Plate Number</th>
<th>Car Model</th>
<th>Color</th>
<th>Date</th>
<th>Hours</th>
<th>Enter</th>
<th>Exit</th>
<th>DELETION</th>
</tr>
</tfoot>
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