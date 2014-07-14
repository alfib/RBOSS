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
        <title>adminHeader</title>
        <link href="${pageContext.request.contextPath}/resources/adminHeader.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id='cssmenu'>
<ul>
   <li><a href='${pageContext.request.contextPath}/admin'><span>Admin Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/home'><span>User Home</span></a></li>
   <li class='has-sub'><a href='#'><span>Manage Products</span></a>
      <ul>
         <li><a href='${pageContext.request.contextPath}/products'><span>List Products</span></a></li>
         <li><a href='${pageContext.request.contextPath}/addProduct'><span>Add Product</span></a></li>
         <li><a href='${pageContext.request.contextPath}/products'><span>Delete Product</span></a></li>
         <li class='last'><a href='${pageContext.request.contextPath}/searchProduct'><span>Search Product</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>Manage Users</span></a>
      <ul>
         <li><a href='${pageContext.request.contextPath}/customers'><span>List Users</span></a></li>
         <li><a href='${pageContext.request.contextPath}/addCustomer'><span>Add User</span></a></li>
         <li><a href='${pageContext.request.contextPath}/listAllUsers'><span>Assign Advisor</span></a></li>
         <li><a href='${pageContext.request.contextPath}/listAllUsers'><span>Assign Role</span></a></li>
         <li class='last'><a href='${pageContext.request.contextPath}/searchCustomer'><span>Search User</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>Manage Courses</span></a>
      <ul>
         <li><a href='${pageContext.request.contextPath}/courses'><span>List Courses</span></a></li>
         <li><a href='${pageContext.request.contextPath}/addCourse'><span>Add Course</span></a></li>
         <li class='last'><a href='${pageContext.request.contextPath}/searchCourse'><span>Search Course</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>Manage Sections</span></a>
      <ul>
         <li><a href='${pageContext.request.contextPath}/sections'><span>List Sections</span></a></li>
<!--         <li class='last'><a href='#'><span>Add Section </span></a></li>      -->
      </ul>
   </li>
   <li class='last'><a href='${pageContext.request.contextPath}/j_spring_security_logout'><span>Logout</span></a></li>
</ul>
</div>
    </body>
</html>
