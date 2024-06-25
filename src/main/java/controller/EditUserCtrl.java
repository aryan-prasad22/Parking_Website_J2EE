package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.UserRegistration;
import model.P_AdminDAO;

@WebServlet("/editUserCtrl")
public class EditUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmail= request.getParameter("userEmail");
		P_AdminDAO model = new P_AdminDAO();
		UserRegistration ur = model.getparticularUser(userEmail);
		RequestDispatcher rd = request.getRequestDispatcher("editUser.jsp");
		request.setAttribute("UR", ur);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userEmail= request.getParameter("userEmail");
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		
		UserRegistration ur = new UserRegistration(fname, lname, dob, phone, address, pwd, gender);
		ur.setEmail(userEmail);
		P_AdminDAO model = new P_AdminDAO();
		int i = model.updateUser(ur);
		ArrayList<UserRegistration> list = model.getAllUsers();
		RequestDispatcher rd = request.getRequestDispatcher("allUsers.jsp");
		if(i!=0) {
			
			request.setAttribute("LIST", list);
			request.setAttribute("msg", "Records Updated Successfully");
			rd.forward(request, response);
		}else {
			
			request.setAttribute("LIST", list);
			request.setAttribute("msg", "Records Not Updated");
			rd.forward(request, response);
		}
	}
		
		
	

}
