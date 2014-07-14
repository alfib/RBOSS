<%-- 
    Document   : sideAdminBar
    Created on : May 20, 2014, 3:59:03 PM
    Author     : ib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Header</title>
        <link href="${pageContext.request.contextPath}/resources/adminHeader.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id='cssmenu'>
<ul>
   <li><a href='${pageContext.request.contextPath}/faculty'><span>Faculty Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/home'><span>User Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/students'><span>Student Waivers</span></a></li>
   <li><a href='${pageContext.request.contextPath}/j_spring_security_logout'><span>Logout</span></a></li>
  
</ul>
</div>
    </body>
</html>
