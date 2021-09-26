<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.chandan.quiz.UserRegistration , java.util.ArrayList, java.sql.*" isErrorPage="true"  errorPage="error.jsp"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
  <title>Document</title>
</head>

<body style="overflow-x: hidden;">




<%
	if(session.getAttribute("username")!=null){
		request.getRequestDispatcher("userhomepage.jsp").forward(request, response);
	}
	else{
%>
  <div class="wrappergrid">

    <div class="navcontainer">
      <div class="logo">
        <a href="index.jsp"><img src="images/quiz.png" alt=""></a>
      </div>
      <div class="navigation">
        <nav class="navbar">
          <ul>
            <li><a href="">About</a></li>
            <li><a href="">Contact</a></li>
         	<li><a href="signin.html">Sign in</a></li>
			<li><a href="index.jsp">Sign up</a></li>
          </ul>
        </nav>
      </div>
    </div>
    <div class="image">
      <img src="images/cover1.jpg" alt="">
    </div>
    <div id="java" class="sub"><div><a href="./quizzy"><img src="images/java.jpg" alt=""></a></div></div>
    <div id="c" class="sub"><div><a href="./quizzy"><img src="images/c.jpg" alt=""></a></div></div>
    <div id="cpp" class="sub"><div><a href="./quizzy"><img src="images/cpp.jpg" alt=""></a></div></div>
    <div id="python" class="sub"><div><a href="./quizzy"><img src="images/python.jpg" alt=""></a></div></div>
    <div id="htmlcss" class="sub"><div><a href="./quizzy"><img src="images/htmlcss.jpg" alt=""></a></div></div> 
    <div id="database" class="sub"><div><a href="./quizzy"><img src="images/dbms.jpg" alt=""></a></div></div>
    <div class="footer">
		<div>Created By: Chandan Kumar</div>
    </div>
  </div>
  <%} %>
</body>
</html>
    