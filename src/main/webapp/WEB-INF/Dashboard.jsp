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
    <title>Dashboard</title>
</head>

<body>
    <div class="container">
        <div class="navBar">
            <h1>Welcome, ${ firstName }!</h1>
            <div class="naLinks">
                <a href="">New Tattoo</a>
                <a href="/logout">Logout</a>
            </div>
        </div>
        <h2>These artists in your area specialize in your preferred styles:</h2>
        <div>
            <table class="table table-primary table-striped mt-5">
             <thead>
                 <tr>
                   <th class="col-1">Artist</th>
                   <th class="col-4">Works at</th>
                   <th class="col-3">Specializes In</th>
                   <th class="col-2">Socials</th>
                 </tr>
             </thead>
             <tbody>
                   <c:forEach var="artist" items="${ artists }">
                 <tr>
                        <td><c:out value="${ artistName }"/></td>
                        <td><a href=""><c:out value="${ artistShop }"/></a></td>
                        <td><c:out value="${ artistTalents }"/></td>
                        <td><c:out value="${ artistSocials }"/></td>
                   </tr>
                 </c:forEach>
             </tbody>
         </table> 
        </div>
    </div>
</body>

</html>