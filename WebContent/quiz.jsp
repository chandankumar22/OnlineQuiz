<%@page import="com.chandan.quiz.ExceptionGenerator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*,com.chandan.quiz.QuizBean" isErrorPage="true" errorPage="error.jsp" %>


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
  <title>Quiz</title>
  <style type="text/css">
  .ques{
  	margin-left:"10px";
  	font-weight:"bold";
  	font-size: 16px;
  }
  </style>
</head>

<body >
  <div class="container-fluid">
    <header>
   	 <jsp:include page="quizheader.jsp"></jsp:include>
    </header>
    <form action="quiz.jsp<%/* ?qno=session.getAttribute("quesNo")*/%>" method="post" style="border:3px solid grey;margin:20px;padding:20px;">
    <div class="row" style="margin-top:100px; margin-left:20px;">
		<div class="col">
			<%if(session.getAttribute("currentquiz")==null){/*First Question*/
				System.out.println("FirstQuesBlock");
				String subname = (String)request.getAttribute("subjectname");
				
				/*JAVA QUIZ BLOCK*/
				if(subname.equals("java")){
					session.setAttribute("currentquiz", "java");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					int quesNumber = (int)session.getAttribute("quesNo");
					System.out.println("FIRST QUESTION   "+quesNumber);
					QuizBean qb = al.get(quesNumber);
					String ques = qb.getQuestion();
					String optA = qb.getOption_a();
					String optB = qb.getOption_b();
					String optC = qb.getOption_c();
					String optD = qb.getOption_d();
					%>       
        		<pre class="ques"><%= (quesNumber)+"."+ ques %></pre>
        		
        		<div class="radio" >
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="a" id="opA" class="ra">
            			<label for="opA"><%= optA %></label>
          			</div>

          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="b" id="opB">
            			<label for="opB"><%= optB %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="c" id="opC">
            			<label for="opC"><%= optC %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="d" id="opD">
            			<label for="opD"><%= optD %></label>
          			</div>
          			<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        		</div>
        		
        		<%}
				
				/*C QUIZ BLOCK*/
				else if(subname.equals("c")){
					session.setAttribute("currentquiz", "c");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					int quesNumber = (int)session.getAttribute("quesNo");
					System.out.println("FIRST QUESTION   "+quesNumber);
					QuizBean qb = al.get(quesNumber);
					String ques = qb.getQuestion();
					String optA = qb.getOption_a();
					String optB = qb.getOption_b();
					String optC = qb.getOption_c();
					String optD = qb.getOption_d();
			%>       
        	<pre class="ques"><%= (quesNumber)+"."+ques %></pre>
        	<div class="radio" >
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="a" id="opA" class="ra">
            			<label for="opA"><%= optA %></label>
          			</div>

          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="b" id="opB">
            			<label for="opB"><%= optB %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="c" id="opC">
            			<label for="opC"><%= optC %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="d" id="opD">
            			<label for="opD"><%= optD %></label>
          			</div>
          			<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        		</div>
        	<%}
				
				/*C++ QUIZ BLOCK*/
				else if(subname.equals("cpp")){
					session.setAttribute("currentquiz", "cpp");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					int quesNumber = (int)session.getAttribute("quesNo");
					System.out.println("FIRST QUESTION   "+quesNumber);
					QuizBean qb = al.get(quesNumber);
					String ques = qb.getQuestion();
					String optA = qb.getOption_a();
					String optB = qb.getOption_b();
					String optC = qb.getOption_c();
					String optD = qb.getOption_d();
			%>       
        	<pre class="ques"><%=(quesNumber)+"."+ ques %></pre>
        	<div class="radio" >
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="a" id="opA" class="ra">
            			<label for="opA"><%= optA %></label>
          			</div>

          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="b" id="opB">
            			<label for="opB"><%= optB %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="c" id="opC">
            			<label for="opC"><%= optC %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="d" id="opD">
            			<label for="opD"><%= optD %></label>
          			</div>
          			<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        		</div>
<%}
				/*PYTHON QUIZ BLOCK*/
				else if(subname.equals("python")){
					session.setAttribute("currentquiz", "python");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					int quesNumber = (int)session.getAttribute("quesNo");
					System.out.println("FIRST QUESTION   "+quesNumber);
					QuizBean qb = al.get(quesNumber);
					String ques = qb.getQuestion();
					String optA = qb.getOption_a();
					String optB = qb.getOption_b();
					String optC = qb.getOption_c();
					String optD = qb.getOption_d();
			%>       
        	<pre class="ques"><%=(quesNumber)+"."+ ques %></pre>
        	<div class="radio" >
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="a" id="opA" class="ra">
            			<label for="opA"><%= optA %></label>
          			</div>

          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="b" id="opB">
            			<label for="opB"><%= optB %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="c" id="opC">
            			<label for="opC"><%= optC %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="d" id="opD">
            			<label for="opD"><%= optD %></label>
          			</div>
          			<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        		</div>
        	<%}
				
				/*HTML QUIZ BLOCK*/
				else if(subname.equals("htmlcss")){
					session.setAttribute("currentquiz", "htmlcss");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					int quesNumber = (int)session.getAttribute("quesNo");
					System.out.println("FIRST QUESTION   "+quesNumber);
					QuizBean qb = al.get(quesNumber);
					String ques = qb.getQuestion();
					String optA = qb.getOption_a();
					String optB = qb.getOption_b();
					String optC = qb.getOption_c();
					String optD = qb.getOption_d();
			%>       
        	<pre class="ques"><%=(quesNumber)+"."+ ques %></pre>
        	<div class="radio" >
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="a" id="opA" class="ra">
            			<label for="opA"><%= optA %></label>
          			</div>

          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="b" id="opB">
            			<label for="opB"><%= optB %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="c" id="opC">
            			<label for="opC"><%= optC %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="d" id="opD">
            			<label for="opD"><%= optD %></label>
          			</div>
          			<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        		</div>
        	<%}
				
				/*DBMS QUIZ BLOCK*/
				else if(subname.equals("dbms")){
					session.setAttribute("currentquiz", "dbms");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					int quesNumber = (int)session.getAttribute("quesNo");
					System.out.println("FIRST QUESTION   "+quesNumber);
					QuizBean qb = al.get(quesNumber);
					String ques = qb.getQuestion();
					String optA = qb.getOption_a();
					String optB = qb.getOption_b();
					String optC = qb.getOption_c();
					String optD = qb.getOption_d();
			%>       
        	<pre class="ques"><%=(quesNumber)+"."+ ques %></pre>
        	<div class="radio" >
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="a" id="opA" class="ra">
            			<label for="opA"><%= optA %></label>
          			</div>

          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="b" id="opB">
            			<label for="opB"><%= optB %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="c" id="opC">
            			<label for="opC"><%= optC %></label>
          			</div>
          			<div style="margin:30px;">
            			<input type="radio" name="answers" value="d" id="opD">
            			<label for="opD"><%= optD %></label>
          			</div>
          			<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
          			
        		</div>
        	<%}/*ELSEIF*/ 
				}/*IF BLOCK Ends FOR FIRST QUESTION/Checking current subject SESSION*/
			
			
			/*OUTER ELSE BLOCK*/
			else{
				String currentquiz=(String)session.getAttribute("currentquiz");
				//String []userAnswer = (String[])session.getAttribute("userAns");
				
				if(currentquiz.equals("java")){
					String []userAnswer = (String[])session.getAttribute("userAns");
					String userAns = request.getParameter("answers");
					String correctAnswer = request.getParameter("ans");
					int n = (int)session.getAttribute("quesNo");
					if(userAns==null){
						System.out.println("not answered");			
						userAnswer[n-1]="";
						session.setAttribute("userAns", userAnswer);
					}
					else if(userAns.equalsIgnoreCase(correctAnswer)){/*INCREMENTING Correct ANSWER*/
						userAnswer[n-1]=userAns;
						session.setAttribute("userAns", userAnswer);
					}
					else{
						userAnswer[n-1]=request.getParameter("answers");
						session.setAttribute("userAns", userAnswer);
					}
					String button = (String)request.getParameter("whichbutton");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					String optA,optB,optC,optD;
					if(button==null){throw new ExceptionGenerator("It seems either u did not complete quiz ..refresh your home page");}
					switch(button){
						case("prev"):
							QuizBean qb;
							//n--;
							if(n==1){
								qb = al.get(0);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%><pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n--;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
										
									
	          						<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div>
							<%break;
						
						case("next"):
							//n++;
							if(n==10){/*Last Question*/
								qb=al.get(2);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n++;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								session.setAttribute("qno", n+"");%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
	          					<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div><!-- column end div -->
							<%break;
						
						case("submit"):
							int na=0;
							int sc=0;
							ArrayList<QuizBean> ql = (ArrayList)session.getAttribute("quesSelected");
							String[] ansL = (String[])session.getAttribute("userAns");
							for(int i=0;i<ansL.length;i++){
								if(ansL[i].equalsIgnoreCase("a")||ansL[i].equalsIgnoreCase("b")||ansL[i].equalsIgnoreCase("c")||ansL[i].equalsIgnoreCase("d")){
									na++;		
								}
							}
							QuizBean q;
							ArrayList<QuizBean> quesL = (ArrayList)session.getAttribute("quesSelected");
							for(int i=0;i<quesL.size();i++){
								q=quesL.get(i);
								if(ansL[i].equalsIgnoreCase(q.getCorrect())) sc++;
							}
							String qu= (String)session.getAttribute("currentquiz") ;%>
							
							<jsp:useBean id="scorebean" class="com.chandan.quiz.ScoreBean" 
							type="com.chandan.quiz.ScoreBean" scope="session">
							</jsp:useBean>
							<jsp:setProperty name="scorebean" property="attempted" value="<%=na%>"/>
							<jsp:setProperty name="scorebean" property="score" value="<%=sc %>"/>
							<jsp:setProperty name="scorebean" property="correct_answers" value="<%=sc%>"/>
							<jsp:setProperty name="scorebean" property="wrong_answers" value="<%=na-sc%>"/>
							<jsp:setProperty name="scorebean" property="quiz_name" value="<%=qu%>"/>
							<jsp:setProperty name="scorebean" property="quesList" value="<%=ql%>"/>
							<jsp:setProperty name="scorebean" property="userAnswers" value="<%=ansL%>"/>
							
							 
							  <jsp:forward page="results.jsp"></jsp:forward>
							<%break;
					}/*SWITCH BLOCK ENDS*/
				}/*IF JAVAQUIZ BLOCK ENDS*/
				
				/*C QUIZ BLOCK*/
				else if(currentquiz.equals("c")){
					String []userAnswer = (String[])session.getAttribute("userAns");
					String userAns = request.getParameter("answers");
					String correctAnswer = request.getParameter("ans");
					int n = (int)session.getAttribute("quesNo");
					if(userAns==null){
						System.out.println("not answered");			
						userAnswer[n-1]="";
						session.setAttribute("userAns", userAnswer);
					}
					else if(userAns.equalsIgnoreCase(correctAnswer)){/*INCREMENTING Correct ANSWER*/
						userAnswer[n-1]=userAns;
						session.setAttribute("userAns", userAnswer);
					}
					else{
						userAnswer[n-1]=request.getParameter("answers");
						session.setAttribute("userAns", userAnswer);
					}
					String button = (String)request.getParameter("whichbutton");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					String optA,optB,optC,optD;
					if(button==null){throw new ExceptionGenerator("It seems either u did not complete quiz ..refresh your home page");}
					switch(button){
						case("prev"):
							QuizBean qb;
							//n--;
							if(n==1){
								qb = al.get(0);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%><pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n--;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
										
									
	          						<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div>
							<%break;
						
						case("next"):
							//n++;
							if(n==10){/*Last Question*/
								qb=al.get(2);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n++;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								session.setAttribute("qno", n+"");%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
	          					<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div><!-- column end div -->
							<%break;
						
						case("submit"):
							int na=0;
							int sc=0;
							ArrayList<QuizBean> ql = (ArrayList)session.getAttribute("quesSelected");
							String[] ansL = (String[])session.getAttribute("userAns");
							for(int i=0;i<ansL.length;i++){
								if(ansL[i].equalsIgnoreCase("a")||ansL[i].equalsIgnoreCase("b")||ansL[i].equalsIgnoreCase("c")||ansL[i].equalsIgnoreCase("d")){
									na++;		
								}
							}
							QuizBean q;
							ArrayList<QuizBean> quesL = (ArrayList)session.getAttribute("quesSelected");
							for(int i=0;i<quesL.size();i++){
								q=quesL.get(i);
								if(ansL[i].equalsIgnoreCase(q.getCorrect())) sc++;
							}
							String qu= (String)session.getAttribute("currentquiz") ;%>
							
							<jsp:useBean id="cscorebean" class="com.chandan.quiz.ScoreBean" 
							type="com.chandan.quiz.ScoreBean" scope="session">
							</jsp:useBean>
							<jsp:setProperty name="cscorebean" property="attempted" value="<%=na%>"/>
							<jsp:setProperty name="cscorebean" property="score" value="<%=sc %>"/>
							<jsp:setProperty name="cscorebean" property="correct_answers" value="<%=sc%>"/>
							<jsp:setProperty name="cscorebean" property="wrong_answers" value="<%=na-sc%>"/>
							<jsp:setProperty name="cscorebean" property="quiz_name" value="<%=qu%>"/>
							<jsp:setProperty name="cscorebean" property="quesList" value="<%=ql%>"/>
							<jsp:setProperty name="cscorebean" property="userAnswers" value="<%=ansL%>"/>
							
							 
							  <jsp:forward page="results.jsp"></jsp:forward>
							<%break;
					}/*SWITCH BLOCK ENDS*/
				}/*IF CQUIZ BLOCK ENDS*/
				
				/*C++ QUIZ BLOCK*/
				else if(currentquiz.equals("cpp")){
					String []userAnswer = (String[])session.getAttribute("userAns");
					String userAns = request.getParameter("answers");
					String correctAnswer = request.getParameter("ans");
					int n = (int)session.getAttribute("quesNo");
					if(userAns==null){
						System.out.println("not answered");			
						userAnswer[n-1]="";
						session.setAttribute("userAns", userAnswer);
					}
					else if(userAns.equalsIgnoreCase(correctAnswer)){/*INCREMENTING Correct ANSWER*/
						userAnswer[n-1]=userAns;
						session.setAttribute("userAns", userAnswer);
					}
					else{
						userAnswer[n-1]=request.getParameter("answers");
						session.setAttribute("userAns", userAnswer);
					}
					String button = (String)request.getParameter("whichbutton");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					String optA,optB,optC,optD;
					if(button==null){throw new ExceptionGenerator("It seems either u did not complete quiz ..refresh your home page");}
					switch(button){
						case("prev"):
							QuizBean qb;
							//n--;
							if(n==1){
								qb = al.get(0);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%><pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n--;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
										
									
	          						<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div>
							<%break;
						
						case("next"):
							//n++;
							if(n==10){/*Last Question*/
								qb=al.get(2);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n++;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								session.setAttribute("qno", n+"");%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
	          					<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div><!-- column end div -->
							<%break;
						
						case("submit"):
							int na=0;
							int sc=0;
							ArrayList<QuizBean> ql = (ArrayList)session.getAttribute("quesSelected");
							String[] ansL = (String[])session.getAttribute("userAns");
							for(int i=0;i<ansL.length;i++){
								if(ansL[i].equalsIgnoreCase("a")||ansL[i].equalsIgnoreCase("b")||ansL[i].equalsIgnoreCase("c")||ansL[i].equalsIgnoreCase("d")){
									na++;		
								}
							}
							QuizBean q;
							ArrayList<QuizBean> quesL = (ArrayList)session.getAttribute("quesSelected");
							for(int i=0;i<quesL.size();i++){
								q=quesL.get(i);
								if(ansL[i].equalsIgnoreCase(q.getCorrect())) sc++;
							}
							String qu= (String)session.getAttribute("currentquiz") ;%>
							
							<jsp:useBean id="cppscorebean" class="com.chandan.quiz.ScoreBean" 
							type="com.chandan.quiz.ScoreBean" scope="session">
							</jsp:useBean>
							<jsp:setProperty name="cppscorebean" property="attempted" value="<%=na%>"/>
							<jsp:setProperty name="cppscorebean" property="score" value="<%=sc %>"/>
							<jsp:setProperty name="cppscorebean" property="correct_answers" value="<%=sc%>"/>
							<jsp:setProperty name="cppscorebean" property="wrong_answers" value="<%=na-sc%>"/>
							<jsp:setProperty name="cppscorebean" property="quiz_name" value="<%=qu%>"/>
							<jsp:setProperty name="cppscorebean" property="quesList" value="<%=ql%>"/>
							<jsp:setProperty name="cppscorebean" property="userAnswers" value="<%=ansL%>"/>
							
							 
							  <jsp:forward page="results.jsp"></jsp:forward>
							<%break;
					}/*SWITCH BLOCK ENDS*/
				}/*IF C++QUIZ BLOCK ENDS*/
				
				/*PYTHON QUIZ BLOCK*/		
				else if(currentquiz.equals("python")){
					String []userAnswer = (String[])session.getAttribute("userAns");
					String userAns = request.getParameter("answers");
					String correctAnswer = request.getParameter("ans");
					int n = (int)session.getAttribute("quesNo");
					if(userAns==null){
						System.out.println("not answered");			
						userAnswer[n-1]="";
						session.setAttribute("userAns", userAnswer);
					}
					else if(userAns.equalsIgnoreCase(correctAnswer)){/*INCREMENTING Correct ANSWER*/
						userAnswer[n-1]=userAns;
						session.setAttribute("userAns", userAnswer);
					}
					else{
						userAnswer[n-1]=request.getParameter("answers");
						session.setAttribute("userAns", userAnswer);
					}
					String button = (String)request.getParameter("whichbutton");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					String optA,optB,optC,optD;
					if(button==null){throw new ExceptionGenerator("It seems either u did not complete quiz ..refresh your home page");}
					switch(button){
						case("prev"):
							QuizBean qb;
							//n--;
							if(n==1){
								qb = al.get(0);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%><pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n--;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
										
									
	          						<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div>
							<%break;
						
						case("next"):
							//n++;
							if(n==10){/*Last Question*/
								qb=al.get(2);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n++;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								session.setAttribute("qno", n+"");%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
	          					<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div><!-- column end div -->
							<%break;
						
						case("submit"):
							int na=0;
							int sc=0;
							ArrayList<QuizBean> ql = (ArrayList)session.getAttribute("quesSelected");
							String[] ansL = (String[])session.getAttribute("userAns");
							for(int i=0;i<ansL.length;i++){
								if(ansL[i].equalsIgnoreCase("a")||ansL[i].equalsIgnoreCase("b")||ansL[i].equalsIgnoreCase("c")||ansL[i].equalsIgnoreCase("d")){
									na++;		
								}
							}
							QuizBean q;
							ArrayList<QuizBean> quesL = (ArrayList)session.getAttribute("quesSelected");
							for(int i=0;i<quesL.size();i++){
								q=quesL.get(i);
								if(ansL[i].equalsIgnoreCase(q.getCorrect())) sc++;
							}
							String qu= (String)session.getAttribute("currentquiz") ;%>
							
							<jsp:useBean id="pyscorebean" class="com.chandan.quiz.ScoreBean" 
							type="com.chandan.quiz.ScoreBean" scope="session">
							</jsp:useBean>
							<jsp:setProperty name="pyscorebean" property="attempted" value="<%=na%>"/>
							<jsp:setProperty name="pyscorebean" property="score" value="<%=sc %>"/>
							<jsp:setProperty name="pyscorebean" property="correct_answers" value="<%=sc%>"/>
							<jsp:setProperty name="pyscorebean" property="wrong_answers" value="<%=na-sc%>"/>
							<jsp:setProperty name="pyscorebean" property="quiz_name" value="<%=qu%>"/>
							<jsp:setProperty name="pyscorebean" property="quesList" value="<%=ql%>"/>
							<jsp:setProperty name="pyscorebean" property="userAnswers" value="<%=ansL%>"/>
							
							 
							  <jsp:forward page="results.jsp"></jsp:forward>
							<%break;
					}/*SWITCH BLOCK ENDS*/
				}/*IF PYTHONQUIZ BLOCK ENDS*/
				
				/*HTMLCSS QUIZ BLOCK*/
				else if(currentquiz.equals("htmlcss")){
					String []userAnswer = (String[])session.getAttribute("userAns");
					String userAns = request.getParameter("answers");
					String correctAnswer = request.getParameter("ans");
					int n = (int)session.getAttribute("quesNo");
					if(userAns==null){
						System.out.println("not answered");			
						userAnswer[n-1]="";
						session.setAttribute("userAns", userAnswer);
					}
					else if(userAns.equalsIgnoreCase(correctAnswer)){/*INCREMENTING Correct ANSWER*/
						userAnswer[n-1]=userAns;
						session.setAttribute("userAns", userAnswer);
					}
					else{
						userAnswer[n-1]=request.getParameter("answers");
						session.setAttribute("userAns", userAnswer);
					}
					String button = (String)request.getParameter("whichbutton");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					String optA,optB,optC,optD;
					if(button==null){throw new ExceptionGenerator("It seems either u did not complete quiz ..refresh your home page");}
					switch(button){
						case("prev"):
							QuizBean qb;
							//n--;
							if(n==1){
								qb = al.get(0);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%><pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n--;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
										
									
	          						<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div>
							<%break;
						
						case("next"):
							//n++;
							if(n==10){/*Last Question*/
								qb=al.get(2);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n++;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								session.setAttribute("qno", n+"");%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
	          					<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div><!-- column end div -->
							<%break;
						
						case("submit"):
							int na=0;
							int sc=0;
							ArrayList<QuizBean> ql = (ArrayList)session.getAttribute("quesSelected");
							String[] ansL = (String[])session.getAttribute("userAns");
							for(int i=0;i<ansL.length;i++){
								if(ansL[i].equalsIgnoreCase("a")||ansL[i].equalsIgnoreCase("b")||ansL[i].equalsIgnoreCase("c")||ansL[i].equalsIgnoreCase("d")){
									na++;		
								}
							}
							QuizBean q;
							ArrayList<QuizBean> quesL = (ArrayList)session.getAttribute("quesSelected");
							for(int i=0;i<quesL.size();i++){
								q=quesL.get(i);
								if(ansL[i].equalsIgnoreCase(q.getCorrect())) sc++;
							}
							String qu= (String)session.getAttribute("currentquiz") ;%>
							
							<jsp:useBean id="htcsscorebean" class="com.chandan.quiz.ScoreBean" 
							type="com.chandan.quiz.ScoreBean" scope="session">
							</jsp:useBean>
							<jsp:setProperty name="htcsscorebean" property="attempted" value="<%=na%>"/>
							<jsp:setProperty name="htcsscorebean" property="score" value="<%=sc %>"/>
							<jsp:setProperty name="htcsscorebean" property="correct_answers" value="<%=sc%>"/>
							<jsp:setProperty name="htcsscorebean" property="wrong_answers" value="<%=na-sc%>"/>
							<jsp:setProperty name="htcsscorebean" property="quiz_name" value="<%=qu%>"/>
							<jsp:setProperty name="htcsscorebean" property="quesList" value="<%=ql%>"/>
							<jsp:setProperty name="htcsscorebean" property="userAnswers" value="<%=ansL%>"/>
							
							 
							  <jsp:forward page="results.jsp"></jsp:forward>
							<%break;
					}/*SWITCH BLOCK ENDS*/
				}/*IF HTMLCSSQUIZ BLOCK ENDS*/
				
				/*DBMS QUIZ BLOCK*/
				else if(currentquiz.equals("dbms")){
					String []userAnswer = (String[])session.getAttribute("userAns");
					String userAns = request.getParameter("answers");
					String correctAnswer = request.getParameter("ans");
					int n = (int)session.getAttribute("quesNo");
					if(userAns==null){
						System.out.println("not answered");			
						userAnswer[n-1]="";
						session.setAttribute("userAns", userAnswer);
					}
					else if(userAns.equalsIgnoreCase(correctAnswer)){/*INCREMENTING Correct ANSWER*/
						userAnswer[n-1]=userAns;
						session.setAttribute("userAns", userAnswer);
					}
					else{
						userAnswer[n-1]=request.getParameter("answers");
						session.setAttribute("userAns", userAnswer);
					}
					String button = (String)request.getParameter("whichbutton");
					ArrayList<QuizBean> al = (ArrayList<QuizBean>)session.getAttribute("quesSelected");
					String optA,optB,optC,optD;
					if(button==null){throw new ExceptionGenerator("It seems either u did not complete quiz ..refresh your home page");}
					switch(button){
						case("prev"):
							QuizBean qb;
							//n--;
							if(n==1){
								qb = al.get(0);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%><pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n--;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
										
									
	          						<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div>
							<%break;
						
						case("next"):
							//n++;
							if(n==10){/*Last Question*/
								qb=al.get(2);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
							<%}
							else{
								n++;
								session.setAttribute("quesNo", n);
								qb=al.get(n-1);
								optA=qb.getOption_a();
								optB=qb.getOption_b();
								optC=qb.getOption_c();
								optD=qb.getOption_d();
								session.setAttribute("qno", n+"");%>
								<pre class="ques"><%=n+". "+ qb.getQuestion() %></pre>
								
							<%}%>
							<div class="radio" >
									<%try{
										String s[] = (String[])session.getAttribute("userAns");
										String sn = s[n-1];
										/*OPTION A*/
										if(sn.equalsIgnoreCase("a")){%>						
	          							<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" checked>
	            							<label for="opA"><%= optA %></label>
	         							 </div>
	         							 <%}else{ %>
											<div style="margin:30px;">
	            							<input type="radio" name="answers" value="a" id="opA" class="ra" >
	            							<label for="opA"><%= optA %></label>
	         							 </div><%} %>
	         							 
	         							 
	         							 <%/*OPTION B*/ 
	         							 if(sn.equalsIgnoreCase("b")){%>
		         	 					<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" checked>
		            						<label for="opB"><%= optB %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="b" id="opB" >
		            						<label for="opB"><%= optB %></label>
		          						</div><%} %>
		          						
		          						
		          						<%/*OPTION C*/
		          						if(sn.equalsIgnoreCase("c")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" checked>
		            						<label for="opC"><%= optC %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="c" id="opC" >
		            						<label for="opC"><%= optC %></label>
		          						</div><%} %>
		          						
		          						<%/*OPTION D*/ 
		          						if(sn.equalsIgnoreCase("d")){%>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD" checked>
		            						<label for="opD"><%= optD %></label>
		          						</div>
		          						<%}else{ %>
		          						<div style="margin:30px;">
		            						<input type="radio" name="answers" value="d" id="opD">
		            						<label for="opD"><%= optD %></label>
		          						</div><%} %>
	        						</div><!-- radio block end div -->
										<% }
									
										catch(Exception e){%>
											<div style="margin:30px;">
            								<input type="radio" name="answers" value="a" id="opA" class="ra" >
            								<label for="opA"><%= optA %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="b" id="opB" class="ra" >
            								<label for="opA"><%= optB %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="c" id="opC" class="ra" >
            								<label for="opA"><%= optC %></label>
         							 		</div>
         							 		<div style="margin:30px;">
            								<input type="radio" name="answers" value="d" id="opD" class="ra" >
            								<label for="opA"><%= optD %></label>
         							 		</div>
         							 	<%} %>
	          					<input type="hidden" name="ans" value="<%=qb.getCorrect() %>">
        						</div><!-- column end div -->
							<%break;
						
						case("submit"):
							int na=0;
							int sc=0;
							ArrayList<QuizBean> ql = (ArrayList)session.getAttribute("quesSelected");
							String[] ansL = (String[])session.getAttribute("userAns");
							for(int i=0;i<ansL.length;i++){
								if(ansL[i].equalsIgnoreCase("a")||ansL[i].equalsIgnoreCase("b")||ansL[i].equalsIgnoreCase("c")||ansL[i].equalsIgnoreCase("d")){
									na++;		
								}
							}
							QuizBean q;
							ArrayList<QuizBean> quesL = (ArrayList)session.getAttribute("quesSelected");
							for(int i=0;i<quesL.size();i++){
								q=quesL.get(i);
								if(ansL[i].equalsIgnoreCase(q.getCorrect())) sc++;
							}
							String qu= (String)session.getAttribute("currentquiz") ;%>
							
							<jsp:useBean id="dbmscorebean" class="com.chandan.quiz.ScoreBean" 
							type="com.chandan.quiz.ScoreBean" scope="session">
							</jsp:useBean>
							<jsp:setProperty name="dbmscorebean" property="attempted" value="<%=na%>"/>
							<jsp:setProperty name="dbmscorebean" property="score" value="<%=sc %>"/>
							<jsp:setProperty name="dbmscorebean" property="correct_answers" value="<%=sc%>"/>
							<jsp:setProperty name="dbmscorebean" property="wrong_answers" value="<%=na-sc%>"/>
							<jsp:setProperty name="dbmscorebean" property="quiz_name" value="<%=qu%>"/>
							<jsp:setProperty name="dbmscorebean" property="quesList" value="<%=ql%>"/>
							<jsp:setProperty name="dbmscorebean" property="userAnswers" value="<%=ansL%>"/>
							
							 
							  <jsp:forward page="results.jsp"></jsp:forward>
							<%break;
					}/*SWITCH BLOCK ENDS*/
				}/*IF DBMSQUIZ BLOCK ENDS*/
			
			}/*ELSE BLOCK ENDS*/%>   

</div>
</div>
    <div class="row">
      <div class="col"></div>
      <div class="col"></div>
      <div class="col">
      
       <% if((int)session.getAttribute("quesNo")==1){ %>
       <button type="submit" name="whichbutton" value="prev" class="btn btn-outline-dark" disabled>Previous Question</button>
      <%}else{ %>
      <button type="submit" name="whichbutton" value="prev" class="btn btn-outline-dark">Previous Question</button>
      <%} %>
      </div>
      <div class="col">
        <button type="submit" name="whichbutton" value="submit" class="btn btn-outline-dark">SUBMIT QUIZ</button>
      </div>
      <div class="col">
      <% if((int)session.getAttribute("quesNo")==10){ %>
        <button type="submit" name="whichbutton" value="next" class="btn btn-outline-dark" disabled>Next Question</button>
      <%}else{ %>
      <button type="submit" name="whichbutton" value="next" class="btn btn-outline-dark" >Next Question</button>
      <%} %>
      </div>
      <div class="col"></div>
      <div class="col"></div>

    </div>
      </form>
   
  </div>
</body>

</html>
