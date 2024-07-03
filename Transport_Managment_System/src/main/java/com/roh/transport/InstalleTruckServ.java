package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/installedTruck")
public class InstalleTruckServ extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String model=req.getParameter("model");
		String truckno=req.getParameter("truckno");
		String owner=req.getParameter("owner");
		String spoint=req.getParameter("spoint");
		String epoint=req.getParameter("epoint");
		Long phoneno=Long.parseLong(req.getParameter("phone"));
		
		String status=req.getParameter("status");
		String date=req.getParameter("date");
		String yes=req.getParameter("yes");
		String no=req.getParameter("NO");
		
		String insurance=null;
		
		if(yes!=null )
		{
			 insurance=req.getParameter("insurance");
		}
		if(no!=null)
		{
			insurance="No insurance";
		}
		
		System.out.println(status);
		int i=0;
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		i=TruckDAO.installedTruck(model, truckno, owner, spoint, epoint, phoneno, insurance, status,date);
		
		if(i>0)
		{
			pw.println("<h1>"+model+" Truck Installed SucessFully...!</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("installedNewTruck.jsp");
			rd.include(req, resp);
		}
		else
		{
			pw.println(model+" Not Installed SucessFully...!");
			RequestDispatcher rd=req.getRequestDispatcher("installedNewTruck.jsp");
			rd.include(req, resp);
		}
	}
}
