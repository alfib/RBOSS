<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a Product</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />


        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
      




        <div class="container">
             <div class="row">
            <div class="col-md-6">

            <div class="page-header">
                <h1><small>Add product</small></h1>
            </div>

            <!-- Simple Login - START -->
            <form class="col-md-12">
                <div class="form-group">
                    <input type="text" class="form-control input-lg" placeholder="Product Name">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control input-lg" placeholder="Price">
                </div>



                <div class="form-group">
                    <button class="btn btn-primary btn-lg btn-block">Add</button>        

                </div>
            </form>
            <!-- Simple Login - END -->

        </div>
             </div> 
    </div>        


          <jsp:include page="footer.jsp"/>
    </body>
</html>