package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import javax.print.attribute.HashPrintRequestAttributeSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateManger")
public class UpdateManagerServ extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
				
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		
		
		int id=Integer.parseInt(req.getParameter("id"));
		String branch=req.getParameter("branch");
		String name=req.getParameter("name");
		String pass=req.getParameter("pass");
		double salary=Double.parseDouble(req.getParameter("salary"));
		
		
		
		int i=0;
		
		i=ManagerDAO.updateManager(branch, name, pass, salary, id);
		
		if(i>0)
		{
			pw.println("<html><body bgcolor=red text=yellow>><center><h1>");
			pw.println("Update Succesfully...!");
			pw.println("</center></body></html></h1>");
			RequestDispatcher rd=req.getRequestDispatcher("infoupdatManager.jsp");
			rd.include(req, resp);
			
		}
		else
		{
			pw.println("SomeThing Went Wrong Not updated");
			RequestDispatcher rd=req.getRequestDispatcher("infoupdatManager.jsp");
			rd.include(req, resp);
		}
		
		
		}
	
	}

