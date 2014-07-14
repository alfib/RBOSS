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
   <li class='active'><a href='${pageContext.request.contextPath}/home'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/products'><span>Products</span></a></li>
   <li><a href='${pageContext.request.contextPath}/searchCourse'><span>SEARCH COURSE</span></a></li>
   <li><a href='${pageContext.request.contextPath}/searchProduct'><span>SEARCH PRODUCT</span></a></li>
   <li><a href='${pageContext.request.contextPath}/courses'><span>REGISTRATION</span></a></li>
   <li><a href='${pageContext.request.contextPath}/profile'><span>PROFILE</span></a></li>
   <li><a href='${pageContext.request.contextPath}/faculty'><span>FACULTY</span></a></li>
   <li><a href='${pageContext.request.contextPath}/admin'><span>ADMIN</span></a></li>
   <li><a href='${pageContext.request.contextPath}/viewCart'><span>CART</span></a></li>
   <li><a href='${pageContext.request.contextPath}/enrolled'><span>Enrolled Sections</span></a></li>
   
   <li class='last'><a href='${pageContext.request.contextPath}/j_spring_security_logout'><span>LOGOUT</span></a></li>
</ul>
</div>


    </body>
</html>
