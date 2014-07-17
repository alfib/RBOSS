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
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}">Home</a> <span class="divider">/</span></li>
                        <li class="active">Products</li>
                    </ul>
                    <h3> Products <small class="pull-right"> ${noOfProducts} products are available </small></h3>	
                    <hr class="soft"/>
                    <p>
                        Nowadays the clothes and watches industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.
                    </p>
                    <hr class="soft"/>
                    <!--                    <form class="form-horizontal span6">
                                            <div class="control-group">
                                                <label class="control-label alignL">Sort By </label>
                                                <select>
                                                    <option>Priduct name A - Z</option>
                                                    <option>Priduct name Z - A</option>
                                                    <option>Priduct Stoke</option>
                                                    <option>Price Lowest first</option>
                                                </select>
                                            </div>
                                        </form>-->
                    <br class="clr"/>
                    <div class="tab-content">
                        <c:if test='${noOfProducts == 0}'>
                            <div class="row">
                                <div id="productView">
                                    <h6 style="text-align: center">The item you are looking is not currently available in our database.</h6>
                                </div>
                            </div>
                        </c:if>
                        <c:if test='${noOfProducts != 0}'>
                            <c:forEach var="product" items="${products}">
                                <div class="row">	  
                                    <div id="productView" class="span2">
                                        <img src="${pageContext.request.contextPath}/resources/products/${product.picture}" alt="${product.name}"/>
                                    </div>
                                    <div class="span4">
                                        <h3>${product.name}</h3>				
                                        <hr class="soft"/>

                                        <p>
                                            ${product.description}
                                        </p>
                                        <br class="clr"/>
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3> $${product.price}</h3>
                                            <form:form commandName="product" action="${pageContext.request.contextPath}/cart/${product.id}" method="post">
                                                <label class="checkbox">
                                                    Quantity
                                                </label>
                                                <input class="span1" type="text" name="quantity" value="1" size="3" style="text-align: right"/><br class="clr"/><br class="clr"/>
                                                <i class=" icon-shopping-cart"></i>
                                                <input type="submit" value="Add to cart" class="btn btn-large"/>
                                                <a href="${pageContext.request.contextPath}/product/${product.id}" class="btn btn-large">VIEW</a>

                                            </form:form>
    <!--                                        <a href="${pageContext.request.contextPath}/cart/${product.id}" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                            -->
                                        </form>
                                    </div>
                                </div>
                                <hr class="soft"/>
                            </c:forEach>
                        </c:if>
                    </div>
                    <!--<a href="compair.jsp" class="btn btn-large pull-right">Compair Product</a>-->
                    <!--                    <div class="pagination">
                                            <ul>
                                                <li><a href="#">&lsaquo;</a></li>
                                                <li><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">...</a></li>
                                                <li><a href="#">&rsaquo;</a></li>
                                            </ul>
                                        </div>-->
                    <br class="clr"/>
                </div>
            </div>
            <!-- Footer ------------------------------------------------------ -->
            <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>
