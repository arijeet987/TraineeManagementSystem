<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<center>
<h1 style="color: #0066CC">Trainee Management System</h1>

<h3> Fill login details</h3>
  
  
		<form action="validateLogin.obj" method="post">
		
		User Name: <input type="text" name="username" placeholder="username"/><br><br>
		PassWord: <input type="password" name="password" placeholder="password"/><br><br>
		
		<input type="submit" name="submit" value="Login"/>
		
		</form>
	</center>					
</body>
</html>