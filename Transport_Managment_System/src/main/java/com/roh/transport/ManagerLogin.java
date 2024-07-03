package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginManager")
public class ManagerLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String branch=req.getParameter("branch");
		String uname=req.getParameter("uname");
		String password=req.getParameter("pass");
		
		MangaerBean mb=null;
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		ServletContext sc=req.getServletContext();
		sc.setAttribute("branch",branch);
		sc.setAttribute("uname", uname);
		
		mb=ManagerDAO.managerLogin(branch, uname, password);
		  
		
		    req.setAttribute("mb", mb);
			RequestDispatcher rd=req.getRequestDispatcher("managerLoginView.jsp");
			rd.forward(req, resp);
		
	}
}
