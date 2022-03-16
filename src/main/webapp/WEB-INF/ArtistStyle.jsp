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
    <h1>Welcome ${ artistName }!</h1>
    <h4>To help us match you with clients in your area,
        please select tattoo styles below that match your
        area(s) of expertise:
    </h4>
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
            <input type="checkbox" name="styleName" value="tribal">
            <label for="tribal">Tribal</label>
        </div>
        <div>
            <input type="checkbox" name="styleName" value="realism">
            <label for="realism">Realism/Photo Realism</label>
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
    </body>
</html>