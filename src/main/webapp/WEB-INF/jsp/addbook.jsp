<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <h1>Add New Book</h1>
       <form:form method="post" modelAttribute="book" action="savebook">    
        <table >    
         <tr>     
          <td>Bid : </td>   
          <td><form:input path="bid"  placeholder="bid"/></td>  
         </tr>    
         <tr>    
          <td>Book Name :</td>    
          <td><form:input path="bName" placeholder="book Name"/></td>  
         </tr>   
         <tr>    
          <td>Book Auther :</td>    
          <td><form:input path="bAuther" placeholder="book Auther"/></td>  
         </tr> 
         <tr>    
          <td>Issue Date :</td>    
          <td><form:input path="issueDate" placeholder="issueDate"/></td>  
         </tr>  
           <tr>    
          <td>Book Prize :</td>    
          <td><form:input path="bprize" placeholder="Book Prize"/></td>  
         </tr>  
           <tr>    
          <td>Days :</td>    
          <td><form:input path="days" placeholder="Days"/></td>  
          <td><form:input type="hidden" path="rollNumber" value="${rollNumber}" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    

</body>
</html>