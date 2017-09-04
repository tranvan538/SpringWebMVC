<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todo for ${name}</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	   <table class="table table-striped">
	       <caption>Your todo are</caption>
	       <thead>
	           <tr>
	               <th>Description</th>
	               <th>Date</th>
	               <th>Completed</th>
	           </tr>
	       </thead>
	       <tbody>
	           <c:forEach items="${todos}" var="todo">
	               <tr>
	                   <td>${todo.desc}</td>
	                   <td>${todo.targetDate}</td>
	                   <td>${todo.done}</td>
	               </tr>
	           </c:forEach>
	       </tbody>
	   </table>
	   <div>
	       <a class="button" href="/add-todo">Add</a>
	   </div>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstraps/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>