package com.roh.transport;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/towards")
public class TowardTruckServ extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		
		ServletContext sc=req.getServletContext();
	    String branch =(String) sc.getAttribute("branch");
	    String uname=(String)sc.getAttribute("uname");
		
		ArrayList<TruckBean> al=null;
		
		al=TruckDAO.towardTrucks(branch);
		
		req.setAttribute("al", al);
		RequestDispatcher rd=req.getRequestDispatcher("TowardsTruckView.jsp");
		rd.forward(req, resp);
	}
}
