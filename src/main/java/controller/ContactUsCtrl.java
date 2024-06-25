package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ContactRegister;
import model.P_AdminDAO;

@WebServlet("/contactCtrl")
public class ContactUsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		ContactRegister cr = new ContactRegister(name, email, subject, message);
		P_AdminDAO model = new P_AdminDAO();
		
		int i = model.contactRegister(cr);
		RequestDispatcher rd = request.getRequestDispatcher("aboutPage.jsp");
	if(i!=0) {
		request.setAttribute("msg", "Query Submitted");
		rd.forward(request, response);
	}else {
		request.setAttribute("msg", "Failed to submit, Please Try Again!! ");
		rd.forward(request, response);
	}

}
}