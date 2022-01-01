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
<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <div class="log" align="center">
        <h3 align="center">Add New Student</h3>  
       <form:form method="post" modelAttribute="addstudent" action="save">    
        <table >    
         <tr>    
          <td>RollNumber : </td>   
          <td><form:input path="rollNumber"  placeholder="rollNumber"/></td>  
         </tr>    
         <tr>    
          <td>Name :</td>    
          <td><form:input path="name" placeholder="Name"/></td>  
         </tr>   
         <tr>    
          <td>Branch :</td>    
          <td><form:input path="branch" placeholder="branch"/></td>  
         </tr> 
         <tr>    
          <td>ContactNumber :</td>    
          <td><form:input path="contactNumber" placeholder="contactNumber"/></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>  </div>  
</body>
</html>