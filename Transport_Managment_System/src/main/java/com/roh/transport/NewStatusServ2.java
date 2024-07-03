package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/newstatus")
public class NewStatusServ2 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		
		String truckNo=req.getParameter("tno");
		String status=req.getParameter("status");
		
		int i=0;
		
		i=TruckDAO.changedStatus(status, truckNo);
		
		System.out.println(i);
		if(i>0)
		{
			
			pw.println("<html><body bgcolor=orange text=white><center><h2>");
			pw.println("Status Changed Succesfully..!");
			pw.println("</h2></center></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("newStatusView.jsp");
			rd.include(req, resp);
		}
		else
		{  pw.println("<html><body text=white><center><h2>");
			pw.println("Not Changed");
			pw.println("</h2></center></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("newStatusView.jsp");
			rd.include(req, resp);
		}
	}
}
