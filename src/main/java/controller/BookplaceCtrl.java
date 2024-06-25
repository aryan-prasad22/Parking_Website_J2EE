package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.PlaceRegister;
import model.P_AdminDAO;


@WebServlet("/bookCtrl")
public class BookplaceCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idparkplace= Integer.parseInt(request.getParameter("idpark"));
		
		P_AdminDAO model = new P_AdminDAO();
		PlaceRegister pr = model.getParticularUser(idparkplace);
		RequestDispatcher rd = request.getRequestDispatcher("bookingDetails.jsp");
		request.setAttribute("PlaceRegister", pr);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
