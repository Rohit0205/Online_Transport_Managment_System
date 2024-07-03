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
@WebServlet("/checkservice")
public class ServiceCheckServ extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String from=req.getParameter("from");
		String to=req.getParameter("to");
		
		ArrayList<ServiceBean> al=null;
		
		al=ServiceDAO.checkService(from, to);
		System.out.println(al);
		
		req.setAttribute("al", al);
		RequestDispatcher rd=req.getRequestDispatcher("viewService.jsp");
		rd.forward(req, resp);
	}
	
}
