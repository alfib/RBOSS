<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="welcome.css" type="text/css" rel="stylesheet">
        <title>Welcome page</title>
    </head>
    <body>
        <fieldset id ="2">
        <h1>Welcome</h1>
        <p>Please <a href="${pageContext.request.contextPath}/login">login</a></p>
        <p> <a href="${pageContext.request.contextPath}/addCustomer">Create Account</a></p>
         </fieldset>
    </body>
</html>