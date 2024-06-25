package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.ParkerRegister;
import dto.PlaceRegister;
import model.P_AdminDAO;

@WebServlet("/parkerCtrl")
public class ParkerDetialsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String vehicle = request.getParameter("vehicleType");
		String plate = request.getParameter("plate");
		String carmodel = request.getParameter("model");
		String color = request.getParameter("color");
		String date = request.getParameter("date");
		String hrs = request.getParameter("hrs");
		String enter= request.getParameter("enter");
		String exit= request.getParameter("exit");
		
		ParkerRegister pr = new ParkerRegister(fname, lname, phone, email, vehicle, plate, carmodel, color, date, hrs, enter, exit);
		ParkerRegister p = new ParkerRegister(vehicle, date);
		P_AdminDAO model = new P_AdminDAO();
		int i = model.parkRegister(pr);
		ArrayList<PlaceRegister> list = model.getAllPlaceUsers(p);
		if(i!=0) {
			RequestDispatcher rd = request.getRequestDispatcher("searchpage.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
			HttpSession session = request.getSession();
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("parkerDetails.jsp");
			request.setAttribute("msg", "Failed to submit Enquiry! Please Try Again!! ");
			rd.forward(request, response);
		}
		
		
	}

}
