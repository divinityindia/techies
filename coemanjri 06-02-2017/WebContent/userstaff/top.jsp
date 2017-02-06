<%-- 
    Document   : topper
    Created on : May 18, 2016, 12:03:43 PM
    Author     : divinity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link href="../assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizr.min.js"></script>
    </head>
    <body>
        
         <header id="topnav">
            <div class="topbar-main">
                <div class="container">

                    <!-- Logo container-->
                    <div class="logo">
                        <a href="index.html" class="logo"><span>C<i
                                class="md md-album"></i>LLEGE OF ENGINEERING,Manjri</span></a>
                    </div>
                    <!-- End Logo container-->


                    <div class="menu-extras">

                        <ul class="nav navbar-nav navbar-right pull-right">
                            <li class="navbar-c-items">
                                <form role="search" class="navbar-left app-search pull-left hidden-xs">
                                     <input type="text" placeholder="Search..." class="form-control">
                                     <a href=""><i class="fa fa-search"></i></a>
                                </form>
                            </li>
                   

                            <li class="dropdown navbar-c-items">
                                <a href="" class="dropdown-toggle waves-effect waves-light profile" data-toggle="dropdown" aria-expanded="true">${sessionScope.user} </a>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:void(0)"><i class="ti-user text-custom m-r-10"></i> Profile</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-settings text-custom m-r-10"></i> Settings</a></li>
                                    <li><a href="javascript:void(0)"><i class="ti-lock text-custom m-r-10"></i> Lock screen</a></li>
                                    <li class="divider"></li>
                                    <li><a href="../Logout"><i class="ti-power-off text-danger m-r-10"></i> Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="menu-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </div>
                    </div>

                </div>
            </div>

   <div class="navbar-custom">
                <div class="container">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">
                            <li class="has-submenu">
                                <a href="userstaff.jsp"><i class="md md-dashboard"></i>HOME</a>
                              
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="md md-add-box"></i>Library Account</a>
                                <ul class="submenu">
                                    <li>
                                         <a href="AddBook" class="waves-effect waves-light "><span> Add Book Entry </span> </a>
                                         <li><a href="EditBook" class="waves-effect waves-light "> <span> Edit Book Entry </span> </a></li>
                                         <li><a href="GetAllBook" class="waves-effect waves-light "> <span> Get Book List </span> </a></li>
                                    </li>
                                </ul>
                                
                            </li>


<!--                            <li class="has-submenu"><a href="AddStudent" class="waves-effect waves-light "> <i class="md md-add-box"></i><span> add student entry </span> </a></li>
                             <li class="has-submenu"><a href="calendar.jsp" class="waves-effect waves-light "><i class="md md-alarm-on"></i> <span> calendar </span> </a></li>
                     <li class="has-submenu"><a href="BranchWiseAttendance" class="waves-effect waves-light "> <i class="md md-check"></i><span> Attendance </span> </a></li>-->


                            
                        </ul>
                        <!-- End navigation menu        -->
                    </div>
                </div> <!-- end container -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->
       <!-- jQuery  -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/detect.js"></script>
        <script src="../assets/js/fastclick.js"></script>
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <script src="../assets/js/jquery.blockUI.js"></script>
        <script src="../assets/js/waves.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/jquery.nicescroll.js"></script>
        <script src="../assets/js/jquery.scrollTo.min.js"></script>

        <!-- plugins js -->
        <script src="../assets/plugins/moment/moment.js"></script>
     	<script src="../assets/plugins/timepicker/bootstrap-timepicker.js"></script>
     	<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
     	<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
     	<script src="../assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
     	<script src="../assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>

        <!-- App core js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>

        <!-- page js -->
        <script src="../assets/pages/jquery.form-pickers.init.js"></script>
        <script type="text/javascript">
        var myVar = setInterval(function(){ myTimer() }, 1000);
        var jsVar=  <%=java.util.Calendar.getInstance().getTimeInMillis()%>;
        var timeZoneOffset=<%=java.util.TimeZone.getDefault().getOffset(System.currentTimeMillis())%>;

        //jsVar=jsVar+timeZoneOffset;
        function myTimer() {
        jsVar=jsVar+1000;
        var d = new Date(jsVar);
        //var t=d.toUTCString();
        var dt=d.toDateString();
        var t=d.toLocaleTimeString();
        document.getElementById("timelable").innerHTML = dt+",  "+t;
        }

        </script>                     
    </body>
</html>
