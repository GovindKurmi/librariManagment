<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <meta charset="ISO-8859-1">
     <link href="<c:url value="/resource/css/robot.css" />" rel="stylesheet">
     <link href="<c:url value="/resource/css/w3.css" />" rel="stylesheet">
     <link href="<c:url value="/resource/css/sideview.css" />" rel="stylesheet">
     <link href="<c:url value="/resource/image/avtar.jpg" />" rel="stylesheet">
     
<title>view student</title>
</head>
<body>
<nav class="navbar navbar-expand-sm  navbar-dark bg-primary">
  <ul class="navbar-nav">
    <li class=" w3-padding w3-xlarge w3-teal"> <i class="fa fa-home"></i></li>
      <li><a class="nav-link ad"  href="viewadmin" style="color:white;padding-left: 10px;  font-weight: 900;">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link"  href="addstudent" style="color:white;font-weight: 900;">AddNewStudent</a>
    </li>
    <li style="margin-left: 700px">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    </li>
    <li>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="color:white" >Search</button>
    </li>
  </ul>
</nav>
<div class="w3-content w3-margin-top" style="max-width:1400px;">
  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
  
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container" style="margin-left: 40px">
          <img src="/SpringMVCMultipleViewPage/resource/image/avtar.jpg" style="width:250px ; height: 270px;margin-top: 10px" alt="Avatar">
        </div>
        <div class="w3-container" style="margin-left: 40px;margin-top: 10px">
                    <h3>${admin.name}</h3>
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${admin.disignation}</p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${admin.address}</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${admin.userName}</p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${admin.contactNumber}</p>
          <hr>
        </div>
      </div><br>
    <!-- End Left Column -->
    </div>
    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
      <div>
<h2 align="center">Student Details</h2>
<table  class="table table-bordered">  
<tr class="thead-light"><th>RollNumber</th><th>Name</th><th>Branch</th><th>ContactNumber</th><th>Delete</th><th>Issues Book</th><th>Add Book</th></tr>  
   <c:forEach var="student" items="${list}">   
   <tr >  
   <td>${student.rollNumber}</td>  
   <td>${student.name}</td>  
   <td>${student.branch}</td>  
   <td>${student.contactNumber}</td>  
       <td><a href="deletestudent/${student.rollNumber}" class="btn btn-danger">Delete</a></td>  
       <td><a href="bookdetail/${student.rollNumber}" class="btn btn-primary">BookDetail</a></td>  
       <td><a href="addbook/${student.rollNumber}" class="btn btn-primary">Add</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
     </div>
      </div>

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div></div>
  
  <!-- End Page Container -->
<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>Find me on social media.</p>
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">govind</a></p>
</footer>
</body>
</html>