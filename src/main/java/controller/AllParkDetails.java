package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.ParkerRegister;
import model.P_AdminDAO;


@WebServlet("/allParkDetails")
public class AllParkDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		P_AdminDAO model = new P_AdminDAO();
		ArrayList<ParkerRegister> list = model.getAllParker();
		
		RequestDispatcher rd = request.getRequestDispatcher("allParkerDetails.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
