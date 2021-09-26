package com.chandan.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import oracle.jdbc.OracleDriver;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet(urlPatterns = { "/Registration" }, initParams = {
		@WebInitParam(name = "url", value = "jdbc:oracle:thin:@localhost:1521:orcl", description = "database url"),
		@WebInitParam(name = "username", value = "hr"), @WebInitParam(name = "password", value = "ck") })
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("uname");
		String email = req.getParameter("uemail");
		String pass = req.getParameter("upass");
		String reppass = req.getParameter("urepass");
		if (!pass.equals(reppass)) {
			req.setAttribute("error", "passworddonotmatch");
			req.getRequestDispatcher("error.jsp").forward(req, resp);
			return;
		}
		new UserRegistration(name, email, pass);
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}

}
