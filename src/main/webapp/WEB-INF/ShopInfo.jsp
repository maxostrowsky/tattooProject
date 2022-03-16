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
    <title>Artist Info</title>
</head>
<body>
    <div>
        <h1>Welcome ${ firstName }!</h1>
        <h3>Lets get a little more information.</h3>
    </div>
    <div>
        <div>
            <form:form action="/shopInfo" method="post" modelAttribute="newShop">
                <div class = "leftForm">
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
    </div>
</body>
</html>