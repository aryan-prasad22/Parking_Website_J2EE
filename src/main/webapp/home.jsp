<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parkivia Home</title>

<%@include file = "frontHeader.jsp" %>
 <style>
  main {
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: white;
    background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.15)),
      url("images/Bg2.jpg");
      background-size: 100%;
    background-repeat: no-repeat center center fixed;
  }
  
  section h3 {
    font-size: 35px;
    font-weight: 200;
    letter-spacing: 3px;
    text-shadow: 1px 1px 2px black;
  }
  
  section h1 {
    margin: 30px 0 20px 0;
    font-size: 55px;
    font-weight: 700;
    text-shadow: 2px 1px 5px black;
    text-transform: uppercase;
  }
  
  section p {
    font-size: 25px;
    word-spacing: 2px;
    margin-bottom: 25px;
    text-shadow: 1px 1px 1px black;
  }
  
  section a {
    padding: 12px 30px;
    border-radius: 4px;
    outline: none;
    text-transform: uppercase;
    font-size: 13px;
    font-weight: 500;
    text-decoration: none;
    letter-spacing: 1px;
    transition: all 0.5s ease;
  }
  
  section .btnone {
    background: #00b894;
    background: #fff;
    color: #000;
  }
  
  .btnone:hover {
    background: #00b894;
    color: white;
  }
  
  section .btntwo {
    background: #00b894;
    color: white;
  }
  
  .btntwo:hover {
    background: #fff;
    color: #000;
  }
  
  .change_content:after {
    content: "";
    animation: changetext 10s infinite linear;
    color: #00b894;
  }
  
  @keyframes changetext {
    0% {
      content: "Indore";
    }
    20% {
      content: "Patna";
    }
    35% {
      content: "Nadhwara";
    }
    60% {
      content: "Bhopal";
    }
    80% {
      content: "Kolkata";
    }
    100% {
      content: "Mumbai";
    }
  }
  </style>
</head>
<body>
<main>
		<section>
			<h3>Welcome to Parkivia</h3>
			<h1>Now Available in cities | <span class="change_content"> </span> <span style="margin-top: -10px;"> | </span> </h1>
			<p>"Can't find a place to park your car, No problem let us find a spot for you."</p>
			<p>Say Goodbye to Parking Troubles</p>
			<a href="aboutPage.jsp" class="btnone">Learn more</a>
			<a href="registration.jsp" class="btntwo">Signup here</a>
		</section>
	</main>
</body>
<%@include file = "frontFooter.jsp" %>
</html>