<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page </title>
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

    </head>
    <body>
        <section class="container">
            <div class="login">
                <h1><small>please login to continue</small></h1>
                <h4 style="color:red">${msg}</h4>
                <c:if test="${error eq true}">
                    <p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
                </c:if>
                <div class="col-md-6">
                    <form  class="col-md-12" method="post" action="<c:url value='j_spring_security_check' />">

                        <div class="form-group">
                            <input   class="form-control input-lg" placeholder="User Name" name="j_username" value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>'/> 
                            </div>

                            <div class="form-group">
                                <input  type="password" name='j_password'  class="form-control input-lg" placeholder="Password"/> 
                            </div>           


                            <div class="form-group">
                                Remember me: <input type="checkbox" name="_spring_security_remember_me" /> 
                            </div>

                            <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>" value="<c:out value="${_csrf.token}"/>"/>
                        <div class="form-group">
                            <button class="btn btn-primary btn-lg btn-block">Sign In</button>
                            <span><a href="#">Forget password?</a></span>
                            <span class="pull-right"><a href="#">New Registration</a></span>
                        </div>
                    </form>
                </div>


        </section>      

    </body>
</html>
