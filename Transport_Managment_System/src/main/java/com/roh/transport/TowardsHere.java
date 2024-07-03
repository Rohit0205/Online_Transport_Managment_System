package com.roh.transport;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/towards123")
public class TowardsHere extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String branch=req.getParameter("branch");
		
		ArrayList<TruckBean> al=null;
		
		al=TruckDAO.towardTrucks(branch);
		
		req.setAttribute("al", al);
		RequestDispatcher rd=req.getRequestDispatcher("viewTowardHere.jsp");
		rd.forward(req, resp);
	}
}
