<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList,com.chandan.quiz.QuizBean" %>
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
<body>
  <div class="container">
<jsp:useBean id="scorebean" class="com.chandan.quiz.ScoreBean" type="com.chandan.quiz.ScoreBean" scope="session">
</jsp:useBean>
<jsp:useBean id="cscorebean" class="com.chandan.quiz.ScoreBean" type="com.chandan.quiz.ScoreBean" scope="session">
</jsp:useBean>
<jsp:useBean id="cppscorebean" class="com.chandan.quiz.ScoreBean" type="com.chandan.quiz.ScoreBean" scope="session">
</jsp:useBean>
<jsp:useBean id="htcsscorebean" class="com.chandan.quiz.ScoreBean" type="com.chandan.quiz.ScoreBean" scope="session">
</jsp:useBean>
<jsp:useBean id="pyscorebean" class="com.chandan.quiz.ScoreBean" type="com.chandan.quiz.ScoreBean" scope="session">
</jsp:useBean>
<jsp:useBean id="dbmscorebean" class="com.chandan.quiz.ScoreBean" type="com.chandan.quiz.ScoreBean" scope="session">
</jsp:useBean>
    <div class="row" style="margin-bottom:50px;">
      <div class="col display-4">
      
      <% String quiz =(String)session.getAttribute("currentquiz");
      if(quiz.equals("java")){
      	questions = scorebean.getQuesList();System.out.println(questions);
		answers = scorebean.getUserAnswers();for(String s:answers) System.out.print(s+" ,");%>
      
      <header class="jumbotron center"><jsp:getProperty property="quiz_name" name="scorebean"/>  </header></div>
    </div>
     <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Attempted</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="attempted" name="scorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Correct</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="correct_answers" name="scorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Wrong</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="wrong_answers" name="scorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Score</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="score" name="scorebean"/>/10</pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
      <%} 
      else if(quiz.equals("c")){
      questions = cscorebean.getQuesList();
      answers = cscorebean.getUserAnswers();%>
      
      <header class="jumbotron center"><jsp:getProperty property="quiz_name" name="cscorebean"/>  </header></div>
    </div>
     <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Attempted</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="attempted" name="cscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Correct</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="correct_answers" name="cscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Wrong</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="wrong_answers" name="cscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Score</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="score" name="cscorebean"/>/10</pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
      <%} 
       else if(quiz.equals("cpp")){
       questions = cppscorebean.getQuesList();
      answers = cppscorebean.getUserAnswers();%>
      
      <header class="jumbotron center"><jsp:getProperty property="quiz_name" name="cppscorebean"/>  </header></div>
    </div>
     <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Attempted</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="attempted" name="cppscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Correct</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="correct_answers" name="cppscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Wrong</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="wrong_answers" name="cppscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Score</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="score" name="cppscorebean"/>/10</pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
      <%}
       else if(quiz.equals("python")){
       questions = pyscorebean.getQuesList();
      answers = pyscorebean.getUserAnswers();%>
      
      <header class="jumbotron center"><jsp:getProperty property="quiz_name" name="pyscorebean"/>  </header></div>
    </div>
     <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Attempted</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="attempted" name="pyscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Correct</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="correct_answers" name="pyscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Wrong</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="wrong_answers" name="pyscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Score</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="score" name="pyscorebean"/>/10</pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
      <%} 
       else if(quiz.equals("htmlcss")){
       questions = htcsscorebean.getQuesList();
      answers = htcsscorebean.getUserAnswers();%>
      
      <header class="jumbotron center"><jsp:getProperty property="quiz_name" name="htcsscorebean"/>  </header></div>
    </div>
     <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Attempted</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="attempted" name="htcsscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Correct</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="correct_answers" name="htcsscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Wrong</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="wrong_answers" name="htcsscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Score</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="score" name="htcsscorebean"/>/10</pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
      <%} 
       else if(quiz.equals("dbms")){
       questions = dbmscorebean.getQuesList();
      answers = dbmscorebean.getUserAnswers();%>
      
      <header class="jumbotron center"><jsp:getProperty property="quiz_name" name="dbmscorebean"/>  </header></div>
    </div>
     
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Attempted</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="attempted" name="dbmscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Correct</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="correct_answers" name="dbmscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Wrong</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="wrong_answers" name="dbmscorebean"/></pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
       <div class="col"></div>
      <div class="col"><pre>Score</pre></div>
       <div class="col"></div>
        <div class="col"><pre> <jsp:getProperty property="score" name="dbmscorebean"/>/10</pre></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
    
      <%} %>
	<%!
		ArrayList<QuizBean> questions;
		String[] answers;
		QuizBean qb;
	%>
	<table class="table table-dark">
	<thead>
		<tr>
			<td>S.no</td>
			<td>Question</td>
			<td>Your Answer</td>
			<td>Correct Answer</td>
			<td>Description</td>
		</tr>
	</thead>
	<tbody>
		<%for(int index=0;index<questions.size();index++){
			qb=questions.get(index);%>
			<tr>
				<td><%=index+1 %></td>
				<td><%=qb.getQuestion() %></td>
				<%if(answers.length>index){ %><td><%=answers[index] %></td><%} %>
				<td><%= qb.getCorrect() %></td>
				<td><%= qb.getDescription() %></td>
			</tr>
		<%} %>
	</tbody>
	
	
	</table>
    
    <% session.removeAttribute("currentquiz");
    session.removeAttribute("quesSelected");   
    session.removeAttribute("userAns");

    
    %>
    <div class="row" style="margin-top:20px;">
      <div class="col">
        <a style="font-size:24px;" href="index.jsp">GO TO HOME PAGE</a>
      </div>
    </div>

  </div>
</body>
</html>
