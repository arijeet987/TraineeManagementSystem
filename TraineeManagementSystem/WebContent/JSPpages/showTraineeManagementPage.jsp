<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Show Trainee Management Page</title>
</head>
<body>
		
		<center>
		<h2 style="color:#0066CC">${message}</h2>
		<h2>PickUp your Option</h2>
		
		
		
			<table bgcolor="#DCDCDC" border="1px">
			<tr><th>Choose your Option</th></tr>
			<tr>
			<td><a href="addTrainee.obj">Add Trainee</a></td>
			
			</tr>
			<tr>
			<td><a href="showTrainee.obj">Show Trainee</a></td>
			
			</tr>
			<tr>
			<td><a href="ShowDeleteTraineeForm.obj">Delete Trainee</a></td>
			
			</tr>
			
			<tr>
			<td><a href="showSearchTraineeForm.obj">Search a trainee</a></td>
			
			</tr>
			</table>

			 <a href="showHomePage.obj">Back To Login Page</a>	

</center>

	

</body>
</html>