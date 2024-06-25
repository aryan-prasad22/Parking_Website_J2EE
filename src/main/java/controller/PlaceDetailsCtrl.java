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


@WebServlet("/placeDetailsCtrl")
public class PlaceDetailsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String vehicle = request.getParameter("vehicleType");
		String availablefor = request.getParameter("availablefor");
		String price = request.getParameter("Price");
		String date = request.getParameter("datee");
		String enter= request.getParameter("enter");
		String exit= request.getParameter("exitt");
		String cctv =request.getParameter("cctv");
		String square =request.getParameter("square");
		String address =request.getParameter("address");
		String location =request.getParameter("location");
		
		
		
		PlaceRegister place = new PlaceRegister(fname, phone, email, vehicle, availablefor, price, date, enter, exit, cctv, square, address, location);
		
		P_AdminDAO model = new P_AdminDAO();
		int i = model.parkPlaceRegister(place);
		RequestDispatcher rd = request.getRequestDispatcher("placeDetails.jsp");
		if(i!=0) {
			request.setAttribute("msg", "Details Submitted");
			rd.forward(request, response);
		}else {
			request.setAttribute("msg", "Failed to submit Enquiry! Please Try Again!! ");
			rd.forward(request, response);
		}
		
	
	
	}
	

}
