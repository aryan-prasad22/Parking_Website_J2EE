<%@page import="dto.PlaceRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Booking</title>
<%@include file = "UserHeader.jsp" %>
<style>
h2{
margin-top:6%;
}

</style>

</head>
<body>
<%
	String uu = (String) session.getAttribute("user");
	if (uu == null)
		response.sendRedirect("home.jsp");
	else {
	%>
<% PlaceRegister p = (PlaceRegister) request.getAttribute("PlaceRegister"); %>

    <div class="t">
    <h2>Details of user - <%=p.getFname() %></h2>
  <table>
    <tbody>
      <tr>
        <td>Name</td>
        <td>
          <ul>
            <li><%=p.getFname() %></li>
            
          </ul>
        </td>
      </tr>
      <tr>
        <td>Phone</td>
        <td>
          <ul>
            <li><%=p.getPhone() %></li>

          </ul>
        </td>
      </tr>
      <tr>
        <td>Email</td>
        <td>
          <ul>
            <li><%=p.getEmail() %></li>

          </ul>
        </td>
      </tr>
      <tr>
        <td>Vehicle</td>
        <td>
          <ul>
            <li><%=p.getVehicle() %></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>Parking available for (hrs)          .......... :</td>
        <td>
          <ul>
            <li><%=p.getAvailablefor() %></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>Price</td>
        <td>
          <ul>
            <li><%=p.getPrice()%></li>
          </ul>
        </td>
      </tr>
    <tr>
        <td>Date</td>
        <td>
          <ul>
            <li><%=p.getDatee()%></li>
          </ul>
        </td>
      </tr>
    <tr>
        <td>Enterance Time</td>
        <td>
          <ul>
            <li><%=p.getEnter() %></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>Exit Time</td>
        <td>
          <ul>
            <li><%=p.getExit() %></li>
          </ul>
        </td>
      </tr>
    <tr>
        <td>CCTV</td>
        <td>
          <ul>
            <li><%=p.getCctv() %></li>
          </ul>
        </td>
      </tr>
       <tr>
        <td>Square</td>
        <td>
          <ul>
            <li><%=p.getSquare()%></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>Address</td>
        <td>
          <ul>
            <li><%=p.getAddress()%></li>
          </ul>
        </td>
      </tr>
      <tr>
        <td>Location</td>
        <td>
          <ul>
            <li><%=p.getLocation() %></li>
          </ul>
        </td>
      </tr>
    </tbody>
    </table>    
  </div>
  <%
	}
	%>
</body>
</html>