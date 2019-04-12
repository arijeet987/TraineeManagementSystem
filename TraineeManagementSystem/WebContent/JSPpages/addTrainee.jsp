<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Trainee</title>
</head>
<body>
<center>
		<h1 style="color: #0066CC">Welcome to Trainee Management System</h1>
		<br />
		<br />

	<h3> Enter the Trainee Details</h3>
		<c:url var="myAction" value="/Addsuccess.obj"></c:url>

  
		<form:form action="Addsuccess.obj" method="post" modelAttribute="trainee">
			<table bgcolor="#DCDCDC">

				<tr>
					<td>Trainee Name:<span style="color: red;">*</span></td>
					<td><form:input path="traineeName" /></td>
					<td style="color: red;"><form:errors path="traineeName"></form:errors></td>

				</tr>
				<tr>
					<td>Trainee Domain:<span style="color: red;">*</span></td>
					<td><form:select path="traineeDomain">
					<option >Select</option>
					<option value="java">Java</option>
					<option value="Hibernate">Hibernate</option>
					<option value="JPA">JPA</option>
					<option value="spring">Spring</option>
					</form:select></td>
					<td style="color: red;"><form:errors path="traineeDomain"></form:errors></td>
					</tr>
				<tr>
				<td>Trainee Location:<span style="color: red;">*</span></td>
				<td><form:radiobutton path="traineeLocation" value="chennai" label="Chennai"/>
				   <form:radiobutton  path="traineeLocation" value="bangalore" label="Bangalore"/>
				   <form:radiobutton path="traineeLocation" value="pune" label="Pune"/>
				    <form:radiobutton path="traineeLocation" value="kolkata" label="Kolkata"/></td>
				    <td style="color: red;"><form:errors path="traineeLocation"></form:errors></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" name="submit"
						value="Submit"></input></td>
				</tr>
			</table>

			
		

		</form:form>
	
		<a href="showTraineeManagementPage.obj"><button>Go to Home Page</button></a>
	</center>		
</body>
</html>