<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<%@include file = "frontHeader.jsp" %>
</head>
<style>
   /* Navbar */
.navbar-toggler-icon {
  background-color: #fff;
}


/* Customize hero section styles */
.jumbotron {
  background-image: url("images/park/carpark-4-bg.jpg");
  background-size: cover;
  background-position: center center;
  padding-top: 20rem;
  padding-bottom: 4rem;
  

}

.jumbotron2 {
 	margin-left:5%;
  background-size: cover;
  background-position: center center;
  color: black;
  padding-top: 8rem;
  padding-bottom: 4rem;
}

/* Customize about section styles */
.about-us {
  background-color: #f8f9fa;
  padding-top: 4rem;
  padding-bottom: 4rem;
}

.about-us h2 {
  font-size: 2.5rem;
  margin-bottom: 2rem;
}

/* Customize services section styles */
.services {
  padding-top: 4rem;
  padding-bottom: 4rem;
}

.services h2 {
  font-size: 2.5rem;
  margin-bottom: 2rem;
}

.card {
  border: none;
  box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
  transition: transform 0.3s ease-in-out;

}

.card:hover {
  transform: translateY(-0.8rem);
}

/* Customize contact section styles */
.contact-us {
  padding-top: 4rem;
  padding-bottom: 4rem;
}

.contact-us h2 {
  font-size: 2.5rem;
  margin-bottom: 2rem;
}

.contact-us form {
  max-width: 500px;
  margin: auto;
}

.contact-us input,
.contact-us textarea {
  border: none;
  border-bottom: 2px solid #333;
  margin-bottom: 1.5rem;
  font-size: 1.2rem;
  padding: 0.5rem;
  width: 100%;
  transition: all 0.2s ease-in-out;
}

.contact-us input:focus,
.contact-us textarea:focus {
  outline: none;
  border-color: #fb8c00;
}

.contact-us button[type="submit"] {
  background-color: #fb8c00;
  color: #fff;
  font-size: 1.2rem;
  border: none;
  border-radius: 3px;
  padding: 0.5rem 1rem;
  cursor: pointer;
  transition: all 0.2s ease-in-out;
}

.contact-us button[type="submit"]:hover {
  background-color: #f57c00;
}

/* Media Queries */
@media (max-width: 768px) {
  .navbar-collapse {
    background-color: #212121;
    padding-top: 2rem;
  }

  .navbar-nav {
    text-align: center;
  }

  .navbar-nav li {
    margin-bottom: 0.5rem;
  }

  .jumbotron {
    padding-top: 6rem;
    padding-bottom: 2rem;
  }
  .contact-us {
    padding-top: 2rem;
    padding-bottom: 2rem;
  }

 
  .contact-us h2 {
    font-size: 2rem;
    margin-bottom: 1rem;
  }

  .about-us img {
    margin-top: 2rem;
  }

  .card {
    margin-bottom: 2rem;
  }
}

@media (max-width: 550px) {
  .jumbotron {
    padding-top: 4rem;
    padding-bottom: 1rem;
  }

  .navbar-brand {
    background-color:white;
    font-size: 2rem;
  }

 .navbar {
  background-color: #343a40;
  padding: 0.5rem 1rem;
  font-size: 1.1rem;
}
.container {
  background-color: rgba(0,0,0, 0.3);
  max-width: 500px;
  margin: 0 auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  margin-top: 50px;
  box-shadow: 0px 0px 10px #999;
}
.feature{
  background-color: rgba(0,0,0, 0.3);
  max-width: 500px;
  margin: 0 auto;
  background-color: #fff;
  background-image:url(red-car.jpg);
  padding: 20px;
  border-radius: 5px;
  margin-top: 50px;
  box-shadow: 0px 0px 10px #999;
}
.nav-link {
  color: #fff;
}

.nav-link:hover {
  color: #dc3545;
}

/* Customize contact form styles */
.form-group label {
  font-weight: bold;
}

.form-control:focus {
  border-color: #dc3545;
  box-shadow: none;
}

.btn-primary {
  background-color: #dc3545;
  border-color: #dc3545;
}

.btn-primary:hover {
  background-color: #c82333;
  border-color: #c82333;
}
}


    * {
  font-family: Nunito, sans-serif;
}

.responsive-cell-block {
  min-height: 75px;
}

.text-blk {
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
  margin-left: 0px;
  line-height: 25px;
}

.responsive-container-block {
  min-height: 75px;
  height: fit-content;
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  margin-top: 0px;
  margin-right: auto;
  margin-bottom: 0px;
  margin-left: auto;
  justify-content: space-evenly;
}

.team-head-text {
  font-size: 48px;
  font-weight: 900;
  text-align: center;
}

.team-head-text {
  line-height: 50px;
  width: 100%;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 50px;
  margin-left: 0px;
}

.container {
  max-width: 1380px;
  margin-top: 60px;
  margin-right: auto;
  margin-bottom: 60px;
  margin-left: auto;
  padding-top: 0px;
  padding-right: 30px;
  padding-bottom: 0px;
  padding-left: 30px;
}

