<%-- 
    Document   : courseNotFound
    Created on : May 16, 2014, 12:51:04 AM
    Author     : bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="headerUSER.jsp"/>
        <h1>${msg}</h1>
        <a href="${pageContext.request.contextPath}/home">Back</a>
    </body>
</html>
