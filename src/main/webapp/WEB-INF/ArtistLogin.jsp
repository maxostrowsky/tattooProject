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
<title>Login</title>
</head>
<body>
    <h1>Welcome To ___</h1>
    <form:form action="/artistLogin" method="post">
        <p>
            Email: <input type="email" id="email" name="email">
        </p>
        <p>
            Password: <input type="password" id="password" name="password">
        </p>
        <input type="submit" value="Login"/>

        <p>Are you an artist? Register here to get connected with potential clients!</p>
        <a href="/artistRegistration">Artist Registration</a>
    </form:form>
</body>
</html>