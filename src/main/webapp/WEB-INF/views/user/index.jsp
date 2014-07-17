<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head_conf.jsp" />
    <body>
        <!-- Navbar
          ================================================== -->
        <jsp:include page="navbar.jsp" />
        <!-- ======================================================================================================================== -->	
        <div id="mainBody" class="container">
            <jsp:include page="header.jsp" />
            <div class="row">
                <div id="sidebar" class="span3">
                    <ul class="nav nav-list bs-docs-sidenav" style="display: block;">
                        <c:forEach var="cat" items="${categories}">
                            <li><a href="${pageContext.request.contextPath}/category/${cat.id}">${cat.category} [18]</a></li>
                            </c:forEach>
                    </ul>
                </div>

                <div class="span9">
                    <div>
                        <h3>New Products </h3>
                        <ul class="thumbnails">
                            <c:forEach var="cat" items="${newProducts}">
                                 <li class="span3">
                                <div class="thumbnail">
                                    <a  href="product_details.jsp"><img src="${pageContext.request.contextPath}/resources/products/9.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Product name</h5>
                                        <p> 
                                            Lorem Ipsum is simply dummy text. 
                                        </p>
                                        <h4><a class="btn btn-large" href="product_details.jsp">VIEW</a> <span class="pull-right">$222.00</span></h4>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                           
                        </ul>
                                                    
                        <h3>Feature Products </h3>

                        <ul class="thumbnails">
                            <c:forEach var="cat" items="${featuredProducts}">
                                 <li class="span3">
                                <div class="thumbnail">
                                    <a  href="product_details.jsp"><img src="${pageContext.request.contextPath}/resources/products/9.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Product name</h5>
                                        <p> 
                                            Lorem Ipsum is simply dummy text. 
                                        </p>
                                        <h4><a class="btn btn-large" href="product_details.jsp">VIEW</a> <span class="pull-right">$222.00</span></h4>
                                    </div>
                                </div>
                            </li>
                            </c:forEach>
                           
                        </ul>	
                    </div>
                </div>
            </div>
            <!-- Footer ------------------------------------------------------ -->
            <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>
