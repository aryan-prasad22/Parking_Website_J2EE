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


@WebServlet("/delete_User")
public class Delete_User extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmail= request.getParameter("userEmail");
		
		P_AdminDAO model = new P_AdminDAO();
		int i = model.deleteUser(userEmail);
		ArrayList<UserRegistration> li = model.getAllUsers();
		RequestDispatcher rd =null;
		if(i!=0) {
			 rd = request.getRequestDispatcher("allUsers.jsp");
			request.setAttribute("msg", "Record Deleted Successfully");
			request.setAttribute("LIST", li);
			rd.forward(request, response);
		}else {
			rd = request.getRequestDispatcher("allUsers.jsp");
			request.setAttribute("msg", "Record Not Deleted ");
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
