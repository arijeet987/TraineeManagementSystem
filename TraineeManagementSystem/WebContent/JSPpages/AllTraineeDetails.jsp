<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainee Details</title>
</head>
<body>

<center>
<h1 style="color:#0066CC">
Trainee Management System
</h1><br>
<h1>Trainee List</h1>

<table border=1>
	<tr>
		<th bgcolor="bisque">Trainee Id</th>
		<th bgcolor="bisque">Trainee Name</th>
		<th bgcolor="bisque">Trainee Location</th>
		<th bgcolor="bisque">Trainee Domain</th>
		<th bgcolor="bisque">Get Trainee Details</th>
		
	</tr>
	<c:forEach var="traineeList" items="${list}">
		<tr>
			<td>${traineeList.traineeId}</td>
			<td>${traineeList.traineeName}</td>
			<td>${traineeList.traineeLocation}</td>
			<td>${traineeList.traineeDomain}</td>
			<td><a href="searchTrainee.obj?traineeId=${traineeList.traineeId}">Fetch details</a></td>
			
			</tr>
			
	</c:forEach>
	
			<tr>
			<td colspan="5" align="center"><a href="showTraineeManagementPage.obj">Click Here To Go to Home</a></td>
		</tr>
		
</table>
</center>



</body>
</html>