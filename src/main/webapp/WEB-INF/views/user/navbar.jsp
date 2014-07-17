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
                    <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                </ul>
            </div><!-- /.nav-collapse -->
        </div>
    </div><!-- /navbar-inner -->
</div>
