package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.UserRegistration;
import model.P_AdminDAO;


@WebServlet("/registrationCtrl")
public class RegistrationCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		
		UserRegistration ur = new UserRegistration(fname, lname, dob, phone, email, address, pwd, gender);
		
		P_AdminDAO model = new P_AdminDAO();
		int i = model.register(ur);
		RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
		if(i!=0) {
			request.setAttribute("msg", "Registration Successful");
			rd.forward(request, response);
		}else {
			request.setAttribute("msg", "Registration Unsuccessful");
			rd.forward(request, response);
		}
	}

}
