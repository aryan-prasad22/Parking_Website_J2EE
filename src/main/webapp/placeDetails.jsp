<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Place Form</title>
<%@include file = "UserHeader.jsp" %>

 <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      height: 100vh;
      display: flex;
      /* justify-content: center;
  align-items: center; */
      padding: 10px;

      background-size: 100%;
      background-repeat: no-repeat center center fixed;
    }

    .container {
      max-width: 715px;
      width: 100%;
     /*  margin-left: 5%; */
      background: linear-gradient(rgba(0, 0, 0, 1));
      padding: 25px 30px;
      border-radius: 10px;
      box-shadow: 7px 7px 60px rgba(0, 0, 0, 0.15);
      margin-top: 16%;

      /* border-radius: 10px;
    transform: translate(-50%,-50%);
    background: linear-gradient(rgba(0,0,0,0.3));
    padding: 50px ;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
    */
    }

    .container .title {
      font-size: 25px;
      font-weight: 500;
      width: 100%;
      position: relative;
      margin-bottom: 4%;
      margin-top: 4%;
       z-index:0;

    }

    .container .title::before {
      content: "";
      position: absolute;
      left: 0;
      bottom: 0;
      height: 3px;
      width: 30px;
      border-radius: 5px;
      background: linear-gradient(135deg, #71b7e6, #9b59b6);
       z-index:1;

    }

    .content form .user-details {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin: 20px 0 12px 0;

    }

    form .user-details .input-box {
      margin-bottom: 18px;
      width: calc(100% / 2 - 20px);
    }
    form .user-details .input-box1 {
      margin-bottom: 22px;
      width: 100%;
    }

    form .input-box span.details {
      display: block;
      font-weight: 500;
      margin-bottom: 5px;
      color: #0c0c0c;
    }
    form .input-box1 span.details {
      display: block;
      font-weight: 500;
      margin-bottom: 5px;
      color: #0c0c0c;
    }

    .user-details .input-box input {
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 16px;
      border-radius: 5px;
      padding-left: 15px;
      border: 1px solid #ccc;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
    }
    .user-details .input-box1 input {
      height: 45px;
      width: 100%;
      outline: none;
      font-size: 16px;
      border-radius: 5px;
      padding-left: 15px;
      border: 1px solid #ccc;
      border-bottom-width: 2px;
      transition: all 0.3s ease;
      margin-bottom: 5px;
    }

    .user-details .input-box input:focus,
    .user-details .input-box input:valid,
    .user-details .input-box1 input:valid{
      border-color: #9b59b6;
    }

    form .button {
      height: 45px;
      width: 100%;
    }

    /* form .button input {
      height: 100%;
      width: 100%;
      border-radius: 5px;
      border: none;
      color: #fff;
      font-size: 18px;
      font-weight: 500;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
      background: linear-gradient(135deg,  #53346D  51%, #000000  100%);
    } */

    /* form .button input:hover {
      transform: scale(0.99);
      background: linear-gradient(-135deg,  #53346D  51%, #000000  100%);
    } */
             
            
    form .button input {
            background-image: linear-gradient(to right, #314755 0%, #26a0da  51%, #314755  100%);
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            /* text-transform: uppercase; */
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
           border: none;
            border-radius: 5px;
            display: block;
            height: 100%;
      width: 100%;
            font-size: 18px;
           font-weight: 500;
            letter-spacing: 1px;
          }

          form .button input:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }
         
         

    @media(max-width: 584px) {
      .container {
        max-width: 100%;
      }

      form .user-details .input-box {
        margin-bottom: 15px;
        width: 100%;
      }

      form .category {
        width: 100%;
      }

      .content form .user-details {
        max-height: 300px;
        overflow-y: scroll;
      }

      .user-details::-webkit-scrollbar {
        width: 5px;
      }
    }

    @media(max-width: 459px) {
      .container .content .category {
        flex-direction: column;
      }
    }

    /* .image-container{
  max-height: 200px;
  max-width: 200px;
  margin-top: 20%;
  margin-left: 5%;
  

} */
    .customImg {
      max-height: 700px;
      max-width: 700px;
      margin-top: 50%;
      margin-left: 25%;
    }
   .hero {
   height: 12%;
   background: url("images/park/blue-car.jpg");
background-color: rgba(15, 45, 72, 0.747);
   width: 101.79%;
   margin-top: 105%;
   margin-left: -86%;
   margin-right: -10%;
  background-size: cover;
  background-blend-mode: multiply;
  background-attachment:fixed ;
  color: rgb(255, 255, 255);
  padding: 0px 30px 18px 30px;
}
.hero .container1{
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
margin-top: 30px;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
}
footer .by p{
  color: rgba(255, 255, 255, 0.605);
  font-size: 14px;
}

.icons {
  display: flex;
  column-gap: 25px;
  
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
  transition-property:
      outline-offset, outline-color,
      background-color;
  transition-duration: .25s;
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
  .hero{
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
	
	<%
		String m = (String) request.getAttribute("msg");
		if (m != null)
			out.println("<h2 style='color:blue; position: absolute;' >" + m + " </h2>");
		%>
  <div class="container1">

    <main>
      <div class="container">
        <div class="title">User Details</div>
        <div class="content">
          <form action="placeDetailsCtrl" method="post">
            <div class="user-details">
              <div class="input-box">
                <span class="details">Name</span>
                <input type="text" placeholder="Enter your name" name="fname" required>
              </div>
             
              <div class="input-box">
                <span class="details">Phone Number</span>
                <input type="tel" placeholder="Enter your number" name="phone" required>
              </div>

              <div class="input-box">
                <span class="details">Email</span>
                <input type="email" placeholder="Enter your email" name="email" required>
              </div>
              <div class="title" >Vehicle Information</div>

              <div class="input-box">
                <span class="details">Vehicle Type</span>
                <div id="cid_9" class="input-box" data-layout="half">
                  <select class="select-box" name="vehicleType" style="width:300px" data-component="dropdown"
                    aria-label="Vehicle Type" onclick="showMe(this.value);">
                    <option value="select" selected disabled hidden>Please Select</option>
                    <option value="Bicycle">Bicycle</option>
                    <option value="Motorbike">Motorbike</option>
                    <option value="Hatchback">Hatchback</option>
                    <option value="Sedan">Sedan</option>
                    <option value="Compact Sedan">Compact Sedan</option>
                    <option value="Coupé">Coupé</option>
                    <option value="4-Door Coupé">4-Door Coupé</option>
                    <option value="Station Wagon">Station Wagon</option>
                    <option value="Crossover Hatchback">Crossover Hatchback</option>
                    <option value="Convertible">Convertible</option>
                    <option value="MPV">MPV</option>
                    <option value="SUV">SUV</option>
                    <option value="Crossover SUV">Crossover SUV</option>
                    <option value="Coupé SUV">Coupé SUV</option>
                    <option value="Compact SUV">Compact SUV</option>
                    <option value="Pick-up Truck">Pick-up Truck</option>
                  </select>
                </div>

              </div>
              <div class="input-box">
                <span class="details">Parking availabe for -</span>
                <input type="number" placeholder="How many vehicles?" min="0" max="20" name="availablefor" required>
              </div>
              <div class="title">Price Details</div>
              <div class="input-box">
                <span class="details">Price per Hour</span>
                <input type="number" min="0" placeholder="--Rupees--" name="Price" required>
              </div>
              <div class="title">Parking Details</div>
              <div class="input-box">
                <span class="details">Date</span>
                <input type="date" id="dateee" placeholder="Enter your first name" name="datee" required>
              </div>
              
              <div class="input-box">
                <span class="details">Enterance Time</span>
                <input type="time" placeholder="Enter your last name" name="enter" required>
              </div>

              <div class="input-box">
                <span class="details">Exit Time</span>
                <input type="time" placeholder="Enter your number" name="exitt" required>
              </div>

              <div class="title">Location Details</div>
              <div class="input-box1">
                <span class="details">CCTV</span>
                <div id="cid_9" class="input-box1" data-layout="half">
                  <select class="select-box" name="cctv" style="width:300px " data-component="dropdown"
                    aria-label="Vehicle Type">
                    <option value="No">No</option>
                    <option value="Yes">Yes</option>
                  </select>
                </div>
                  <div class="input-box">
                    <span class="details">Square Name</span>
                    <input type="text" placeholder="Enter Square name" name="square" required>
                  </div> 
              <div class="input-box">
                <span class="details">Address</span>
                <textarea name="address" rows="4" cols="50" required></textarea>
              </div> 
              
                </div>
                
              <div class="input-box1">
                <span class="details">Location Description</span>
                <textarea name="location" rows="4" cols="50"></textarea>
              </div>
            </div>
            <div class="button">
              <input type="submit" value="Submit">
            </div>
          </form>
        </div>
      </div>



    </main>
 
  </div>
<div class="image-container">
    <div id="0">
       <img class="customImg" src="images/vehicles/cant-park.gif" width="700" height="500">
    </div>
    <div id="1" style="display: none;">
       <img class="customImg" src="images/vehicles/bike.png">
    </div>

    <div id="2" style="display: none;">
      <img class="customImg" src="images/vehicles/Motorbike.png" >
    </div>
    <div id="3" style="display: none;">
      <img class="customImg" src="images/vehicles/hatchback.png">
    </div>
    <div id="4" style="display: none;">
      <img class="customImg" src="images/vehicles/sedan.png">
    </div>
    <div id="5" style="display: none;">
      <img class="customImg" src="images/vehicles/compact-sedan.png">
    </div>
    <div id="6" style="display: none;">
      <img class="customImg" src="images/vehicles/coupe.png">
    </div>
    <div id="7" style="display: none;">
      <img class="customImg" src="images/vehicles/coupe 4-door.png">
    </div>
    <div id="8" style="display: none;">
      <img class="customImg" src="images/vehicles/station wagon.png">
    </div>
    <div id="9" style="display: none;">
      <img class="customImg" src="images/vehicles/crossSUV.png">
    </div>
    <div id="10" style="display: none;">
      <img class="customImg" src="images/vehicles/convertible.png">
    </div>
    <div id="11" style="display: none;">
      <img class="customImg" src="images/vehicles/MUV.png">
    </div>
    <div id="12" style="display: none;">
      <img class="customImg" src="images/vehicles/suv.png">
    </div>
    <div id="13" style="display: none;">
      <img class="customImg" src="images/vehicles/crossSUV.png">
    </div>
    <div id="14" style="display: none;">
      <img class="customImg" src="images/vehicles/coupe suv.png">
    </div>
    <div id="15" style="display: none;">
      <img class="customImg" src="images/vehicles/compact suv.png">
    </div>
    <div id="16" style="display: none;">
      <img class="customImg" src="images/vehicles/pickup.png">
    </div>


  </div>
 <%
	}
	%>
</body>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<footer class="hero">

        <div class="by flex">
            <p>Copyright © 2023 All Rights Reserved by Parkivia</p>
            <div class="icons">
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
       <script>
    var todayDate = new Date();
    var month = todayDate.getMonth()+1;
    var year = todayDate.getUTCFullYear() - 0;
    var tdate = todayDate.getDate();
    if (month < 10) {
        month = "0" + month
    }
    if (tdate < 10) {
        tdate = "0" + tdate;
    }
    var maxDate = year + "-" + month + "-" + tdate;
    document.getElementById("dateee").setAttribute("min", maxDate);
    console.log(maxDate);
</script>
<script>
  function showMe(value) {
    switch (value) {
      case "select":
        document.getElementById('0').style.display = "block";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";

        break;
      case "Bicycle":
        document.getElementById('1').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Motorbike":
        document.getElementById('2').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Hatchback":
        document.getElementById('3').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Sedan":
        document.getElementById('4').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Compact Sedan":
        document.getElementById('5').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Coupé":
        document.getElementById('6').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "4-Door Coupé":
        document.getElementById('7').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Station Wagon":
        document.getElementById('8').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Crossover Hatchback":
        document.getElementById('9').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Convertible":
        document.getElementById('10').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "MPV":
        document.getElementById('11').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "SUV":
        document.getElementById('12').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Crossover SUV":
        document.getElementById('13').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Coupé SUV":
        document.getElementById('14').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Compact SUV":
        document.getElementById('15').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Pick-up Truck":
        document.getElementById('16').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";

        break;

      default:
        document.getElementById('0').style.display = "block";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
    }

  }
</script>

</html>