package com.chandan.quiz;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionActive
 */
@WebServlet("/quizzy")
public class SessionActive extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    String subject;
    QuizBean qb;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public SessionActive() {
        super();
        // TODO Auto-generated constructor stub
    }
   
       @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	HttpSession hs = req.getSession();
    	if(hs.getAttribute("username")!=null) {
        	//req.getRequestDispatcher("quiz.jsp").include(req, resp);
        	subject = req.getParameter("sub");
        	loadQuestions(req, resp);
    	}
    	else {
    		req.setAttribute("error", "please login to participate in quiz!!");
        	req.getRequestDispatcher("error.jsp").include(req, resp);
    	}
    }
       
    public void loadQuestions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	UserRegistration ur= new UserRegistration();
    	String userAns[]=new String[10]; 
    	for(int i=0;i<userAns.length;i++) userAns[i] = "";
    	req.getSession().setAttribute("userAns", userAns);


    	if(subject.equals("java")) {
    		ResultSet javars = ur.quizQues("select * from java_quiz");
    		int num = ur.totalQuesNumber("select count(*) from java_quiz");
    		ArrayList<QuizBean> quesList = new ArrayList<>();
    		for(int i=1;i<=10;i++) {
    			int randomRowNumber = (int)(Math.random()*num);
    			qb=new QuizBean();
    			try {
    				javars.absolute(randomRowNumber+1);
    				qb.setQuestion(javars.getString("questions"));
					qb.setOption_a(javars.getString("option_a"));
					qb.setOption_b(javars.getString("option_b"));
					qb.setOption_c(javars.getString("option_c"));
					qb.setOption_d(javars.getString("option_d"));
					qb.setCorrect(javars.getString("correct"));
					qb.setDescription(javars.getString("description"));
					quesList.add(qb);
				} catch (SQLException e) {
					e.printStackTrace();
				}
    		}
    		req.getSession().setAttribute("quesSelected", quesList);
    		req.getSession().setAttribute("quesNo", 1);
    		req.setAttribute("subjectname", "java");
    		req.getRequestDispatcher("quiz.jsp").include(req, resp);	
    		
    	}
    	else if(subject.equals("c")) {
    		ResultSet crs = ur.quizQues("select * from c_quiz");
    		int num = ur.totalQuesNumber("select count(*) from c_quiz");
    		ArrayList<QuizBean> quesList = new ArrayList<>();
    		for(int i=1;i<=10;i++) {
    			int randomRowNumber = (int)(Math.random()*num);
    			qb=new QuizBean();
    			try {
    				crs.absolute(randomRowNumber+1);
    				qb.setQuestion(crs.getString("questions"));
					qb.setOption_a(crs.getString("option_a"));
					qb.setOption_b(crs.getString("option_b"));
					qb.setOption_c(crs.getString("option_c"));
					qb.setOption_d(crs.getString("option_d"));
					qb.setCorrect(crs.getString("correct"));
					qb.setDescription(crs.getString("description"));
					quesList.add(qb);
				} catch (SQLException e) {
					e.printStackTrace();
				}
    		}
    		req.getSession().setAttribute("quesSelected", quesList);
    		req.getSession().setAttribute("quesNo", 1);
    		req.setAttribute("subjectname", "c");
    		req.getRequestDispatcher("quiz.jsp").include(req, resp);	
    		
    	}
    	else if(subject.equals("cpp")) {
    		ResultSet cpprs = ur.quizQues("select * from cpp_quiz");
    		int num = ur.totalQuesNumber("select count(*) from cpp_quiz");
    		ArrayList<QuizBean> quesList = new ArrayList<>();
    		for(int i=1;i<=10;i++) {
    			int randomRowNumber = (int)(Math.random()*num);
    			qb=new QuizBean();
    			try {
    				cpprs.absolute(randomRowNumber+1);
    				qb.setQuestion(cpprs.getString("questions"));
					qb.setOption_a(cpprs.getString("option_a"));
					qb.setOption_b(cpprs.getString("option_b"));
					qb.setOption_c(cpprs.getString("option_c"));
					qb.setOption_d(cpprs.getString("option_d"));
					qb.setCorrect(cpprs.getString("correct"));
					qb.setDescription(cpprs.getString("description"));
					quesList.add(qb);
				} catch (SQLException e) {
					e.printStackTrace();
				}
    		}
    		req.getSession().setAttribute("quesSelected", quesList);
    		req.getSession().setAttribute("quesNo", 1);
    		req.setAttribute("subjectname", "cpp");
    		req.getRequestDispatcher("quiz.jsp").include(req, resp);	
    		
    	}
    	else if(subject.equals("python")) {
    		ResultSet pythonrs = ur.quizQues("select * from python_quiz");
    		int num = ur.totalQuesNumber("select count(*) from python_quiz");
    		ArrayList<QuizBean> quesList = new ArrayList<>();
    		for(int i=1;i<=10;i++) {
    			int randomRowNumber = (int)(Math.random()*num);
    			qb=new QuizBean();
    			try {
    				pythonrs.absolute(randomRowNumber+1);
    				qb.setQuestion(pythonrs.getString("questions"));
					qb.setOption_a(pythonrs.getString("option_a"));
					qb.setOption_b(pythonrs.getString("option_b"));
					qb.setOption_c(pythonrs.getString("option_c"));
					qb.setOption_d(pythonrs.getString("option_d"));
					qb.setCorrect(pythonrs.getString("correct"));
					qb.setDescription(pythonrs.getString("description"));
					quesList.add(qb);
				} catch (SQLException e) {
					e.printStackTrace();
				}
    		}
    		req.getSession().setAttribute("quesSelected", quesList);
    		req.getSession().setAttribute("quesNo", 1);
    		req.setAttribute("subjectname", "python");
    		req.getRequestDispatcher("quiz.jsp").include(req, resp);
    	}
    	else if(subject.equals("htmlcss")) {
    		ResultSet htmlcssrs = ur.quizQues("select * from htmlcss_quiz");
    		int num = ur.totalQuesNumber("select count(*) from htmlcss_quiz");
    		ArrayList<QuizBean> quesList = new ArrayList<>();
    		for(int i=1;i<=10;i++) {
    			int randomRowNumber = (int)(Math.random()*num);
    			qb=new QuizBean();
    			try {
    				htmlcssrs.absolute(randomRowNumber+1);
    				qb.setQuestion(htmlcssrs.getString("questions"));
					qb.setOption_a(htmlcssrs.getString("option_a"));
					qb.setOption_b(htmlcssrs.getString("option_b"));
					qb.setOption_c(htmlcssrs.getString("option_c"));
					qb.setOption_d(htmlcssrs.getString("option_d"));
					qb.setCorrect(htmlcssrs.getString("correct"));
					qb.setDescription(htmlcssrs.getString("description"));
					quesList.add(qb);
				} catch (SQLException e) {
					e.printStackTrace();
				}
    		}
    		req.getSession().setAttribute("quesSelected", quesList);
    		req.getSession().setAttribute("quesNo", 1);
    		req.setAttribute("subjectname", "htmlcss");System.out.println("qloadesreadytofgo");
    		req.getRequestDispatcher("quiz.jsp").include(req, resp);		
    		
    	}
    	else if(subject.equals("dbms")) {
    		ResultSet dbmsrs = ur.quizQues("select * from dbms_quiz");
    		int num = ur.totalQuesNumber("select count(*) from dbms_quiz");
    		ArrayList<QuizBean> quesList = new ArrayList<>();
    		for(int i=1;i<=10;i++) {
    			int randomRowNumber = (int)(Math.random()*num);
    			qb=new QuizBean();
    			try {
    				dbmsrs.absolute(randomRowNumber+1);
    				qb.setQuestion(dbmsrs.getString("questions"));
					qb.setOption_a(dbmsrs.getString("option_a"));
					qb.setOption_b(dbmsrs.getString("option_b"));
					qb.setOption_c(dbmsrs.getString("option_c"));
					qb.setOption_d(dbmsrs.getString("option_d"));
					qb.setCorrect(dbmsrs.getString("correct"));
					qb.setDescription(dbmsrs.getString("description"));
					quesList.add(qb);
				} catch (SQLException e) {
					e.printStackTrace();
				}
    		}
    		req.getSession().setAttribute("quesSelected", quesList);
    		req.getSession().setAttribute("quesNo", 1);
    		req.setAttribute("subjectname", "dbms");
    		req.getRequestDispatcher("quiz.jsp").include(req, resp);	
    	}
    }

}
