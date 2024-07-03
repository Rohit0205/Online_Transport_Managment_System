package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/querytoContact")
public class CustomerQuery extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("uname");
		String email=req.getParameter("email");
		long mob=Long.parseLong(req.getParameter("phno"));
		String msg=req.getParameter("msg");
		
	    PrintWriter pw=resp.getWriter();
	    resp.setContentType("text/html");
	    
	    int i=0;
	    
	    i=QueryDAO.customerQuery(name, email, mob, msg);
	    
	    if(i>0)
	    {
	    	pw.println("inserted sucessfully");
	    }
	    else
	    {
	    	pw.println("not inserted");
	    }
	}
}
