<%-- 
    Document   : header
    Created on : May 20, 2014, 8:11:38 AM
    Author     : ib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/resources/styles.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/menu_jquery.js'></script>
    </head>
    <body>
        <div id='cssmenu'>
<ul>
   <li class='active'><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   
   <li class='last'><a href='${pageContext.request.contextPath}/j_spring_security_logout'><span>LOGOUT</span></a></li>
</ul>
</div>


    </body>
</html>
