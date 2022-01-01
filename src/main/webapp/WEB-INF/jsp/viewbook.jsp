<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<br>
<h2 align="center">Book Details</h2>
<table class="table table-bordered" >  
<tr class="thead-light"><th>BookId</th><th>BookName</th><th>BookAuther</th><th>IssueDate</th><th>BookPrize</th><th>Days</th><th>Delete</th></tr>  
   <c:forEach var="book" items="${list}">   
   <tr>  
   <td>${book.bid}</td>  
   <td>${book.bName}</td>  
   <td>${book.bAuther}</td>  
   <td>${book.issueDate}</td>  
   <td>${book.bprize}</td>  
   <td>${book.days}</td>  
   
       <td><a href="deletebook/${book.bid}" class="btn btn-danger">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
     </div>
</body>
</html>