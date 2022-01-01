<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
.log{
  border: 1px solid red;
  margin-left: 350px;
    margin-right: 350px;
    padding-bottom: 80px;
  
}
tr,td{
padding: 10px;
}
</style>
</head>

<body>
	<div class="log">
	<h1 align="center">Registration</h1>
	<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">
		
		<table align="center">
			<tr>
				<td><form:label path="name">FirstName</form:label></td>
				<td><form:input path="name" name="name"
						id="name" /></td>
			</tr>
			<tr>
				<td><form:label path="disignation">Disignation</form:label></td>
				<td><form:input path="disignation" name="disignation" id="disignation" />
				</td>
			</tr>
			<tr>
				<td><form:label path="address">Address</form:label></td>
				<td><form:input path="address" name="address" id="address" />
				</td>
			</tr>
			<tr>
				<td><form:label path="contactNumber">ContactNumber</form:label></td>
				<td><form:input path="contactNumber" name="contactNumber" id="contactNumber" /></td>
			</tr>
            <tr>
				<td><form:label path="userName">Username</form:label></td>
				<td><form:input path="userName" name="userName" id="userName" />
				</td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button id="register" name="register">Register</form:button>
				</td>
			</tr>
		</table>
	</form:form></div>

</body>

</html>