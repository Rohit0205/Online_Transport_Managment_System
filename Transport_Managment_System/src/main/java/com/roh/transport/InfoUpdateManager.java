package com.roh.transport;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/infoUpdateManger")
public class InfoUpdateManager extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		int id=Integer.parseInt(req.getParameter("baseId"));
		String name=req.getParameter("basedName");
		
		MangaerBean mb=null;
		
		mb=ManagerDAO.managerDetails(id, name);
		
		if(mb!=null)
		{
			
			req.setAttribute("mb", mb);
			RequestDispatcher rd=req.getRequestDispatcher("updateManager.jsp");
			rd.include(req, resp);
			
		}
		else
		{
			pw.println("<html><body  ><center><h2>");
			pw.println("No Any Manager Available of this "+id+" Number");
			pw.println("</h2></center></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("infoupdatManager.jsp");
			rd.include(req, resp);
			
			
		}
	}
}
