package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/custLogin")
public class CustomerLoginServ extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cname=req.getParameter("uname");
		String emial=req.getParameter("email");
		String password=req.getParameter("pass");
		
		CustomerBean cb=null;
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		cb=CustomerDAO.custLogin(cname, emial, password);
		
		if(cb!=null)
		{
			pw.println("<html><body text=orange><center><h1>");
			pw.println(cb.getCname()+" You Have Login Sucessfully..!");
			
			RequestDispatcher rd=req.getRequestDispatcher("customerlogin.jsp");
			rd.include(req, resp);
			
		}
		else
		{ pw.println("<html><body text=orange><center><h1>");
			pw.println("Invalid userName/Password");
			pw.println("</h1></center></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("customerlogin.jsp");
			rd.include(req, resp);
			
		}
		
	}
}
