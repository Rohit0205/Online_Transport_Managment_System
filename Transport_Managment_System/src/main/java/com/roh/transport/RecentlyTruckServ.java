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
@WebServlet("/recentlyTrucks")
public class RecentlyTruckServ extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		
		ArrayList<TruckBean> al=null;
		
		al=RecentlyTrucksDAO.recntlytrucks();
		
		req.setAttribute("al", al);
		RequestDispatcher rd=req.getRequestDispatcher("viewrecentlyTrucks.jsp");
		rd.forward(req, resp);
	}
}
