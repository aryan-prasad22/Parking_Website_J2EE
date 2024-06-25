package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ContactRegister;
import dto.UserRegistration;
import model.P_AdminDAO;

@WebServlet("/delete_Contact")
public class Delete_Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("id"));
		
		P_AdminDAO model = new P_AdminDAO();
		int i = model.deleteContact(id);
		ArrayList<ContactRegister> li = model.getAllContactUs();
		RequestDispatcher rd =null;
		if(i!=0) {
			 rd = request.getRequestDispatcher("allContactDetails.jsp");
			request.setAttribute("msg", "Record Deleted Successfully");
			request.setAttribute("LIST", li);
			rd.forward(request, response);
		}else {
			rd = request.getRequestDispatcher("allContactDetails.jsp");
			request.setAttribute("msg", "Record Not Deleted ");
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
