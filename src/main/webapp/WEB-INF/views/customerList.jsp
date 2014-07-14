<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer currently in the DB</title>
    </head>
    <body>
      
         <jsp:include page="adminHeader.jsp"/>
        <h1>Customers currently in the DB</h1>
        <table border="1" cellpadding="5">
            <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Edit</th>
                </tr>
            <c:forEach var="customer" items="${customers}">
                
                <tr>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td>${customer.userName}</td>
                    <td>${customer.password}</td>
                    <sec:authorize access="hasRole('ROLE_ADMIN')" >
                        <td><a href="customers/${customer.id}">edit</a></td>
                    </sec:authorize>
                </tr>
            </c:forEach>
        </table>
        </br>
        <sec:authorize url="${pageContext.request.contextPath}/addCustomer" >
            <a href="${pageContext.request.contextPath}/addCustomer"> Add a User</a>
        </sec:authorize>

    </body>
</html>