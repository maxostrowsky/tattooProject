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
		<div>
			<form:form action="/shopInfo" method="post" modelAttribute="newShop">
				<div class="leftForm">
					<div>
						<label>Shop Name:</label>
						<form:input path="shopName" class="form-control" />
						<form:errors path="shopName" class="text-danger" />
					</div>
					<div>
						<label>Address:</label>
						<form:input path="shopAddress" class="form-control" />
						<form:errors path="shopAddress" class="text-danger" />
					</div>
					<div>
						<label>City:</label>
						<form:input path="shopCity" class="form-control" />
						<form:errors path="shopCity" class="text-danger" />
					</div>
					<div>
						<label>State:</label>
						<form:input path="shopState" class="form-control" />
						<form:errors path="shopState" class="text-danger" />
					</div>
					<div>
						<label>Zip:</label>
						<form:input path="shopZip" class="form-control" />
						<form:errors path="shopZip" class="text-danger" />
					</div>
				</div>
				<input type="submit" value="Talents" class="btn btn-primary" />
			</form:form>
		</div>
		<div>
			<form:form action="/artistStyle" method="post" modelAttribute="newStyle">
				<div>
					<input type="checkbox" name="styleName" value="japaneseTraditional">
					<label for="japaneseTraditional">Japanese Traditional</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="americanTraditional">
					<label for="americanTraditional">American Traditional</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="tribal"> <label
						for="tribal">Tribal</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="realism"> <label
						for="realism">Realism/Photo Realism</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="portraiture">
					<label for="portraiture">Portraits</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="schoolTraditional">
					<label for="schoolTraditional">New School/Neo-Traditional</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="blackGrey">
					<label for="blackGrey">Black and Grey</label>
				</div>
				<div>
					<input type="checkbox" name="styleName" value="fullColor">
					<label for="fullColor">Full Color</label>
				</div>
				<input type="submit" value="Dashboard" class="btn btn-primary" />
			</form:form>
		</div>
	</div>
</body>

</html>