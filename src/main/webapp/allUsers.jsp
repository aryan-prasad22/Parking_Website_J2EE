<%@page import="dto.UserRegistration"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | All Users</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css">


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
	ArrayList<UserRegistration> li = (ArrayList<UserRegistration>)request.getAttribute("LIST");
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
<th>DOB</th>
<th>Phone</th>
<th>Email</th>
<th>Gender</th>
<th>Address</th>
<th>Password</th>
<th>DELETION</th>
<th>UPDATION</th>
</tr>
</thead>
<tbody>
<%
for (UserRegistration ur: li){
%>

<tr>
<td><%=ur.getFname() %> </td>
<td><%=ur.getLname() %></td>
<td><%=ur.getDob() %></td>
<td><%=ur.getPhone() %></td>
<td><%=ur.getEmail() %></td>
<td><%=ur.getAddress() %></td>
<td><%=ur.getPwd() %></td>
<td><%=ur.getGender() %></td>
<td><a href="delete_User?userEmail=<%=ur.getEmail() %>" class="btn btn-danger" onclick="return confirm('Are You Sure To Delete This Record?')">DELETE</a></td>
<td><a href="editUserCtrl?userEmail=<%=ur.getEmail() %>" class="btn btn-primary">UPDATE</a></td>
</tr>


					<%
					}
					%>
</tbody>
<tfoot>
<tr>
<th>First Name </th>
<th>Last Name </th>
<th>DOB</th>
<th>Phone</th>
<th>Email</th>
<th>Gender</th>
<th>Address</th>
<th>Password</th>
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