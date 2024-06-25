<%@page import="dto.PlaceRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Booking Details</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
<%@include file = "UserHeader.jsp" %>
      <style>
      
.ScriptHeader {
    width: 100%;
    padding: 2em 0;
    margin-top:6%;
}

        body {
   	 background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.15)),
      url("images/bg3.png");
      background-size: 100%;
    background-repeat: no-repeat center center fixed;
    padding: 0;
    margin: 0;
    font-family: 'Lato', sans-serif;
    color: #000;
    margin-top:7%;
}

.student-profile .card {
    border-radius: 20px;
}

.student-profile .card .card-header .profile_img {
    width: 200px;
    height: 200px;
    object-fit: cover;
    margin: 10px auto;
    border: 10px solid #ccc;
    border-radius: 50%;
}

.student-profile .card h3 {
    font-size: 22px;
    font-weight: 700;
}

.student-profile .card p {
    font-size: 16px;
    color: #000;
}

.student-profile .table th,
.student-profile .table td {
    font-size: 16px;
    padding: 8px 20px;
    color: #000;
}

/*-------------------------Footer--------------------------------*/

    .footerhero {
  
   background: url("images/bg3.png") left bottom no-repeat;
background-color: rgba(0, 0, 0, 0.498) ;
   width: 100%;
   margin-top: -1.88%;
  background-size: cover;
  background-blend-mode: multiply;
  background-attachment:fixed ;
  color: rgb(255, 255, 255);
  padding: 0px 30px 18px 30px;
}
.footerhero .container1{
  justify-content: space-between;
  flex-wrap: wrap;
  flex: 1;
}
.flex{
  display: flex;
}

.container-pages ul a{
  color: inherit;
  text-decoration: none;
  color: rgba(255, 255, 255, 0.6);
  font-size: 14px;
}
.container-pages ul a:hover{
  color: #017143;
}
footer .by{
margin-top: 40px;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
}
footer .by p{
  color: rgba(255, 255, 255, 0.605);
  font-size: 14px;
}

.iconns {
  display: flex;
  column-gap: 25px;
  margin-top:35px;
  
}

.icon1 {
  width: 40px;
  height: 40px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  text-decoration: none;
  font-size: 20px;
  color: #fff;
  border-radius: 50%;
  outline: 2px solid #fff;
  transition-property:outline-offset, outline-color, background-color;
  transition-duration: .25s;
  margin-bottom:8px;
}

.icon1:hover {
  outline-offset: 4px;
}

.icon1:hover i {
  animation: shake .25s;
}

.icon--instagram:hover {
  background-image: radial-gradient(circle at 30% 107%,
          #fdf497 0%, #fdf497 5%,
          #fd5949 45%, #d6249f 60%,
          #285AEB 90%);
  outline-color: #a02d76;
}
.icon--twitter:hover {
  background-color: #1da1f2;
  outline-color: #1da1f2;
}

.icon--linkedin:hover {
  background-color: #0077b5;
  outline-color: #0077b5;
}

.icon--github:hover {
  background-color: #000000;
  outline-color: #000000;
}

@keyframes shake {
  10% {
      transform: rotate(15deg);
  }

  20% {
      transform: rotate(-15deg);
  }

  30% {
      transform: rotate(15deg);
  }

  40% {
      transform: rotate(-15deg);
  }
}

@media only screen and (max-width: 800px) {
  .footerhero{
    padding: 10px;
    display: flex;
    flex-direction: column;
  }
  .container__about h2{
    font-size: 20px;
  }
  .container__about p{
    font-size: 12px;
  }
  .container__recentpages h2{
    font-size: 20px;
  }
  .container-pages ul a{
    font-size: 12px;
  }
  footer .by p{
    font-size: 12px;
  }
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
	

            	<h1>Booking Details</h1> 
 

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              
<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="images/icons/UserProfile.jpg" alt="User Profile Picture">
            <h3><%=p.getFname() %></h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">Phone : </strong><%=p.getPhone() %></p>
            <p class="mb-0"><strong class="pr-1">Email :</strong><%=p.getEmail() %></p>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Date</th>
                <td width="2%">:</td>
                <td><%=p.getDatee()%></td>
              </tr>
              <tr>
                <th width="30%">Vehicle</th>
                <td width="2%">:</td>
                <td><%=p.getVehicle() %></td>
              </tr>
               <tr>
                <th width="30%">Price (Rupees)</th>
                <td width="2%">:</td>
                <td><%=p.getPrice()%></td>
              </tr>
            
              <tr>
                <th width="30%">Parking available for (hrs)</th>
                <td width="2%">:</td>
                <td><%=p.getAvailablefor() %></td>
              </tr>
              <tr>
                <th width="30%">CCTV</th>
                <td width="2%">:</td>
                <td><%=p.getCctv() %></td>
              </tr>
              <tr>
                <th width="30%">Enterance Time</th>
                <td width="2%">:</td>
                <td><%=p.getEnter() %></td>
              </tr>
              <tr>
                <th width="30%">Exit Time</th>
                <td width="2%">:</td>
                <td><%=p.getExit() %></td>
              </tr>
             
              <tr>
                <th width="30%">Square Name</th>
                <td width="2%">:</td>
                <td><%=p.getSquare()%></td>
              </tr>
              <tr>
                <th width="30%">Address</th>
                <td width="2%">:</td>
                <td><%=p.getAddress()%></td>
              </tr>
            </table>
          </div>
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Location Description / Landmark</h3>
          </div>
          <div class="card-body pt-0">
              <p><%=p.getLocation() %></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- partial -->
           
    		</div>
		</div>
    </div>
</section>
      <%
	}
	%>
</body>

<!-- Footer -->
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<footer class="footerhero">

        <div class="by flex">
            <p>Copyright © 2023 All Rights Reserved by Parkivia</p>
            <div class="iconns">
                <a href="#" class="icon1 icon--instagram">
                    <i class="ri-instagram-line"></i>
                </a>
                <a href="#" class="icon1 icon--twitter">
                    <i class="ri-twitter-line"></i>
                </a>
                <a href="#" class="icon1 icon--linkedin">
                    <i class="ri-linkedin-line"></i>
                </a>
                <a href="#" class="icon1 icon--github">
                    <i class="ri-github-line"></i>
                </a>
            </div>
        </div>

    </footer>
</html>