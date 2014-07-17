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
                        <li><a href="${pageContext.request.contextPath}/products">Products</a> <span class="divider">/</span></li>
                        <li class="active">product Details</li>
                    </ul>	
                    <div class="row">	  
                        <div id="gallery" class="span3">
                            <style>
                                #jquery-overlay {position: absolute;top: 0;left: 0;z-index: 90;width: 100%;height: 500px;}
                                #jquery-lightbox {position: absolute;top: 0;left: 0;width: 100%;z-index: 100;text-align: center;line-height: 0;}
                                #jquery-lightbox a img { border: none; }#lightbox-container-image-box {position: relative;background-color: #fff;width: 250px;height: 250px;margin: 0 auto;}
                                #lightbox-container-image { padding: 10px; }#lightbox-loading {position: absolute;top: 40%;left: 0%;height: 25%;width: 100%;text-align: center;line-height: 0;}
                                #lightbox-nav {	position: absolute;top: 0;left: 0;height: 100%;width: 100%;z-index: 10;}#lightbox-container-image-box > #lightbox-nav { left: 0; }#lightbox-nav a { outline: none;}
                                #lightbox-nav-btnPrev, #lightbox-nav-btnNext {width: 49%;height: 100%;zoom: 1;display: block;}
                                #lightbox-nav-btnPrev { left: 0; float: left;}#lightbox-nav-btnNext { right: 0; float: right;}
                                #lightbox-container-image-data-box {font: 10px Verdana, Helvetica, sans-serif;background-color: #fff;margin: 0 auto;line-height: 1.4em;overflow: auto;width: 100%;padding: 0 10px 0;}
                                #lightbox-container-image-data {	padding: 0 10px; 	color: #666; }
                                #lightbox-container-image-data #lightbox-image-details {width: 70%; float: left; text-align: left; }	
                                #lightbox-image-details-caption { font-weight: bold; }#lightbox-image-details-currentNumber {display: block; clear: left; padding-bottom: 1.0em;}
                                #lightbox-secNav-btnClose {width: 66px; float: right;padding-bottom: 0.7em;	}
                            </style>
                            <a href="${pageContext.request.contextPath}/resources/products/${product.picture}" title="<h4>${product.name}</h4>">
                                <img src="${pageContext.request.contextPath}/resources/products/${product.picture}" width="100%" alt="${product.name}"/>
                            </a>
                            
                            <div class="btn-toolbar">
                                <div class="btn-group">
                                    <span class="btn"><i class="icon-envelope"></i></span>
                                    <span class="btn" ><i class="icon-print"></i></span>
                                    <span class="btn" ><i class="icon-zoom-in"></i></span>
                                    <span class="btn" ><i class="icon-star"></i></span>
                                    <span class="btn" ><i class=" icon-thumbs-up"></i></span>
                                    <span class="btn" ><i class="icon-thumbs-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <h3>${product.name}</h3>
                            
                            <hr class="soft"/>
                            <form class="form-horizontal qtyFrm" action="${pageContext.request.contextPath}/cart/${product.id}" method="POST">
                                <div class="control-group">
                                    <label class="control-label"><span>$${product.price}</span></label>
                                    <div class="controls">
                                        <input type="number" class="span1" placeholder="Qty."/>
                                        <button type="submit" class="btn btn-large pull-right"><i class=" icon-shopping-cart"></i> Add to cart</button>
                                    </div>
                                </div>
                            </form>
          
                            <hr class="soft clr"/>
                            <p>
                                ${product.description}
                            </p>
                            
                            <hr class="soft"/>
                        </div>

                    </div>
                </div>
            </div> <!-- Body wrapper -->
            <!-- Footer ------------------------------------------------------ -->
            <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>