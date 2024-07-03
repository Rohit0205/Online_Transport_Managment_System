package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/truckdetails")
public class TruckDetailsServ extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		
		String truckno=req.getParameter("truckno");
		String spoint=req.getParameter("spoint");
		String epoint=req.getParameter("epoint");
		
		TruckBean tb=null;
		
		tb=TruckDAO.truckdetails(truckno,spoint,epoint);
		
		if(tb!=null)
		{
			
			
			req.setAttribute("tb", tb);
			RequestDispatcher rd=req.getRequestDispatcher("truckdetailsView.jsp");
			rd.include(req, resp);
			
			
		}
		else
		{
			
			pw.println("<h1>No Any Truck Available of This "+truckno+" Nubmer</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("truckDetails.jsp");
			rd.include(req, resp);
			
		}
	}
}
