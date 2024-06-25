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


@WebServlet("/allUserCtrl")
public class AllUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		P_AdminDAO model = new P_AdminDAO();
		ArrayList<UserRegistration> list = model.getAllUsers();
		
		RequestDispatcher rd = request.getRequestDispatcher("allUsers.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
