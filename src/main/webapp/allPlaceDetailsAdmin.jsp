<%@page import="dto.PlaceRegister"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | All Place Details</title>
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
margin-left:-22%;
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
	ArrayList<PlaceRegister> li = (ArrayList<PlaceRegister>)request.getAttribute("LIST");
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
<th>Name</th>
<th>phone</th>
<th>Email</th>
<th>Date</th>
<th>Enter</th>
<th>Exit</th>
<th>Vehicle</th>
<th>Hours</th>
<th>Price</th>
<th>CCTV</th>
<th>Square</th>
<th>Address</th>
<th>Location</th>
<th>DELETION</th>
</tr>
</thead>
<tbody>
<%
for (PlaceRegister p: li){
%>

<tr>
<td><%=p.getFname() %></td>
<td><%=p.getPhone() %></td>
<td><%=p.getEmail() %></td>
<td><%=p.getDatee() %></td>
<td><%=p.getEnter() %></td>
<td><%=p.getExit() %></td>
<td><%=p.getVehicle() %></td>
<td><%=p.getAvailablefor() %></td>
<td><%=p.getPrice() %></td>
<td><%=p.getCctv() %></td>
<td><%=p.getSquare() %></td>
<td><%=p.getAddress() %></td>
<td><%=p.getLocation() %></td>
<td><a href="delete_Place?parkID=<%=p.getIdparkplace() %>" class="btn btn-danger" onclick="return confirm('Are You Sure To Delete This Record?')">DELETE</a></td>

</tr>


					<%
					}
					%>
</tbody>
 <tfoot>
 <tr>
<th>Name</th>
<th>phone</th>
<th>Email</th>
<th>Date</th>
<th>Enter</th>
<th>Exit</th>
<th>Vehicle</th>
<th>Hours</th>
<th>Price</th>
<th>CCTV</th>
<th>Square</th>
<th>Address</th>
<th>Location</th>
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