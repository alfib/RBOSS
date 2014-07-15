<%-- 
    Document   : products
    Created on : Jul 14, 2014, 3:06:07 PM
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
                        <li class="active">Products Name</li>
                    </ul>
                    <h3> Products Name <small class="pull-right"> 40 products are available </small></h3>	
                    <hr class="soft"/>
                    <p>
                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.
                    </p>
                    <hr class="soft"/>
                    <form class="form-horizontal span6">
                        <div class="control-group">
                            <label class="control-label alignL">Sort By </label>
                            <select>
                                <option>Priduct name A - Z</option>
                                <option>Priduct name Z - A</option>
                                <option>Priduct Stoke</option>
                                <option>Price Lowest first</option>
                            </select>
                        </div>
                    </form>

                    <div id="myTab" class="pull-right">
                        <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                        <a href="#blockView" data-toggle="tab"><span class="btn btn-large active"><i class="icon-th-large icon-white"></i></span></a>
                    </div>
                    <br class="clr"/>
                    <div class="tab-content">
                        <div class="tab-pane" id="listView">
                            <div class="row">	  
                                <div id="productView" class="span2">
                                    <img src="assets/products/3.jpg" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>				
                                    <hr class="soft"/>
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                        that is why our goods are so popular..
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> $140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">  Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                        <a href="product_details.html" class="btn btn-large">VIEW</a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft"/>
                            <div class="row">	  
                                <div id="productView" class="span2">
                                    <img src="assets/products/1.jpg" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>				
                                    <hr class="soft"/>
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                        that is why our goods are so popular..
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> $140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">  Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                        <a href="product_details.html" class="btn btn-large">VIEW</a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft"/>
                            <div class="row">	  
                                <div id="productView" class="span2">
                                    <img src="assets/products/3.jpg" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>				
                                    <hr class="soft"/>
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                        that is why our goods are so popular..
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> $140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">  Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                        <a href="product_details.html" class="btn btn-large">VIEW</a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft"/>
                            <div class="row">	  
                                <div id="productView" class="span2">
                                    <img src="assets/products/3.jpg" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>				
                                    <hr class="soft"/>
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                        that is why our goods are so popular..
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> $140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">  Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                        <a href="product_details.html" class="btn btn-large">VIEW</a>

                                    </form>
                                </div>
                            </div>

                            <hr class="soft"/>
                            <div class="row">	  
                                <div id="productView" class="span2">
                                    <img src="assets/products/3.jpg" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>				
                                    <hr class="soft"/>
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                        that is why our goods are so popular..
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> $140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">  Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                        <a href="product_details.html" class="btn btn-large">VIEW</a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft"/>
                            <div class="row">	  
                                <div id="productView" class="span2">
                                    <img src="assets/products/3.jpg" alt=""/>
                                </div>
                                <div class="span4">
                                    <h3>New | Available</h3>				
                                    <hr class="soft"/>
                                    <h5>Product Name </h5>
                                    <p>
                                        Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                        that is why our goods are so popular..
                                    </p>
                                    <a class="btn btn-small pull-right" href="product_details.html">View Details</a>
                                    <br class="clr"/>
                                </div>
                                <div class="span3 alignR">
                                    <form class="form-horizontal qtyFrm">
                                        <h3> $140.00</h3>
                                        <label class="checkbox">
                                            <input type="checkbox">  Adds product to compair
                                        </label><br/>

                                        <a href="product_details.html" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
                                        <a href="product_details.html" class="btn btn-large">VIEW</a>

                                    </form>
                                </div>
                            </div>
                            <hr class="soft"/>
                        </div>

                        <div class="tab-pane  active" id="blockView">
                            <ul class="thumbnails">
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="assets/products/3.jpg" alt=""/></a>
                                        <div class="caption">
                                            <h5>Manicure &amp; Pedicure</h5>
                                            <p> 
                                                I'm a paragraph. Click here 
                                            </p>
                                            <h4><a class="btn btn-large" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="assets/products/3.jpg" alt=""/></a>
                                        <div class="caption">
                                            <h5>Manicure &amp; Pedicure</h5>
                                            <p> 
                                                I'm a paragraph. Click here 
                                            </p>
                                            <h4><a class="btn btn-large" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="assets/products/3.jpg" alt=""/></a>
                                        <div class="caption">
                                            <h5>Manicure &amp; Pedicure</h5>
                                            <p> 
                                                I'm a paragraph. Click here 
                                            </p>
                                            <h4><a class="btn btn-large" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="assets/products/3.jpg" alt=""/></a>
                                        <div class="caption">
                                            <h5>Manicure &amp; Pedicure</h5>
                                            <p> 
                                                I'm a paragraph. Click here 
                                            </p>
                                            <h4><a class="btn btn-large" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="assets/products/3.jpg" alt=""/></a>
                                        <div class="caption">
                                            <h5>Manicure &amp; Pedicure</h5>
                                            <p> 
                                                I'm a paragraph. Click here 
                                            </p>
                                            <h4><a class="btn btn-large" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                        </div>
                                    </div>
                                </li>
                                <li class="span3">
                                    <div class="thumbnail">
                                        <a href="product_details.html"><img src="assets/products/3.jpg" alt=""/></a>
                                        <div class="caption">
                                            <h5>Manicure &amp; Pedicure</h5>
                                            <p> 
                                                I'm a paragraph. Click here 
                                            </p>
                                            <h4><a class="btn btn-large" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <hr class="soft"/>
                        </div>
                    </div>

                    <a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
                    <div class="pagination">
                        <ul>
                            <li><a href="#">&lsaquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">&rsaquo;</a></li>
                        </ul>
                    </div>
                    <br class="clr"/>
                </div>
            </div>
            <!-- Footer ------------------------------------------------------ -->
            <hr class="soft">
            <jsp:include page="footer.jsp" />
            </body>
            </html>