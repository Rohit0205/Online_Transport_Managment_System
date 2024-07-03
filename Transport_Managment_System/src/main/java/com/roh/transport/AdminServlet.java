package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminlogin")
public class AdminServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");

		String uname=req.getParameter("uname");
		String password=req.getParameter("pass");
		
		AdminBean ab=null; 
				
		PrintWriter pw=resp.getWriter();
		
		ab=AdminDAO.adminLogin(uname, password);
		
		
		
		
		if(ab!=null)
		{
			pw.println(uname+" Admin You have Login Sucessfull");
			RequestDispatcher rd=req.getRequestDispatcher("adminview.jsp");
			rd.include(req, resp);
		}
		else
		{
			pw.println("Invalid userName/password");
			RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");
			rd.include(req, resp);
		}
	}
}
