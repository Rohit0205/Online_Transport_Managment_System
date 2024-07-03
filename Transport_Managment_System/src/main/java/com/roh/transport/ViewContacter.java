package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/viewContactorr")
public class ViewContacter extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		ArrayList<ContactBean> al=null;
		
		
		al=QueryDAO.viewContacterDetails();
		req.setAttribute("al", al);
		RequestDispatcher rd=req.getRequestDispatcher("viewContactorView.jsp");
		rd.forward(req, resp);
		
	}
}
