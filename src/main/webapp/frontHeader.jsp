<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	 <link rel="icon" type="image/x-icon" href="images/icons/favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Josefin Sans", sans-serif;
  }
  
  header {
 	width: 100%;
    height: 10vh;
    position: fixed;
    top: 0;
     z-index: 1;
   
  }
  nav {
    width: 100%;
    height: 10vh;
    background: rgba(0, 0, 0, 0.2);
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-transform: uppercase;
  }
  
  nav .logo {
    width: 25%;
    text-align: left;
    margin-left:-25%;
   
    
  }
  
  nav .menu {
    width: 40%;
    display: flex;
    justify-content: space-around;
  }
  
  nav .menu a {
    width: 25%;
    text-decoration: none;
    color: white;
    font-weight: bold;
  }
  
  nav .menu a:first-child {
    color: #00b894;
  }
  

 
</style>
</head>
<body>

<header>

<nav>
 <a class="navbar-brand" href="home.jsp">
    <img src="images/icons/parkivia-logo.png" width="120" height="90" alt="">
  </a>
	<div class="logo"> <h1 style="font-size: 40px;"> PARKIVIA </h1> </div>
	<div class="menu">
		<a href="home.jsp" style="font-size: 20px">Home</a>
		<a href="aboutPage.jsp">About</a>
		<a href="aboutPage.jsp#contactus">Contact US</a>
		<a href="login.jsp">Login</a>
	</div>
</nav>

</header>
</body>
	
</html>
