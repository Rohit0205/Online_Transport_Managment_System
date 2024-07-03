package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/createmanager")
public class CreateManagerServ extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String branch=req.getParameter("branch");
		String uname=req.getParameter("mname");
		String password=req.getParameter("pass");
		String doj=req.getParameter("doj");
		String dob=req.getParameter("dob");
		Double salary=Double.parseDouble(req.getParameter("salary"));
		int id= Integer.parseInt(req.getParameter("id"));
		
		resp.setContentType("text/html");
		
		
		PrintWriter pw=resp.getWriter();
		
		int i=0;
		
		i=ManagerDAO.managerCreate(branch, uname, password, doj, dob, salary,id);
		
		if(i>0)
		{   pw.println("<html><body text=white><center><h1>");
			pw.println("Manger "+uname+ "Inserted Sucessfully...!");
			pw.println("</h1></center></body></html>");
			RequestDispatcher rd= req.getRequestDispatcher("createManager.jsp");
			rd.include(req, resp);
		}
		else
		{
			
			
			pw.println("<html><body text=white><center><h1>");
			pw.println("Not Inserted");
			pw.println("</h1></center></body></html>");
		}
	}
}
