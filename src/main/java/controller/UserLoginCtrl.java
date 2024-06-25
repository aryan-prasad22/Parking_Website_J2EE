package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.P_AdminDAO;


@WebServlet("/userloginctrl")
public class UserLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u = request.getParameter("email");
		String p = request.getParameter("pwd");

		P_AdminDAO model = new P_AdminDAO();

		int i = model.checkLogin(u, p);
		if (i != 0) {
			HttpSession session = request.getSession();
			session.setAttribute("user", u);
			response.sendRedirect("choosepark.jsp");
			
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "");
			rd.forward(request, response);
		}
	}

}
