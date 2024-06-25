<%@page import="dto.UserRegistration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | Edit User Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
<%@include file="adminHeader.jsp" %>
<style type="text/css">
    	body {
  
    color: #2e323c;
    background: #f5f6fa;
    position: relative;
    height: 100%;
}
.account-settings .user-profile {
    margin: 0 0 1rem 0;
    padding-bottom: 1rem;
    text-align: center;
}
.account-settings .user-profile .user-avatar {
    margin: 0 0 1rem 0;
}
.account-settings .user-profile .user-avatar img {
    width: 90px;
    height: 90px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 100px;
}
.account-settings .user-profile h5.user-name {
    margin: 0 0 0.5rem 0;
}
.account-settings .user-profile h6.user-email {
    margin: 0;
    font-size: 0.8rem;
    font-weight: 400;
    color: #9fa8b9;
}
.account-settings .about {
    margin: 2rem 0 0 0;
    text-align: center;
}
.account-settings .about h5 {
    margin: 0 0 15px 0;
    color: #007ae1;
}
.account-settings .about p {
    font-size: 0.825rem;
}
.form-control {
    border: 1px solid #cfd1d8;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    font-size: .825rem;
    background: #ffffff;
    color: #2e323c;
}

.card {
    background: #ffffff;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border: 0;
    margin-bottom: 1rem;
}
.container{
margin-top:3%;
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
	<%
	UserRegistration ur = (UserRegistration) request.getAttribute("UR");
	%>
<form action="editUserCtrl" method="post">
<div class="container">
<div class="row gutters">
<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
<div class="card h-100">
<div class="card-body">
<div class="account-settings">
<div class="user-profile">
	<div class="user-avatar">
			<img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Maxwell Admin">
	</div>
<h5 class="user-name"><%=ur.getFname() %> <%=ur.getLname() %></h5>
	</div>
		<div class="about">
<h5>Email</h5>
<p><%=ur.getEmail() %></p>
<h5>Password</h5>
<p><%=ur.getPwd() %></p>

		</div>
</div>
</div>
</div>
</div>
<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
<div class="card h-100">
<div class="card-body">
<div class="row gutters">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
<h6 class="mb-2 text-primary">Personal Details</h6>
</div>
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
<div class="form-group">
<label for="f">First Name</label>
<input type="text" class="form-control" value="<%=ur.getFname() %>"  name ="fname" placeholder="Enter your first name" required>
</div>
</div>
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
<div class="form-group">
<label for="l">Last Name</label>
<input type="text" class="form-control" value="<%=ur.getLname() %>"  name ="lname" placeholder="Enter your last name" required>
</div>
</div>
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
<div class="form-group">
<label for="phn">Phone</label>
<input type="tel" class="form-control" value="<%=ur.getPhone() %>"  name ="phone" placeholder="Enter phone number" required>
</div>
</div>
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
<div class="form-group">
<label for="DB">DoB</label>
<input type="date" class="form-control" id="dateee"  value="<%=ur.getDob() %>"  name ="dob" placeholder="Date" required>
</div>
</div>
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
<div class="form-group">
    <label for="gnder">Gender</label> <br>  
    <input type="radio" id="gender" name="gender" value="male" checked="checked"/> Male <br>  
    <input type="radio" id="gender" name="gender" value="female"/> Female <br/>   
    <input type="radio" id="gender" name="gender" value="other"/> Other <br/>  
</div>
</div>

</div>
<div class="row gutters">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
<h6 class="mt-3 mb-2 text-primary">Address</h6>
</div>
<div class="col-xl-12 col-lg-6 col-md-10 col-sm-6 col-12">
<div class="form-group">
<label for="Street">Street / City / State</label>
<input type="text" class="form-control" value="<%=ur.getAddress() %>"  name ="address" placeholder="Enter your full address" required>
</div>
</div>

</div>
<div class="row gutters">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
    <h6 class="mt-3 mb-2 text-primary">Password</h6>
    </div>
    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
    <div class="form-group">
    <label for="pass">Password</label>
    <input type="text" class="form-control"  value="<%=ur.getPwd() %>" name ="pwd" placeholder="Enter new password" required>
    </div>
    </div>
   
    </div>
<div class="row gutters">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
<div class="text-right">
<button type="submit" class="btn btn-primary">Update</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
<%} %>
</body>
<script>
    var todayDate = new Date();
    var month = todayDate.getMonth()+1; //04 - current month
    var year = todayDate.getUTCFullYear() - 18; //2021 - current year
    var tdate = todayDate.getDate(); // 27 - current date 
    if (month < 10) {
        month = "0" + month //'0' + 4 = 04
    }
    if (tdate < 10) {
        tdate = "0" + tdate;
    }
    var maxDate = year + "-" + month + "-" + tdate;
    document.getElementById("dateee").setAttribute("max", maxDate);
    console.log(maxDate);
  </script>
</html>