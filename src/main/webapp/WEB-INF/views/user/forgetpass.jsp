<%-- 
    Document   : forgetpass
    Created on : Jul 14, 2014, 3:03:14 PM
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
                        <li class="active">Forget password?</li>
                    </ul>
                    <h3> FORGET YOUR PASSWORD?</h3>	
                    <hr class="soft"/>

                    <div class="row">
                        <div class="span9" style="min-height:900px">
                            <div class="well">
                                <h5>Reset your password</h5><br/>
                                Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.<br/><br/><br/>
                                <form>
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">E-mail address</label>
                                        <div class="controls">
                                            <input class="span3"  type="text" id="inputEmail" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="controls">
                                        <button type="submit" class="btn block">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>	

                </div>
            </div>
            <!-- Footer ------------------------------------------------------ -->
            <hr class="soft">
            <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>
