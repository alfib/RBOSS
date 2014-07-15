<%-- 
    Document   : users
    Created on : Jul 14, 2014, 12:14:31 PM
    Author     : naimi_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

    <!-- BEGIN HEAD -->
    <head>
        <meta charset="UTF-8" />
        <title>BCORE Admin Dashboard Template | Data Tables</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!--[if IE]>
           <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
           <![endif]-->
        <!-- GLOBAL STYLES -->
        <!-- GLOBAL STYLES -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="assets/css/theme.css" />
        <link rel="stylesheet" href="assets/css/MoneAdmin.css" />
        <link rel="stylesheet" href="assets/plugins/Font-Awesome/css/font-awesome.css" />
        <!--END GLOBAL STYLES -->

        <!-- PAGE LEVEL STYLES -->
        <link href="assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/plugins/social-buttons/social-buttons.css" />
        <!-- END PAGE LEVEL  STYLES -->
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="padTop53 " >

        <!-- MAIN WRAPPER -->
        <div id="wrap">


            <!-- HEADER SECTION -->
            <div id="top">

                <nav class="navbar navbar-inverse navbar-fixed-top " style="padding-top: 10px;">
                    <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu" id="menu-toggle">
                        <i class="icon-align-justify"></i>
                    </a>
                    <!-- LOGO SECTION -->
                    <header class="navbar-header">

                        <a href="index.html" class="navbar-brand">
                            <img src="assets/img/logo.png" alt="" /></a>
                    </header>
                    <!-- END LOGO SECTION -->
                    <ul class="nav navbar-top-links navbar-right">

                        <!-- MESSAGES SECTION -->
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <span class="label label-success">2</span>    <i class="icon-envelope-alt"></i>&nbsp; <i class="icon-chevron-down"></i>
                            </a>

                            <ul class="dropdown-menu dropdown-messages">
                                <li>
                                    <a href="#">
                                        <div>
                                            <strong>John Smith</strong>
                                            <span class="pull-right text-muted">
                                                <em>Today</em>
                                            </span>
                                        </div>
                                        <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                            <br />
                                            <span class="label label-primary">Important</span> 

                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <strong>Raphel Jonson</strong>
                                            <span class="pull-right text-muted">
                                                <em>Yesterday</em>
                                            </span>
                                        </div>
                                        <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                            <br />
                                            <span class="label label-success"> Moderate </span> 
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <strong>Chi Ley Suk</strong>
                                            <span class="pull-right text-muted">
                                                <em>26 Jan 2014</em>
                                            </span>
                                        </div>
                                        <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                            <br />
                                            <span class="label label-danger"> Low </span> 
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a class="text-center" href="#">
                                        <strong>Read All Messages</strong>
                                        <i class="icon-angle-right"></i>
                                    </a>
                                </li>
                            </ul>

                        </li>
                        <!--END MESSAGES SECTION -->

                        <!--TASK SECTION -->
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <span class="label label-danger">5</span>   <i class="icon-tasks"></i>&nbsp; <i class="icon-chevron-down"></i>
                            </a>

                            <ul class="dropdown-menu dropdown-tasks">
                                <li>
                                    <a href="#">
                                        <div>
                                            <p>
                                                <strong> Profile </strong>
                                                <span class="pull-right text-muted">40% Complete</span>
                                            </p>
                                            <div class="progress progress-striped active">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                    <span class="sr-only">40% Complete (success)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <p>
                                                <strong> Pending Tasks </strong>
                                                <span class="pull-right text-muted">20% Complete</span>
                                            </p>
                                            <div class="progress progress-striped active">
                                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <p>
                                                <strong> Work Completed </strong>
                                                <span class="pull-right text-muted">60% Complete</span>
                                            </p>
                                            <div class="progress progress-striped active">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    <span class="sr-only">60% Complete (warning)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <p>
                                                <strong> Summary </strong>
                                                <span class="pull-right text-muted">80% Complete</span>
                                            </p>
                                            <div class="progress progress-striped active">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                    <span class="sr-only">80% Complete (danger)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a class="text-center" href="#">
                                        <strong>See All Tasks</strong>
                                        <i class="icon-angle-right"></i>
                                    </a>
                                </li>
                            </ul>

                        </li>
                        <!--END TASK SECTION -->

                        <!--ALERTS SECTION -->
                        <li class="chat-panel dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <span class="label label-info">8</span>   <i class="icon-comments"></i>&nbsp; <i class="icon-chevron-down"></i>
                            </a>

                            <ul class="dropdown-menu dropdown-alerts">

                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="icon-comment" ></i> New Comment
                                            <span class="pull-right text-muted small"> 4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="icon-twitter info"></i> 3 New Follower
                                            <span class="pull-right text-muted small"> 9 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="icon-envelope"></i> Message Sent
                                            <span class="pull-right text-muted small" > 20 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="icon-tasks"></i> New Task
                                            <span class="pull-right text-muted small"> 1 Hour ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="icon-upload"></i> Server Rebooted
                                            <span class="pull-right text-muted small"> 2 Hour ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a class="text-center" href="#">
                                        <strong>See All Alerts</strong>
                                        <i class="icon-angle-right"></i>
                                    </a>
                                </li>
                            </ul>

                        </li>
                        <!-- END ALERTS SECTION -->

                        <!--ADMIN SETTINGS SECTIONS -->

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-user "></i>&nbsp; <i class="icon-chevron-down "></i>
                            </a>

                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#"><i class="icon-user"></i> User Profile </a>
                                </li>
                                <li><a href="#"><i class="icon-gear"></i> Settings </a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="login.html"><i class="icon-signout"></i> Logout </a>
                                </li>
                            </ul>

                        </li>
                        <!--END ADMIN SETTINGS -->
                    </ul>

                </nav>

            </div>
            <!-- END HEADER SECTION -->



            <!-- MENU SECTION -->
            <div id="left">
                <div class="media user-media well-small">
                    <a class="user-link" href="#">
                        <img class="media-object img-thumbnail user-img" alt="User Picture" src="assets/img/user.gif" />
                    </a>
                    <br />
                    <div class="media-body">
                        <h5 class="media-heading"> Naimish Viradia</h5>
                        <ul class="list-unstyled user-info">

                            <li>
                                <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                            </li>

                        </ul>
                    </div>
                    <br />
                </div>

                <ul id="menu" class="collapse">


                    <li class="panel">
                        <a href="index.html" >
                            <i class="icon-table"></i> Dashboard


                        </a>                   
                    </li>

                    <!--
                    @Program : Naimish
                    All Manu
                    @Start
                -->
                
                <li><a href="new_order_list.jsp"><i class="icon-columns"></i> New Orders </a></li>
                <li><a href="order_list_all.jsp"><i class="icon-columns"></i> All Orders  </a></li>
                <li><a href="catagories.jsp"><i class="icon-columns"></i> Catagories </a></li>
                <li><a href="product_list.jsp"><i class="icon-columns"></i> Product List  </a></li>
                <li><a href="shippingCharges.jsp"><i class="icon-columns"></i> Shipping Charges </a></li>
                <li><a href="blank.html"><i class="icon-columns"></i> Comments List  </a></li>
                <li><a href="uploadImages.jsp"><i class="icon-columns"></i> Upload images </a></li>
                <li><a href="fixedPages.jsp"><i class="icon-columns"></i> Fixed Pages  </a></li>
                <li><a href="comMsg.jsp"><i class="icon-columns"></i> Communication Massages </a></li>
                <li><a href="users.jsp"><i class="icon-columns"></i> Membership </a></li>
                <li><a href="settings.jsp"><i class="icon-columns"></i> Settings </a></li>
                
                <!--
                    @Program : Naimish
                    @Finish
                    
                -->

                    <li class="panel ">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                            <i class="icon-tasks"> </i> UI Elements     

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                            &nbsp; <span class="label label-default">10</span>&nbsp;
                        </a>
                        <ul class="collapse" id="component-nav">

                            <li class=""><a href="button.html"><i class="icon-angle-right"></i> Buttons </a></li>
                            <li class=""><a href="icon.html"><i class="icon-angle-right"></i> Icons </a></li>
                            <li class=""><a href="progress.html"><i class="icon-angle-right"></i> Progress </a></li>
                            <li class=""><a href="tabs_panels.html"><i class="icon-angle-right"></i> Tabs & Panels </a></li>
                            <li class=""><a href="notifications.html"><i class="icon-angle-right"></i> Notification </a></li>
                            <li class=""><a href="more_notifications.html"><i class="icon-angle-right"></i> More Notification </a></li>
                            <li class=""><a href="modals.html"><i class="icon-angle-right"></i> Modals </a></li>
                            <li class=""><a href="wizard.html"><i class="icon-angle-right"></i> Wizard </a></li>
                            <li class=""><a href="sliders.html"><i class="icon-angle-right"></i> Sliders </a></li>
                            <li class=""><a href="typography.html"><i class="icon-angle-right"></i> Typography </a></li>
                        </ul>
                    </li>
                    <li class="panel ">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#form-nav">
                            <i class="icon-pencil"></i> Forms

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                            &nbsp; <span class="label label-success">5</span>&nbsp;
                        </a>
                        <ul class="collapse" id="form-nav">
                            <li class=""><a href="forms_general.html"><i class="icon-angle-right"></i> General </a></li>
                            <li class=""><a href="forms_advance.html"><i class="icon-angle-right"></i> Advance </a></li>
                            <li class=""><a href="forms_validation.html"><i class="icon-angle-right"></i> Validation </a></li>
                            <li class=""><a href="forms_fileupload.html"><i class="icon-angle-right"></i> FileUpload </a></li>
                            <li class=""><a href="forms_editors.html"><i class="icon-angle-right"></i> WYSIWYG / Editor </a></li>
                        </ul>
                    </li>

                    <li class="panel">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#pagesr-nav">
                            <i class="icon-table"></i> Pages

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                            &nbsp; <span class="label label-info">6</span>&nbsp;
                        </a>
                        <ul class="collapse" id="pagesr-nav">
                            <li><a href="pages_calendar.html"><i class="icon-angle-right"></i> Calendar </a></li>
                            <li><a href="pages_timeline.html"><i class="icon-angle-right"></i> Timeline </a></li>
                            <li><a href="pages_social.html"><i class="icon-angle-right"></i> Social </a></li>
                            <li><a href="pages_pricing.html"><i class="icon-angle-right"></i> Pricing </a></li>
                            <li><a href="pages_offline.html"><i class="icon-angle-right"></i> Offline </a></li>
                            <li><a href="pages_uc.html"><i class="icon-angle-right"></i> Under Construction </a></li>
                        </ul>
                    </li>
                    <li class="panel">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#chart-nav">
                            <i class="icon-bar-chart"></i> Charts

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                            &nbsp; <span class="label label-danger">4</span>&nbsp;
                        </a>
                        <ul class="collapse" id="chart-nav">



                            <li><a href="charts_line.html"><i class="icon-angle-right"></i> Line Charts </a></li>
                            <li><a href="charts_bar.html"><i class="icon-angle-right"></i> Bar Charts</a></li>
                            <li><a href="charts_pie.html"><i class="icon-angle-right"></i> Pie Charts </a></li>
                            <li><a href="charts_other.html"><i class="icon-angle-right"></i> other Charts </a></li>
                        </ul>
                    </li>

                    <li class="panel">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#DDL-nav">
                            <i class=" icon-sitemap"></i> 3 Level Menu

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                        </a>
                        <ul class="collapse" id="DDL-nav">
                            <li>
                                <a href="#" data-parent="#DDL-nav" data-toggle="collapse" class="accordion-toggle" data-target="#DDL1-nav">
                                    <i class="icon-sitemap"></i>&nbsp; Demo Link 1

                                    <span class="pull-right" style="margin-right: 20px;">
                                        <i class="icon-angle-left"></i>
                                    </span>


                                </a>
                                <ul class="collapse" id="DDL1-nav">
                                    <li>
                                        <a href="#"><i class="icon-angle-right"></i> Demo Link 1 </a>

                                    </li>
                                    <li>
                                        <a href="#"><i class="icon-angle-right"></i> Demo Link 2 </a></li>
                                    <li>
                                        <a href="#"><i class="icon-angle-right"></i> Demo Link 3 </a></li>

                                </ul>

                            </li>
                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 2 </a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 3 </a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 4 </a></li>
                        </ul>
                    </li>
                    <li class="panel">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#DDL4-nav">
                            <i class=" icon-folder-open-alt"></i> 4 Level Menu

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                        </a>
                        <ul class="collapse" id="DDL4-nav">
                            <li>
                                <a href="#" data-parent="DDL4-nav" data-toggle="collapse" class="accordion-toggle" data-target="#DDL4_1-nav">
                                    <i class="icon-sitemap"></i>&nbsp; Demo Link 1

                                    <span class="pull-right" style="margin-right: 20px;">
                                        <i class="icon-angle-left"></i>
                                    </span>


                                </a>
                                <ul class="collapse" id="DDL4_1-nav">
                                    <li>

                                        <a href="#" data-parent="#DDL4_1-nav" data-toggle="collapse" class="accordion-toggle" data-target="#DDL4_2-nav">
                                            <i class="icon-sitemap"></i>&nbsp; Demo Link 1

                                            <span class="pull-right" style="margin-right: 20px;">
                                                <i class="icon-angle-left"></i>
                                            </span>
                                        </a>
                                        <ul class="collapse" id="DDL4_2-nav">



                                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 1 </a></li>
                                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 2 </a></li>
                                        </ul>



                                    </li>
                                    <li><a href="#"><i class="icon-angle-right"></i> Demo Link 2 </a></li>
                                    <li><a href="#"><i class="icon-angle-right"></i> Demo Link 3 </a></li>
                                </ul>

                            </li>
                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 2 </a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 3 </a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Demo Link 4 </a></li>
                        </ul>
                    </li>
                    <li class="panel">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#error-nav">
                            <i class="icon-warning-sign"></i> Error Pages

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                            &nbsp; <span class="label label-warning">5</span>&nbsp;
                        </a>
                        <ul class="collapse" id="error-nav">
                            <li><a href="errors_403.html"><i class="icon-angle-right"></i> Error 403  </a></li>
                            <li><a href="errors_404.html"><i class="icon-angle-right"></i> Error 404  </a></li>
                            <li><a href="errors_405.html"><i class="icon-angle-right"></i> Error 405  </a></li>
                            <li><a href="errors_500.html"><i class="icon-angle-right"></i> Error 500  </a></li>
                            <li><a href="errors_503.html"><i class="icon-angle-right"></i> Error 503  </a></li>
                        </ul>
                    </li>


                    <li><a href="gallery.html"><i class="icon-film"></i> Image Gallery </a></li>
                    <li class="panel active"><a href="tables.html"><i class="icon-table"></i> Data Tables </a></li>
                    <li><a href="maps.html"><i class="icon-map-marker"></i> Maps </a></li>

                    <li><a href="grid.html"><i class="icon-columns"></i> Grid </a></li>
                    <li class="panel">
                        <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#blank-nav">
                            <i class="icon-check-empty"></i> Blank Pages

                            <span class="pull-right">
                                <i class="icon-angle-left"></i>
                            </span>
                            &nbsp; <span class="label label-success">2</span>&nbsp;
                        </a>
                        <ul class="collapse" id="blank-nav">

                            <li><a href="blank.html"><i class="icon-angle-right"></i> Blank Page One  </a></li>
                            <li><a href="blank2.html"><i class="icon-angle-right"></i> Blank Page Two  </a></li>
                        </ul>
                    </li>
                    <li><a href="login.html"><i class="icon-signin"></i> Login Page </a></li>

                </ul>

            </div>
            <!--END MENU SECTION -->


            <!--PAGE CONTENT -->
            <div id="content">

                <div class="inner">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2> Data Tables </h2>
                        </div>
                    </div>

                    <hr />

                    <!-- Add new user button -->
                    <div class="row">
                        <div class="col-lg-12">
                            <button class="btn btn-success" data-toggle="modal" data-target="#myModal">
                                <span class="glyphicon glyphicon-plus"></span> 
                                Add New Members
                            </button>
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Mamber List
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>Picture</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Status</th>
                                                    <th>Date</th>
                                                    <th>Admin</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="odd gradeX">
                                                    <td>
                                                        <a href="#" target="_blank">
                                                            <img src="#" alt="İmages" class="img-thumbnail" width="120px">
                                                        </a>
                                                    </td>

                                                    <td>Internet Explorer 4.0</td>
                                                    <td>Win 95+</td>
                                                    <td class="center">4</td>
                                                    <td class="center">X</td>
                                                    <td>
                                                        <button type="button" id="100" class="btn btn-danger delete">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                            Delete
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr class="even gradeC">
                                                    <td>
                                                        <a href="#" target="_blank">
                                                            <img src="#" alt="İmages" class="img-thumbnail" width="120px">
                                                        </a>
                                                    </td>
                                                    <td>Internet Explorer 5.0</td>
                                                    <td>Win 95+</td>
                                                    <td class="center">5</td>
                                                    <td class="center">C</td>
                                                    <td>
                                                        <button type="button" id="100" class="btn btn-danger delete">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                            Delete
                                                        </button>
                                                    </td>
                                                </tr>
                                                <tr class="odd gradeA">
                                                    <td>
                                                        <a href="#" target="_blank">
                                                            <img src="#" alt="İmages" class="img-thumbnail" width="120px">
                                                        </a>
                                                    </td>
                                                    <td>Internet Explorer 5.5</td>
                                                    <td>Win 95+</td>
                                                    <td class="center">5.5</td>
                                                    <td class="center">A</td>
                                                    <td>
                                                        <button type="button" id="100" class="btn btn-danger delete">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                            Delete
                                                        </button>
                                                    </td>
                                                </tr>




                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form class="form-horizontal" id="NewUserForm" role="form">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">Add New Members</h4>
                                            </div>



                                            <div class="modal-body">
                                                <div id="comments-div"></div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">Name</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="name" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">Email</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="email" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">Status</label>
                                                    <div class="col-sm-8">
                                                        <select name="status" class="form-control">
                                                            <option value="1">User</option>
                                                            <option value="2">Admin</option>
                                                            <option value="2">Vendor</option>
                                                            <option value="2">Internal</option>
                                                        </select>
                                                    </div>
                                                </div>




                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">password</label>
                                                    <div class="col-sm-8">
                                                        <input type="password" name="password" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">password</label>
                                                    <div class="col-sm-8">
                                                        <input type="password" name="password2" class="form-control">
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="NewRoomType btn btn-primary">Save changes</button>
                                            </div> 
                                        </form>

                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->  
                        </div>
                    </div>





                </div>




            </div>
            <!--END PAGE CONTENT -->


        </div>

        <!--END MAIN WRAPPER -->

        <!-- FOOTER -->
        <div id="footer">
            <p>&copy;  binarytheme &nbsp;2014 &nbsp;</p>
        </div>
        <!--END FOOTER -->
        <!-- GLOBAL SCRIPTS -->
        <script src="assets/plugins/jquery-2.0.3.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <!-- END GLOBAL SCRIPTS -->
        <!-- PAGE LEVEL SCRIPTS -->
        <script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
        <script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function() {
                $('#dataTables-example').dataTable();
            });
        </script>
        <!-- END PAGE LEVEL SCRIPTS -->
    </body>
    <!-- END BODY -->
</html>
