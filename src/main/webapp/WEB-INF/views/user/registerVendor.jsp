<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
﻿<!DOCTYPE html>
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
                        <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                        <li class="active">Vendor Registration</li>
                    </ul>
                    <h3> Registration</h3>	
                    <hr class="soft"/>
                    <div class="well">
                        <div class="alert fade in">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>
                        </div>
                        <div class="alert alert-block alert-error fade in">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>
                        </div>
                        <form:form   commandName="vendor" action="addUser" method="post" class="form-horizontal" >
                            <h3>Your personal information</h3>
                            
                            <div class="control-group">
                                <label class="control-label" for="inputFname">First name <sup>*</sup></label>
                                <div class="controls">
                                   <form:input  path="firstName" id="inputFname" placeholder="First Name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputLname">Last name <sup>*</sup></label>
                                <div class="controls">
                                <form:input path="lastName" id="inputLname" placeholder="Last Name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">Email <sup>*</sup></label>
                                <div class="controls">
                               <form:input path="email"  id="inputEmail" placeholder="Email" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="Parent Company">Parent Company <sup>*</sup></label>
                                <div class="controls">
                               <form:input path="parentCompany"  id="inputEmail" placeholder="parentCompany" />
                                </div>
                            </div>
                                
                            <div class="control-group">
                                <label class="control-label" for="inputEmail">UserName <sup>*</sup></label>
                                <div class="controls">
                                    <form:input path="userName"  id="inputEmail" placeholder="user Name" />
                                </div>
                            </div>
                                
                            <div class="control-group">
                                <label class="control-label" for="inputPassword">Password <sup>*</sup></label>
                                <div class="controls">
                                    <form:password path="password" id="inputPassword" placeholder="Password" />
                                </div>
                            </div>	  
                            



                            
                           

                            <p><sup>*</sup>Required field	</p>

                            <div class="control-group">
                                <div class="controls">
                                    <input type="hidden" name="email_create" value="1">
                                    <input type="hidden" name="is_new_customer" value="1">
                                    <input class="btn btn-large" type="submit" value="Register" />
                                </div>
                            </div>		
                        </form:form>
                    </div>

                </div>
            </div>
            <!-- Footer ------------------------------------------------------ -->
            <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>