.card {
  text-align: center;
  box-shadow: rgba(0, 0, 0, 0.05) 0px 4px 20px 7px;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 30px;
  padding-right: 25px;
  padding-bottom: 30px;
  padding-left: 25px;
 
}

.card-container {
  width: 280px;
  margin-top: 0px;
  margin-right: 10px;
  margin-bottom: 25px;
  margin-left: 10px;
}

.name {
  margin-top: 20px;
  margin-right: 0px;
  margin-bottom: 5px;
  margin-left: 0px;
  font-size: 18px;
  font-weight: 800;
}

.position {
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 10px;
  margin-left: 0px;
}

.feature-text {
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 20px;
  margin-left: 0px;
  color: rgb(122, 122, 122);
  line-height: 30px;
}

.social-icons {
  display: flex;
  justify-content: space-between;
}
img.icon{
    margin-right: 15px;
}
.team-image-wrapper {
  clip-path: circle(50% at 50% 50%);
  width: 190px;
  height: 190px;
}

.team-member-image {
  max-width: 100%;
}

@media (max-width: 500px) {
  .card-container {
    width: 100%;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 25px;
    margin-left: 0px;
  }
}
.display-4{
  position: absolute;
  margin-top: -11%;
  margin-left: 50%;
  color: #212121;
  font-weight: 700;
}
.lead{
  position: absolute;
  margin-top: -6%;
  margin-left: 50.8%;
  color: #212121;
  font-weight: 700;
}
.card1-title{
font-weight: 600;
}







