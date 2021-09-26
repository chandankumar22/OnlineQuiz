<%@page import="com.chandan.quiz.ExceptionGenerator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
<%!
	String name;
%>
 <div class="container-fluid">
    <div class="row">
      <div class="col-6"></div>
      <%
      	name = (String)session.getAttribute("username") ;
      	if(name==null){
      		throw new ExceptionGenerator();
      	}
      	else{
      %>
      <div class="col-4"><%= session.getAttribute("username") %></div>
      <%} %>
      <div class="col-2">The Timer</div>
    </div>
    </div>
</body>
</html>