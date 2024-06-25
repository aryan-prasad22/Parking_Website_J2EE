<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
#navbarSupportedContent{
margin-left:52%;

}

  
</style>
<script type="text/javascript" src="js/bootstrap.min.js">
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
</head>
<%
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0"); //prevents caching at the proxy server
%>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">

 <a class="navbar-brand" href="adminHome.jsp">
    <img src="images/icons/parkivia-logo.png" width="80" height="60" alt="">
  </a>
  <a class="navbar-brand" href="adminHome.jsp">ADMIN HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
        <a class="nav-link" href="allUserCtrl">User Details<span class="sr-only"></span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="allParkDetails">Parker Details<span class="sr-only"></span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="allPlaceDetails">Place Details<span class="sr-only"></span></a>
      </li>
       
       
       <li class="nav-item active">
        <a class="nav-link" href="allContactUsDetails">Contact Us Details<span class="sr-only"></span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a href="logoutCtrl" class="btn btn-outline-success my-2 my-sm-0" type="submit">LOGOUT</a>
    </form>
  </div>
</nav>
</body>
</html>