
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <!-- ==================================================Header End====================================================================== -->
            <div class="row">
                <%--<jsp:include page="sidebar.jsp" />--%>
                <div class="span12">
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}">Home</a> <span class="divider">/</span></li>
                        <li class="active">Login</li>
                    </ul>
                    <h3> Login</h3>	
                    <hr class="soft"/>

                    <div class="row">
                        <div class="span4">
                            <div class="well">
                                <h5>CREATE YOUR ACCOUNT</h5><br/>
                                Enter your e-mail address to create an account.<br/><br/><br/>
                                <form method="post" action="${pageContext.request.contextPath}/partialRegister">
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">E-mail address</label>
                                        <div class="controls">
                                            <input class="span3" name="email" type="text" id="inputEmail" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="controls">
                                        <input type="submit" class="btn block" value="Create Your Account">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="span1"> &nbsp;</div>
                        <div class="span4">
                            <div class="well">
                                <h5>ALREADY REGISTERED ?</h5>
                                <h4 style="color:red">${msg}</h4>
                                <c:if test="${error eq true}">
                                    <p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
                                </c:if>
                                <form method="post" action="<c:url value='j_spring_security_check' />">
                                    <div class="control-group">
                                        <label class="control-label" for="username">Username</label>

                                        <div class="controls">
                                            <input class="span3"  type="text" id="inputEmail" placeholder="username"
                                                   name="j_username" value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>'/>

                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="inputPassword">Password</label>
                                            <div class="controls">

                                                <input type="password" name='j_password' class="span3"  id="inputPassword" placeholder="Password">

                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button type="submit" class="btn">Sign in</button> <a href="#">Forget password?</a>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>	

                    </div>
                </div>
                <!-- Footer ------------------------------------------------------ -->
                <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>