/*-------------------------Footer--------------------------------*/

    .footerhero {
  
   background: url("images/park/carpark-4-bg.jpg");
background-color: rgba(15, 45, 72, 0.747);
   width: 100%;
   margin-top: 5%;
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

.iconn--instagram:hover {
  background-image: radial-gradient(circle at 30% 107%,
          #fdf497 0%, #fdf497 5%,
          #fd5949 45%, #d6249f 60%,
          #285AEB 90%);
  outline-color: #a02d76;
}
.iconn--twitter:hover {
  background-color: #1da1f2;
  outline-color: #1da1f2;
}

.iconn--linkedin:hover {
  background-color: #0077b5;
  outline-color: #0077b5;
}

.iconn--github:hover {
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

<body>


  <!-- Hero Section -->
  <section class="jumbotron text-center">
    <h1 class="display-4">Parkivia</h1>
    <p class="lead">AnyTime AnyWhere </p>
  </section>

  <!-- About Section 1 -->
  <section class="jumbotron2 text-center">
    <div class="row">
      <div class="col-md-5">
        <h2>About Us</h2>
          <p align="justify">The proposed project is a smart parking booking system that provides its user an easy way of reserving a parking space 
        online using web portal. It overcomes the problem of finding a parking space in the city that unnecessary consumes time.
         Hence, this project offers a web application based reservation system where user can view various parking spaces and select 
        nearby or specific area of their choice to view whether space is available or not. If the booking space is available, then user 
        can book it for specific time slot. The booked space will be marked and will not be available for anyone else for the specified time. 
        People who own a space can register it as parking lot. This will also help people to earn by utilising the space they own.  
        The people who have rent there space and see their bookings on the app and allow users to book the space as per their needs.</p>
        </div>
      <div class="col-md-6">
        <img src="images/bg3.png" width="600"
        height="337"
        style="width: 800px; height: 500px; margin-left:15%;" alt="About Us" class="img-fluid">
      </div>
    </div>
  </section>
    <!-- About Section 2-->
  <section class="jumbotron2 text-center">
    <div class="row">
     <div class="col-md-6">
        <img src="images/park.jpg" width="600"
        height="337"
        style="width: 800px; height: 500px; margin-left:-10%;" alt="About Us" class="img-fluid">
      </div>
      <div class="col-md-5">
        <h2>About Us</h2>
        <p align="justify">A digital parking system relays real-time data to motorists to spot vacant parking lots at their preferred locations. 
        Think of this system as a parking assistant that lets you know of available parking spots ahead of time.
		The primary aim of digital or smart parking is to automate the time a driver spends physically searching for a slot and paying for it. 
		Not many know this, but one of the primary causes behind traffic congestion is drivers circling to find parking slots.
		Therefore, an automatic parking solution can hugely benefit such individuals on the road. It will also promote optimal usage of parking
		space inside lots, improving lot owner's revenue.
		Even in its emerging stage, the new-age digital parking system has relatively streamlined unstructured parking in India. 
		By introducing technology to traditional ways of parking management, many parking facilities have experienced reduced costs, 
		greater transparency, and higher revenue. Further, parking lot owners can use digital solutions to levy dynamic pricing, 
		which was impossible without technology. Surge pricing based on the time of day ensures that drivers pay a fair fare. 
		This practice reaps lot owners and city authorities economic benefits.</p>
         </div>
     
    </div>
  </section>
  

  <!-- Services Section -->
  <section class="bg-light">
    <div class="container py-5">
      <h2 class="text-center">Our Features</h2>
      <div class="row mt-4">
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card1-title">Find Parking in Seconds</h5>
              <p class="card-text">Get quick parking in the busy streets with the help of House owners near by.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
<div class="card-body">
<h5 class="card1-title">Quickly Add your Place</h5>
<p class="card-text">Add your parking spot in the house and earn money doing nothing.</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="card">
<div class="card-body">
<h5 class="card1-title">Find parking for your car size</h5>
<p class="card-text">Search parking spot for your vehicle size and save money and time.</p>
</div>
</div>
</div>
</div>
</div>


<div class="responsive-container-block container">
  <p class="text-blk team-head-text">
    Our Team
  </p>
  <div class="responsive-container-block">
    <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
      <div class="card">
        <div class="team-image-wrapper">
          <img class="team-member-image" src="images/Team/Aryan.jpg">
        </div>
        <p class="text-blk name">
          Aryan Prasad
        </p>
       
        <p class="text-blk feature-text">
         Front-end and Back-end Developer.
        </p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/in/aryan-prasad2218">
              <img class="icon" src="images/icons/linkedin.png" height="30px" width="30px">
            </a>
          <a href="#">
            <img class="icon" src="images/icons/twitter.png" height="30px" width="30px">
          </a>
          <a href="https://www.instagram.com/aryan.prasad_22/">
              <img class="icon" src="images/icons/instagram.png" height="30px" width="30px">
            </a>
        </div>
      </div>
    </div>
    <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
      <div class="card">
        <div class="team-image-wrapper">
          <img class="team-member-image" src="images/Team/Shruti.jpg">
        </div>
        <p class="text-blk name">
          Shruti Parmar
        </p>
        
        <p class="text-blk feature-text">
          Back-end <br>Developer
        </p>
        <div class="social-icons">
          <a href="#">
              <img class="icon" src="images/icons/linkedin.png" height="30px" width="30px">
            </a>
          <a href="#">
            <img class="icon" src="images/icons/twitter.png" height="30px" width="30px">
          </a>
          <a href="#">
              <img class="icon" src="images/icons/instagram.png" height="30px" width="30px">
            </a>
        </div>
      </div>
    </div>
    <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
      <div class="card">
        <div class="team-image-wrapper">
          <img class="team-member-image" src="images/Team/Arnav.jpg">
        </div>
        <p class="text-blk name">
          Arnav Sokal
        </p>
       
        <p class="text-blk feature-text">
         Back-end <br>Developer
        </p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/in/arnav-sokal-a98703239/">
              <img class="icon" src="images/icons/linkedin.png" height="30px" width="30px">
            </a>
          <a href="#">
            <img class="icon" src="images/icons/twitter.png" height="30px" width="30px">
          </a>
          <a href="#">
              <img class="icon" src="images/icons/instagram.png" height="30px" width="30px">
            </a>
        </div>
      </div>
    </div>
    <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 card-container">
      <div class="card">
        <div class="team-image-wrapper">
          <img class="team-member-image" src="images/Team/Rishabh.jpg">
        </div>
        <p class="text-blk name">
          Rishabh Parsai
        </p>
       
        <p class="text-blk feature-text">
           Front-end <br>Developer
        </p>
        <div class="social-icons">
          <a href="#">
              <img class="icon" src="images/icons/linkedin.png" height="30px" width="30px">
            </a>
          <a href="#">
            <img class="icon" src="images/icons/twitter.png" height="30px" width="30px">
          </a>
          <a href="#">
              <img class="icon" src="images/icons/instagram.png" height="30px" width="30px">
            </a>
        </div>
      </div>
    </div>
  </div>
</div>

  </section>
  <!-- Contact Section -->
     <%
		String m = (String) request.getAttribute("msg");
		if (m != null)
			out.println("<h2 style='color:#00b8ca; text-align:center;'>" + m + " </h2>");
		%>
  <section class="container py-5" id="contactus">
    <h2 class="text-center mb-4">Contact Us</h2>
    <form action="contactCtrl" method="post">
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" name="name" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" name="email" required>
      </div>
      <div class="form-group">
        <label for="subject">Subject</label>
        <input type="text" class="form-control" name="subject" required>
      </div>
      <div class="form-group">
        <label for="message">Query/Suggestions</label>
        <textarea class="form-control" name="message" rows="3" required></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Send</button>
    </form>
  </section>
  <!-- Footer -->

</body>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<footer class="footerhero">

        <div class="by flex">
            <p>Copyright © 2023 All Rights Reserved by Parkivia</p>
            <div class="iconns">
                <a href="#" class="icon1 iconn--instagram">
                    <i class="ri-instagram-line"></i>
                </a>
                <a href="#" class="icon1 iconn--twitter">
                    <i class="ri-twitter-line"></i>
                </a>
                <a href="#" class="icon1 iconn--linkedin">
                    <i class="ri-linkedin-line"></i>
                </a>
                <a href="#" class="icon1 iconn--github">
                    <i class="ri-github-line"></i>
                </a>
            </div>
        </div>

    </footer>

</html>