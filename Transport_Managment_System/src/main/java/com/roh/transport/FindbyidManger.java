package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/myservlet")
public class FindbyidManger extends HttpServlet
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		MangaerBean mb=null;
		
		mb=ManagerDAO.detailsbyId(id);
		
		req.setAttribute("mb", mb);
		
		RequestDispatcher rd=req.getRequestDispatcher("ViewManDetailById.jsp");
		rd.forward(req, resp);
		
	}
}
