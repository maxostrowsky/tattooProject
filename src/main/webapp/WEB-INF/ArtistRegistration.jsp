<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Artist Registration</title>
</head>

<body>
	<div>
		<h1>Artist Registration</h1>
	</div>
	<div>
		<div>
			<form:form action="/artistRegistration" method="post"
				modelAttribute="newArtist">
				<div>
					<label>First Name:</label>
					<form:input path="firstName" />
					<form:errors path="firstName" />
				</div>
				<div>
					<label>Last Name:</label>
					<form:input path="lastName" />
					<form:errors path="lastName" />
				</div>
				<div>
					<label>Phone Number:</label>
					<form:input path="phoneNumber" />
					<form:errors path="phoneNumber" />
				</div>
				<div>
					<label>Email:</label>
					<form:input path="email" />
					<form:errors path="email" />
				</div>
				<div>
					<label>Password:</label>
					<form:password path="password" />
					<form:errors path="password" />
				</div>
				<div>
					<label>Confirm Password:</label>
					<form:password path="confirm" />
					<form:errors path="confirm" />
				</div>
				<input type="submit" value="Artist Information" />
			</form:form>
		</div>
	</div>
</body>

</html>