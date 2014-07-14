<%-- 
    Document   : addCustomer
    Created on : Jul 12, 2014, 4:58:02 AM
    Author     : bin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />


        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">

            <div class="page-header">
                <h1><small>please Register here</small></h1>
            </div>

            <!-- Simple Login - START -->
            <form class="col-md-12">
                <div class="form-group">
                    <input type="text" class="form-control input-lg" placeholder="First Name">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control input-lg" placeholder="Last Name">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control input-lg" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control input-lg" placeholder="Password">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control input-lg" placeholder="Confirm Password">
                </div>

                <div class="form-group">
                    <button class="btn btn-primary btn-lg btn-block">Sign Up</button>        
                    <span class="pull-right"><a href="#">login</a></span>
                </div>
            </form>
            <!-- Simple Login - END -->

        </div>

    </body>
</html>