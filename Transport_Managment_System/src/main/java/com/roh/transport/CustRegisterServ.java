package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cutomerReg")
public class CustRegisterServ extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String cname=req.getParameter("uname");
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String password=req.getParameter("pass");
		String emial=req.getParameter("emial");
		Long phone=Long.parseLong(req.getParameter("pno"));
		
		int i=0;
		CustomerBean cb=new CustomerBean();
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		i=CustomerDAO.customerRegister(cname, fname, lname, password, emial, phone);
		
		
		if(i>0)
		{
			pw.println("<html><body text=orange><center><h1>");
			pw.println(cname+" you have Register Sucessfully...!");
			pw.println("</h1></center></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("coustomerReg.jsp");
			rd.include(req, resp);
		}
		else
		{
			pw.println("not register...!");
		}
	}
	
	
}
