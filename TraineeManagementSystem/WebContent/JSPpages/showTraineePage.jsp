<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Trainees</title>
</head>
<body>
<center>
	<h2>Search Trainee </h2>
	<table border="1px">
		<%-- <tr>
			<th bgcolor="bisque">Trainee Id</th>
			<th bgcolor="bisque">Trainee Name</th>
			<th bgcolor="bisque">Trainee Domain</th>
			<th bgcolor="bisque">Trainee Location</th>
		</tr>
	
			<tr>
				<td>${trainee.traineeId}</td>
				<td>${trainee.traineeName}</td>
				<td>${trainee.traineeDomain}</td>
				<td>${trainee.traineeLocation}</td>
			</tr>
			 --%>
			
			<tr><th bgcolor="bisque">Trainee Id</th>
			 <td>${trainee.traineeId}</td></tr>
			 
			<tr><th bgcolor="bisque">Trainee Name</th>
			<td>${trainee.traineeName}</td></tr>
			
			<tr><th bgcolor="bisque">Trainee Domain</th>
			 <td>${trainee.traineeDomain}</td></tr>
			
			<tr><th bgcolor="bisque">Trainee Location</th>
				<td>${trainee.traineeLocation}</td></tr>
		
			
			 
				
				
			
			
	</table>
	<a href="showTraineeManagementPage.obj"><button>Click Here To Go to Home</button></a>
</center>
</body>
</html>