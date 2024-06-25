
<%@page import="java.util.ArrayList"%>
<%@page import="dto.PlaceRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<%@include file = "UserHeader.jsp" %>
<style type="text/css">

:root {
	--primary-color: #d3dde1;
	--accent-color: #2582ce;

	--text-color: #263238;
	--body-color: white;
	--main-font: 'roboto';
	--font-bold: 700;
	--font-regular: 400;
}
* { box-sizing: border-box }

main{ 
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 10%;
}
h1 { font-weight: var(--font-bold) }
input, 
button {
	border: none;
	background: none;
	outline: 0;
	
}
button {cursor: pointer}
.SearchBox-input::placeholder {
 color:rgb(0, 0, 0);
	opacity: .6;
}
/* Chrome, Opera ySafari */
.SearchBox-input::-webkit-input-placeholder {
  color: rgb(0, 0, 0);
}
/* Firefox 19+ */
.SearchBox-input::-moz-placeholder {
  color: rgb(0, 0, 0);
}
/* IE 10+ y Edge */
.SearchBox-input:-ms-input-placeholder {
  color: rgb(0, 0, 0);
}
/* Firefox 18- */
#formGroupExampleInput:-moz-placeholder {
  color: rgb(0, 0, 0);
}
.SearchBox {
	--height: 4em;
	display: flex;
	border-radius: var(--height);
	background-color: var(--primary-color);
	height: var(--height);
	margin-bottom: 20px;
}
	.SearchBox:hover .SearchBox-input {
		padding-left: 2em;
		padding-right: 1em;
		width: 400px;
	}
	.SearchBox-input {
		width: 0;
		font-size: 1.2em;
		color: #000000;
		transition: .45s;
	}
	.SearchBox-button {
		display: flex;
		border-radius: 50%;
		width: var(--height);
		height: var(--height);
		background-color: var(--accent-color);
		transition: .3s;
	}
	.SearchBox-button:active  {
		transform: scale(.85);
	}
	.SearchBox-icon {
		margin: auto;
		color: #fff;
	}


@media screen and (min-width: 400px){
	.SearchBox:hover .SearchBox-input {
		width: 700px;
	}
}
body {
	 font-family: 'lato', sans-serif;
}
 .container {
	 max-width: 1600px;
	 margin-left: auto;
	 margin-right: auto;
	 padding-left: 10px;
	 padding-right: 10px;
}
 h2 {
	 font-size: 26px;
	 margin: 20px 0;
	 text-align: center;
}
 h2 small {
	 font-size: 0.5em;
}
 .responsive-table li {
	 border-radius: 3px;
	 padding: 25px 30px;
	 display: flex;
	 justify-content: space-between;
	 margin-bottom: 25px;
}
 .responsive-table .table-header {
	 background-color: #95a5a6;
	 font-size: 18px;
	 text-transform: uppercase;
	 letter-spacing: 0.03em;
     text-align: center;
     font-weight: bold;
}
 .responsive-table .table-row {
	 background-color: #fff;
	 box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.1);
     text-align: center;
      font-size: 16px;
}
 .responsive-table .col-1 {
	 flex-basis: 20%;
}
 .responsive-table .col-2 {
	 flex-basis: 20%;
}
 .responsive-table .col-3 {
	 flex-basis: 20%;
}
 .responsive-table .col-4 {
	 flex-basis: 40%;
}
.responsive-table .col-5 {
	 flex-basis: 15%;
}
 .responsive-table .col-6 {
	 flex-basis: 20%;
}
 .responsive-table .col-7 {
	 flex-basis: 20%;
}
 .responsive-table .col-8 {
	 flex-basis: 20%;
}

 @media all and (max-width: 900px) {
	 .responsive-table .table-header {
		 display: none;
	}
	 .responsive-table li {
		 display: block;
	}
	 .responsive-table .col {
		 flex-basis: 100%;
	}
	 .responsive-table .col {
		 display: flex;
		 padding: 10px 0;
	}
	 .responsive-table .col:before {
		 color: #6c7a89;
		 padding-right: 10px;
		 content: attr(data-label);
		 flex-basis: 50%;
		 text-align: right;
	}
}
         
           
         .btn-grad {
            background-image: linear-gradient(to right, #95a5a6 0%, #b4bbbc  51%, #95a5a6  100%);
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
            text-decoration: none;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
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
<main>
	<h1>Search Parking Location for _______ </h1>
	
	<div class="SearchBox">
		<input type="text" class="SearchBox-input" placeholder="Search Location">
	<a href="placeUserDetails" style="text-decoration:none">
			<button class="SearchBox-button">
				<i class="SearchBox-icon  material-icons">search</i>
			</button>
		</a>
	</div>
</main>

	<%
	ArrayList<PlaceRegister> li = (ArrayList<PlaceRegister>)request.getAttribute("LIST");
	%>
<%String m = (String)request.getAttribute("msg");
if(m!=null)
	out.println("<h2>" + m + "</h2>");
%>

 <div class="container">
        <ul class="responsive-table">
        <li class="table-header">
            <div class="col col-1" >Name</div>
            <div class="col col-2">Date</div>
            <div class="col col-3">Time</div>
            <div class="col col-4">Address</div>
            <div class="col col-5">CCTV</div>
            <div class="col col-6">Available for</div>
            <div class="col col-7">Price/hour</div>
            <div class="col col-8">Book</div>
          </li>
          <% if(li!=null){
%>
 <%
for (PlaceRegister ss: li){
%> 
  <li class="table-row">
            <div class="col col-1" data-label="Name"><%=ss.getFname() %></div>
            <div class="col col-2" data-label="Date"><%=ss.getDatee() %></div>
            <div class="col col-3" data-label="Time"><%=ss.getEnter() %>-<%=ss.getExit() %></div>
            <div class="col col-4" data-label="Address"><%=ss.getAddress() %> </div>
            <div class="col col-5" data-label="CCTV"><%=ss.getCctv() %> </div>
            <div class="col col-6" data-label="CCTV"><%=ss.getAvailablefor() %> Hours</div>
            <div class="col col-7" data-label="Price/hour"><%=ss.getPrice() %></div>
            <div class="col col-8" data-label="Book"><a href="bookCtrl?idpark=<%=ss.getIdparkplace()%>" class="btn-grad">BOOK</a></div>
            
          </li>
        
       

				   <%
					}
					%>

 </ul>

<%
}else{
	out.println("<h2> Records Not Available </h2>");
}
%>
</div>
<%
	}
	%>
</body>
</html>







