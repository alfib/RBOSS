<%-- 
    Document   : search
    Created on : May 15, 2014, 7:33:51 PM
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
        <h1>Hello World!</h1>
        <form action="searchCustomer" method="post">   
            <input type="text" name="customerName" placeholder="search Customer by name"/>              
            <input type="submit"/>
        </form>
    </body>
</html>
