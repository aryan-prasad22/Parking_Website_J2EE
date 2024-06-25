<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        @import url('https://fonts.googleapis.com/css2?family=Baloo+2&display=swap');
 * {
	 margin: 0;
	 padding: 0;
	 box-sizing: border-box;
	 font-family: 'Baloo 2', cursive;
}
 .container .contactinfo {
	 display: flex;
	 top: 0;
	 height: 100%;
	 flex-direction: column;
	 justify-content: space-between;
	 align-items: center;
	 padding: 40px;
	 background-color: #00b8ca;
}
 .container .contactinfo h2 {
	 text-align: center;
	 color: #fff;
	 font-size: 24px;
	 font-weight: 700;
}
 .container .contactinfo .info {
	 position: relative;
	 margin: 20px 0;
	 height: 100%;
	 display: flex;
	 flex-direction: column;
	 justify-content: center;
}
 .container .contactinfo .info li {
	 position: relative;
	 list-style: none;
	 display: flex;
	 align-items: center;
	 margin: 20px 0;
	 cursor: pointer;
}
 .container .contactinfo .info li span:nth-child(1) {
	 width: 40px;
	 min-width: 40px;
}
 .container .contactinfo .info li span:nth-child(1) img {
	 max-width: 100%;
	
	 opacity: 0.7;
}
 .container .contactinfo .info li span:nth-child(2) {
	 color: #fff;
	 margin-left: 10px;
	 font-weight: 100;
	 opacity: 0.5;
}
 .container .contactinfo .info li:hover span:nth-child(1) img, .container .contactinfo .info li:hover span:nth-child(2) {
	 opacity: 1;
}
 .container .contactusform {
	 display: flex;
	 flex-direction: column;
	 justify-content: center;
	 padding: 70px 50px;
	 background-color: #fff;
	 top: 0;
}
 .container .contactusform h2 {
	 color: #00b8ca;
	 font-size: 24px;
	 font-weight: 700;
}
 .container .contactusform .formBox {
	 position: relative;
	 display: flex;
	 flex-direction: column;
	 justify-content: space-between;
	 flex-wrap: wrap;
	 padding-top: 30px;
}
 .container .contactusform .formBox .inputBox {
	 position: relative;
	 margin: 0 0 35px 0;
	 width: 100% !important;
}
 .container .contactusform .formBox .inputBox input, .container .contactusform .formBox .inputBox textarea {
	 width: 100% !important;
	 padding: 5px 0;
	 resize: none;
	 font-size: 18px;
	 font-weight: 300;
	 color: #101010;
	 border: none;
	 border-bottom: 1px solid #333;
	 outline: none;
}
 .container .contactusform .formBox .inputBox textarea {
	 min-height: 120px;
}
 .container .contactusform .formBox .inputBox span {
	 position: absolute;
	 left: 0;
	 padding: 5px 0;
	 font-size: 18px;
	 font-weight: 300;
	 color: #333;
	 transition: 0.3s;
	 pointer-events: none;
}
 .container .contactusform .formBox .inputBox input:focus ~ span, .container .contactusform .formBox .inputBox textarea:focus ~ span, .container .contactusform .formBox .inputBox input:valid ~ span, .container .contactusform .formBox .inputBox textarea:valid ~ span {
	 transform: translateY(-20px);
	 font-size: 12px;
	 font-weight: 400;
	 letter-spacing: 1px;
	 color: #00b8ca;
}
 .container .contactusform .formBox .inputBox input[type="submit"] {
	 position: relative;
	 cursor: pointer;
	 background-color: #00b8ca;
	 color: #fff;
	 border: none;
	 max-width: 150px;
	 padding: 12px;
}
 .container .contactusform .formBox .inputBox input[type="submit"]:hover {
	 background-color: #dcdcdc;
}
 .container .contactusform .formBox .w50 {
	 width: 47%;
}
 .container .contactusform .formBox .w100 {
	 width: 100%;
}
 @media screen and (min-width: 700px) {
	 .container .contactinfo h2 {
		 text-align: center;
	}
	 .container .contactinfo .info {
		 flex-direction: row;
	}
	 .container .contactinfo li span:nth-child(2) {
		 margin-right: 20px;
	}
}
 @media screen and (min-width: 900px) {
	 section {
		 position: relative;
		 display: flex;
		 justify-content: center;
		 align-content: center;
		 min-height: 100vh;
		 background-color: #ccc;
	}
	 section::before {
		 content: '';
		 position: absolute;
		 top: 0;
		 left: 0;
		 width: 50%;
		 height: 100%;
		 background-color: #dcdcdc;
	}
	 section .container {
		 position: relative;
		 width: 1100px;
		 min-height: 550px;
		 display: flex;
		 z-index: 1000;
		 margin: 0 20px 0 20px;
	}
	 section .container .contactinfo {
		 position: absolute;
		 top: 20%;
		 width: 350px;
		 height: calc(100% - 40%);
		 z-index: 1;
		 box-shadow: 0 30px 30px rgba(167, 148, 148, 0.3);
		 align-items: left;
	}
	 section .container .contactinfo h2 {
		 text-align: left;
	}
	 section .container .contactinfo .info {
		 flex-direction: column;
	}
	 section .container .contactinfo li span:nth-child(2) {
		 margin-right: 0;
	}
	 section .container .contactusform {
		 position: absolute;
		 top: 10%;
		 height: calc(100% - 20%);
		 box-shadow: 0 50px 50px rgba(108, 85, 85, 0);
		 margin-left: 150px;
		 padding-left: 250px;
	}
	 section .container .contactusform .formBox {
		 flex-direction: row;
	}
}
 
    </style>
</head>
<body>
	
  <section>
        <div class="container">
          <div class="contactinfo">
            <div>
        
              <h2>Contact Us</h2>
              <ul class="info">
                <li>
                  <span>
                    <img src="images/icons/map.png" />
                  </span>
                  <span>
                    Shri Vaishanv Vidyapeeth Vishwavidyalaya, <br />
                    Indore, <br />
                    Madhya Pradesh
                  </span>
                </li>
                <li>
                  <span>
                    <img src="images/icons/gmail.png" />
                  </span>
                  <span>
                    aryanprasad2218@gmail.com
                  </span>
                </li>
                <li>
                  <span>
                    <img src="images/icons/phone-call.png" />
                  </span>
                  <span>
                    8797300890
                  </span>
                </li>
              </ul>
            </div>
          </div>
          <form action="contactCtrl" method="post">
          <div class="contactusform">
            <h2>Send Us A Message</h2>
                <%
		String m = (String) request.getAttribute("msg");
		if (m != null)
			out.println("<h2 style='color:#00b8ca;'>" + m + " </h2>");
		%>
            <div class="formBox">
            
              <div class="inputBox w50">
                <input type="text" name="name" required>
                <span>Name</span>
              </div>
              <div class="inputBox w50">
                <input type="email" name="email" required>
                <span>Email</span>
              </div>
              <div class="inputBox w50">
                <input type="text" name="subject" required>
                <span>Subject</span>
              </div>
              
              <div class="inputBox w100">
                <textarea name="message" required></textarea>
                <span>Please enter a message</span>
              </div>
              <div class="inputBox w50">
                <input type="submit" value="Send">
              </div>
             
            </div>
          </div>
        </div>
         </form>
      </section>
    
</body>
</html>