package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/changestatus")
public class ChangeStatusServ extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();

		String status=req.getParameter("truckno");
		String truckno=req.getParameter("changedStatus");
		
		int i=0;
		
		i=TruckDAO.changedStatus(truckno, status);
		System.out.println(TruckDAO.changedStatus(truckno, status));
		
		if(i>0)
		{
			pw.println("Status Changed Succesfully...!");
		}
		else
		{
			pw.println("Not Changed");
		}
	}
}
