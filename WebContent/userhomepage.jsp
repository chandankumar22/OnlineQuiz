<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	<%System.out.println(session.getAttribute("currentquiz"));System.out.println(session.getAttribute("quesSelected"));
	System.out.println(session.getAttribute("userAns"));
		if(session.getAttribute("currentquiz")!=null) {session.removeAttribute("currentquiz");}
		
		if(session.getAttribute("quesSelected")!=null) session.removeAttribute("quesSelected");
		
		if(session.getAttribute("userAns")!=null) session.removeAttribute("userAns");
		
	%>
  <div class="wrappergrid">

    <div class="navcontainer">
      <div class="logo">
        <a href=""><img src="images/quiz.png" alt=""></a>
      </div>
      <div class="navigation">
        <nav class="navbar">
          <ul>
            <li><a href="signin.html"><%= session.getAttribute("username") %></a></li>
            <li><a href="./SignOut">Sign out</a></li>
          </ul>
        </nav>

      </div>
    </div>
    <div class="image">
      <img src="images/cover1.jpg" alt="">

    </div>
    <div id="java" class="sub"><div><a href="./quizzy?sub=java"><img src="images/java.jpg" alt=""></a></div></div>
    <div id="c" class="sub"><div><a href="./quizzy?sub=c"><img src="images/c.jpg" alt=""></a></div></div>
    <div id="python" class="sub"><div><a href="./quizzy?sub=python"><img src="images/python.jpg" alt=""></a></div></div>
    <div id="cpp" class="sub"><div><a href="./quizzy?sub=cpp"><img src="images/cpp.jpg" alt=""></a></div></div>
    <div id="htmlcss" class="sub"><div><a href="./quizzy?sub=htmlcss"><img src="images/htmlcss.jpg" alt=""></a></div></div>
    <div id="database" class="sub"><div><a href="./quizzy?sub=dbms"><img src="images/dbms.jpg" alt=""></a></div></div>
    <div class="footer">
<div>
  Created By: Chandan Kumar
</div>
    </div>
  </div>
</body>

</html>
