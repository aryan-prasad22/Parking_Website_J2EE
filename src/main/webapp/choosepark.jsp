<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Home</title>
<%@include file = "UserHeader.jsp" %>
    <style>
.card {
width: 330px;
 height: 450px;
 margin-top: 10%;
 margin-left: 27%;
 border-radius: 20px;
 /* background: #f5f5f5;  */
 position: relative;
 padding: 1.8rem;
 border: 2px solid #c3c6ce;
 transition: 0.5s ease-out;
 overflow: visible;

}
.card2 {
 width: 330px;
 height: 450px;
 margin-top: -26.4%;
 margin-left: 55%;
 border-radius: 20px;
 /* background: #f5f5f5; */
 position: relative;
 padding: 1.8rem;
 border: 2px solid #c3c6ce;
 transition: 0.5s ease-out;
 overflow: visible;
}
.card-details2 {
 color: black;
 height: 100%;
 gap: .5em;
 display: grid;
 place-content: center;
}

.card-button2 {
 transform: translate(-50%, 125%);
 width: 60%;
 border-radius: 1rem;
 border: none;
 background-color: #008bf8;
 color: #fff; 
 font-size: 1rem;
 padding: .5rem 1rem;
 position: absolute;
 left: 50%;
 bottom: 0;
 opacity: 0;
 transition: 0.3s ease-out;
}

.text-body2 {
 color: rgb(134, 134, 134);
}

/*Text*/
.text-title2 {
 font-size: 1.5em;
 font-weight: bold;
}

/*Hover*/
.card2:hover {
 border-color: #008bf8;
 box-shadow: 0 4px 18px 0 rgba(0, 0, 0, 0.25);
}

.card2:hover .card-button2 {
 transform: translate(-50%, 50%);
 opacity: 1;
}
.card-details {
 color: black;
 height: 100%;
 gap: .5em;
 display: grid;
 place-content: center;
}

.card-button {
 transform: translate(-50%, 125%);
 width: 60%;
 border-radius: 1rem;
 border: none;
 background-color: #008bf8;
 color: #fff;
 font-size: 1rem;
 padding: .5rem 1rem;
 position: absolute;
 left: 50%;
 bottom: 0;
 opacity: 0;
 transition: 0.3s ease-out;
}

.text-body {
 color: rgb(134, 134, 134);
}

/*Text*/
.text-title {
 font-size: 1.5em;
 font-weight: bold;
}

/*Hover*/
.card:hover {
 border-color: #008bf8;
 box-shadow: 0 4px 18px 0 rgba(0, 0, 0, 0.25);
}

.card:hover .card-button {
 transform: translate(-50%, 50%);
 opacity: 1;
}
a{
    text-decoration: none;
}


/*-------------------------Footer--------------------------------*/

    .footerhero {
  
   background: url("images/park/carpark-4-bg.jpg");
background-color: rgba(15, 45, 72, 0.747);
   width: 100%;
   margin-top: 7.5%;
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
    <div class="card">
        <a href="parkerDetails.jsp">
        <div class="card-details">
            <img src="images/park/park2.jpg" alt="Vector" style="width:100%">
          <p class="text-title">Find a place to Park</p>
          <p class="text-body"></p>
        </div>
        <button class="card-button">More info</button>
    </a>
      </div>

      
      <div class="card2">
        <a href="placeDetails.jsp">
       	 <div class="card-details2">
            <img src="images/park/park3.jpg" alt="Vector" style="width:100%">
          <p class="text-title2">Have place for Parking</p>
          <p class="text-body2"></p>
        </div>
        <button class="card-button2" >More info</button>
    </a>
      </div>
      <%
	}
	%>
</body>
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