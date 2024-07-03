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
@WebServlet("/findmanager")
public class FindManagerServ extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw=resp.getWriter();
		resp.setContentType("text/html");
		
		String branch=req.getParameter("branch");
		String name=req.getParameter("name");
		
		ArrayList<MangaerBean> al=null;
		
		al=ManagerDAO.findManager(branch, name);
		
		
		req.setAttribute("al", al);
		RequestDispatcher rd=req.getRequestDispatcher("FindManagerView.jsp");
		rd.include(req, resp);
		
		
		
	}
}
