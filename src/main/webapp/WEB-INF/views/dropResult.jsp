<%-- 
    Document   : dropResult
    Created on : May 19, 2014, 6:44:36 PM
    Author     : bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drop Result</title>
    </head>
    <body>
        <jsp:include page="headerUSER.jsp"/>
        <h1>${msg}  ${section.name}</h1>
<!--        <a href="/enrolled">Back</a>-->
 <a href="${pageContext.request.contextPath}/enrolled">Back</a></br>
    </body>
</html>
