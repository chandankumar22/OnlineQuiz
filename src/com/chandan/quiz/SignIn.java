package com.chandan.quiz;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignIn
 */
@WebServlet(urlPatterns = { "/login" })
public class SignIn extends HttpServlet {
	HttpSession sess;
	private static final long serialVersionUID = 1L;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("imit2");
	}

	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String name = req.getParameter("usname");
			String pass = req.getParameter("uspass");
			UserRegistration reg = new UserRegistration();
        	java.util.ArrayList validate = reg.validateUser(name, pass);
        	String uname  = (String)validate.get(1);
        	if((boolean)validate.get(0) && uname!=null){
        		sess = req.getSession();
        		sess.setAttribute("username", uname);
        		RequestDispatcher rd =   req.getRequestDispatcher("userhomepage.jsp");
        		rd.include(req,resp);
        	}
        	else {
        		req.setAttribute("error", "Invalid Email or password");
        		req.getRequestDispatcher("error.jsp").forward(req, resp);
        	}
		}
	
}
