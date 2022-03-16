<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Home</title>
</head>
<body>
	<div class="Container" >
    <h1>Welcome To ___</h1>
	</div>
	<div>
		<a href="/artistLogin">Artist Login</a>
		<a href="/userLogin">User Login</a>
	</div>
	<div>
		<a href="/artistRegistration">Artist Registration</a>
		<a href="/userRegistration">User Registration</a>
	</div>
</body>
</html>