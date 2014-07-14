<%-- 
    Document   : userHome
    Created on : May 14, 2014, 10:51:27 AM
    Author     : bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
    </head>
    <body>   
        <jsp:include page="header.jsp"/>
        <a href="${pageContext.request.contextPath}/courses"> List of Courses</a></br>       
       <p><a href="${pageContext.request.contextPath}/login">see products</a></p>
       <a href="${pageContext.request.contextPath}/j_spring_security_logout">logout</a>
    </body>
</html>
