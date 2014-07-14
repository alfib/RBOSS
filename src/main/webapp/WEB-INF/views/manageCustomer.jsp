<%-- 
    Document   : manageCourse
    Created on : May 13, 2014, 8:19:36 AM
    Author     : bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage User</title>
    </head>
    <body>
         <jsp:include page="adminHeader.jsp"/>
        <sec:authorize url="/customers" access="hasRole('ROLE_ADMIN')">
            <a href="customers"> List of Users</a>
        </sec:authorize></br>
        
        <sec:authorize url="${pageContext.request.contextPath}/addCustomer" access="hasRole('ROLE_ADMIN')">
            <a href="${pageContext.request.contextPath}/addCustomer"> Add User</a>
        </sec:authorize></br>
        
        
        
       
      
        
        
    </body>
</html>
