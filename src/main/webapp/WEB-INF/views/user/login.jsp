<%-- 
    Document   : login
    Created on : Jul 14, 2014, 3:04:11 PM
    Author     : bidur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <jsp:include page="sidebar.jsp" />
                <div class="span9">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                        <li class="active">Login</li>
                    </ul>
                    <h3> Login</h3>	
                    <hr class="soft"/>

                    <div class="row">
                        <div class="span4">
                            <div class="well">
                                <h5>CREATE YOUR ACCOUNT</h5><br/>
                                Enter your e-mail address to create an account.<br/><br/><br/>
                                <form action="register.html">
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">E-mail address</label>
                                        <div class="controls">
                                            <input class="span3"  type="text" id="inputEmail" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="controls">
                                        <button type="submit" class="btn block">Create Your Account</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="span1"> &nbsp;</div>
                        <div class="span4">
                            <div class="well">
                                <h5>ALREADY REGISTERED ?</h5>
                                <form>
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">Email</label>
                                        <div class="controls">
                                            <input class="span3"  type="text" id="inputEmail" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputPassword">Password</label>
                                        <div class="controls">
                                            <input type="password" class="span3"  id="inputPassword" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button type="submit" class="btn">Sign in</button> <a href="forgetpass.html">Forget password?</a>
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
