package com.chandan.quiz;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignOut
 */
@WebServlet("/SignOut")
public class SignOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}
   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	super.service(req, resp);
	doGet(req, resp);
	
   }
   
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession hs = req.getSession();
	if(hs.getAttribute("username")!=null) {
		hs.invalidate();
		//resp.sendRedirect("index.jsp");
		//return;
		//req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	req.getRequestDispatcher("index.jsp").include(req, resp);
}
}
