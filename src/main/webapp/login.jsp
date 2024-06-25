<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parkivia | Login</title>
<%@include file = "frontHeader.jsp" %>
<style >
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background-image: 
      url("images/park/red-car.jpg");
      background-size: 100%;
    background-repeat: no-repeat center center fixed;
}
.container{
 
  width: 380px;
 background: linear-gradient(rgba(0,0,0,0.4));
  padding: 25px 30px;
  border-radius: 10px;
  box-shadow: 7px 7px 60px rgba(0,0,0,0.15);
    margin-left: 1200px;
  
   /* border-radius: 10px;
    transform: translate(-50%,-50%);
    background: linear-gradient(rgba(0,0,0,0.3));
    padding: 50px ;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
    */
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
  
}
.container .title::before{
  content: "";
  position: absolute;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
#con2{
  display: none;
}
.container2{
 
 width: 380px;
background: linear-gradient(rgba(0,0,0,0.4));
background-color: #fff;
 padding: 25px 30px;
 border-radius: 10px;
 box-shadow: 7px 7px 60px rgba(0,0,0,0.15);
   margin-left: 700px;
   margin-top: -27%;

  /* border-radius: 10px;
   transform: translate(-50%,-50%);
   background: linear-gradient(rgba(0,0,0,0.3));
   padding: 50px ;
   border-radius: 10px;
   box-shadow: 7px 7px 60px #000;
   */
}
.container2 .title{
 font-size: 25px;
 font-weight: 500;
 position: relative;
 
}
.container2 .title::before{
 content: "";
 position: absolute;
 bottom: 0;
 height: 3px;
 width: 30px;
 border-radius: 5px;
 background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

form .user-details .input-box{
  margin-bottom: 8px;
  width:100%;
  
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
  color:black;
  margin-top: 20px;
}
.user-details .input-box input{
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
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}

 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input {
            background-image: linear-gradient(to right, #ff4f5a 0%, #26a0da  51%, #ff4f5a  100%);
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase; 
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
           
         
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
/* form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  } */
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 570px){
  .container .content .category{
    flex-direction: column;
  }
}
#toggle{
  position: absolute;
  margin-left: 290px;
  margin-top: -22px;
  transform: translateY(-50%);
  width: 20px;
  height: 20px;
  background: url(images/icons/hide.png);
  background-size: cover;
  cursor: pointer;
}
#toggle.hide{
  background: url(images/icons/show.png);
  background-size: cover;
}
#toggle1{
  position: absolute;
  margin-left: 290px;
  margin-top: -22px;
  transform: translateY(-50%);
  width: 20px;
  height: 20px;
  background: url(images/icons/hide.png);
  background-size: cover;
  cursor: pointer;
}
#toggle1.hide{
  background: url(images/icons/show.png);
  background-size: cover;
}
#invisibleButton{
  margin-top: 32%;
  background: transparent;
  outline: none;
  border: none;
  cursor: pointer;
  color: #fff;
  font-size: 20px;
  
  
}
</style>
</head>
<body>
<script type="text/javascript">
    var numClicks = 0;
    var x = 5;
    function action() {
      numClicks++;
      if (numClicks == x) {
        var con = document.getElementById("con2");
        con.style.display = 'block';
      }
    }
  </script>
  <button id="invisibleButton" type="button" onclick="action()">......</button>
	<div class="container1">
		
		<%
		String m = (String) request.getAttribute("msg");
		if (m != null){
		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal('Login Unsuccessful',' Incorrect Username or Password','error');");
        out.println("});");
        out.println("</script>");

		}

		%>
		
<main>
    <div class="container">
      <center> <div class="title">Login Here</div></center>
      <div class="content">
       <form action="userloginctrl" method="post">
          <div class="user-details">
         
           
              <div class="input-box">
              <span class="details">Email</span>
              <input type="text" placeholder="Enter your email" name="email" required>
              
              <div class="input-box">
              <span class="details">Password</span>
              <input type="password" placeholder="Enter your password" id="password" name="pwd" required>
               <div id="toggle" onclick="showHide1();"></div>
              <script type="text/javascript">
                const password = document.getElementById('password');
                const toggle = document.getElementById('toggle');

                function showHide1(){
                  if(password.type =='password'){
                    password.setAttribute('type','text');
                    toggle.classList.add('hide')

                  }
                  else{
                    password.setAttribute('type','password');
                    toggle.classList.remove('hide')
                  }
                }
              </script>
              </div>
      
        
            </div>
           
            
            </div> 
          <div class="button">
            <input type="submit" value="Login">
            </div>
         
        </form>
      </div>
    </div>
  
    <div class="container2" id="con2">
        <center> <div class="title">Admin Panel</div></center>
        <div class="content">
         <form action="adminCtrl" method="post">
            <div class="user-details">
           
             
                <div class="input-box">
                <span class="details">Username</span>
                <input type="text" placeholder="Enter your email" name="username" required>
                
                <div class="input-box">
                <span class="details">Password</span>
                <input type="password" placeholder="Enter your password" id="admin_pwd" name="pwd" required>
                 <div id="toggle1" onclick="showHide2();"></div>
                <script type="text/javascript">
                  const password2 = document.getElementById('admin_pwd');
                  const toggle2 = document.getElementById('toggle1');
  
                  function showHide2(){
                    if(password2.type =='password'){
                      password2.setAttribute('type','text');
                      toggle2.classList.add('hide')
  
                    }
                    else{
                      password2.setAttribute('type','password');
                      toggle2.classList.remove('hide')
                    }
                  }
                </script>
                </div>
        
          
              </div>
             
              
              </div> 
            <div class="button">
              <input type="submit" value="Admin Login">
              </div>
           
          </form>
        </div>
     
</main>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

</html>