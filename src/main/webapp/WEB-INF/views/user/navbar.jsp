<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a id="logoM" href="index.jsp"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="Bootsshop"/></a>
            <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
                    <!--<li class=""><a href="special_offer.jsp">Specials Offer</a></li>-->
                    <li class=""><a href="${pageContext.request.contextPath}/products">Buy Products</a></li>
                    <li class=""><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
                </ul>
                <form action="${pageContext.request.contextPath}/searchProduct" method="POST" class="navbar-search pull-left">  
                    <input id="srchFld" type="text" name="productName" placeholder="I'm looking for ..." class="search-query span5"/>              
                    
                </form>  
                
                <ul class="nav pull-right">
                    <li><a href="${pageContext.request.contextPath}/addUser">Signup</a></li>
                    <sec:authorize access="isAnonymous()">
                        <li><a href="<c:url value= "/login" />">Login</a></li>
                    </sec:authorize>
                 <sec:authorize  access="hasAnyRole('ROLE_ADMIN','ROLE_USER','ROLE_VENDOR','ROLE_INTERNAL')">
                 
                 <li> <td><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></td></li>
                    </sec:authorize>        
                </ul>
            </div><!-- /.nav-collapse -->
        </div>
    </div><!-- /navbar-inner -->
</div>
