<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="icon"  href="images/icons/favicon.ico" type="image/x-icon">
<style>
.hero {
  height: auto;
  background: url("images/Bg2.jpg")
  left bottom no-repeat;
background-color: rgba(0, 0, 0, 0.747);
  
  background-size: cover;
  background-blend-mode: multiply;
  background-attachment:fixed ;
  
  color: rgb(255, 255, 255);
  padding: 30px 80px 30px 30px;
}
.hero .container1{
  justify-content: space-between;
  flex-wrap: wrap;
  flex: 1;
}
.flex{
  display: flex;
}
.container__about{
  margin-bottom: 30px;
}
.container-pages{
  column-gap: 20px;
}

.container-pages ul{
  padding-top: 10px;
  list-style: none;
  line-height: 24px;
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
  margin-top: -8px;
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

 .container__about h2{
   margin-top:-5%;
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
  .container-pages ul a{
    font-size: 12px;
  }
  footer .by p{
    font-size: 12px;
  }
} 

 .info {
	 position: relative;
	 height: 100%;
	 display: flex;
	 flex-direction: column;
	
}
.info li {
	 position: relative;
	 list-style: none;
	 display: flex;
	 align-items: center;
	 margin: 3px 0;
	 cursor: pointer;
}
img{
margin-right:2%;
}
hr{
margin-top: -25px;
}
.container__recentpages{
font-size:80px;

}

</style>
</head>
<body>

</body>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<footer class="hero">
          <div class="container1 flex">
            <div class="container__about">
                <h2>Contact Us</h2>
                <ul class="info">
                <li>
                  <span>
                    <img src="images/icons/map.png" height=30px; width=30px/>
                  </span>
                  <span>
                     &nbsp; Aurbindo, Indore.
                  </span>
                </li>
                <li> 
                  <span>
                    <img src="images/icons/gmail.png" height=30px; width=30px />
                  </span>
                  <span>
                     &nbsp; aryanprasad2218@gmail.com
                  </span>
                </li>
                <li>
                  <span>
                    <img src="images/icons/phone-call.png" height=30px; width=30px  />
                  </span>
                  <span>
                     &nbsp; 8797300890
                  </span>
                </li>
              </ul>
            </div>
            <div class="container-pages flex">

                <div class="container__recentpages">
                    <ul>
                        <li><a href="">Feedback</a></li>
                        <li><a href="">Terms of Services</a></li>
                         <li><a href="">Privacy</a></li>
                    </ul>
                </div>
               
            </div>
        </div>
        <hr>
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
</html>