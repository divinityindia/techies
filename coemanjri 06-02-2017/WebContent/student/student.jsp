<html>
    <head>
    	<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <!-- App Favicon icon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App Title -->
        <title>:: STUDENT PANEL</title>

        <!-- Plugins css -->
       
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
        <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    </head>
<body>
   <jsp:include page="top.jsp"/>
   <jsp:include page="menu.html"/>
   <jsp:include page="/count"/>
    
    
            <div class="container">

                <!-- Page-Title -->
          
              
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                          
                            <div class="row">
                            
                            <div class="count_block">
                            	<div class="count_info" style="background: url('../images/demo/teachers.jpg');background-repeat: no-repeat;">
   		  						 	<div style="color: #FFFFFF; font-size: xx-large;font-weight: bold;">${studentCount}</div>
   		  						 	<p style="font-size: large;color: #FFFFFF;font-weight: bold;">Students</p>
   		  						 	<p style="font-size: small;;color: #FFFFFF;font-weight: bold;">Total Students</p>	
   								</div>
   								<div class="count_info" style="background: url('../images/demo/students.jpg');background-repeat: no-repeat;">
   		   							<div style="color: #FFFFFF; font-size: xx-large;font-weight: bold;">${teacherCount}</div>
   		  						 	<p style="font-size: large;color: #FFFFFF;font-weight: bold;">Teachers</p>
   		  						 	<p style="font-size: small;;color: #FFFFFF;font-weight: bold;">Total Teachers</p>	
   								</div>
   								<div class="count_info" style="background: url('../images/demo/parents.jpg');background-repeat: no-repeat;">
   		   							<div style="color: #FFFFFF; font-size: xx-large;font-weight: bold;">${parentCount}</div>
   		  						 	<p style="font-size: large;color: #FFFFFF;font-weight: bold;">Parents</p>
   		  						 	<p style="font-size: small;;color: #FFFFFF;font-weight: bold;">Total Parents</p>	
   								</div>
   								<div class="count_info" style="background: url('../images/demo/attendance.jpg');background-repeat: no-repeat;">
   		   							<div style="color: #FFFFFF; font-size: xx-large;font-weight: bold;">count</div>
   		  						 	<p style="font-size: large;color: #FFFFFF;font-weight: bold;">Attendance</p>
   		  						 	<p style="font-size: small;;color: #FFFFFF;font-weight: bold;">Total present students</p>	
   								</div>
   							</div>
                                                          
  	<div style="float: left;margin-right: 5px;margin-top: 20px;overflow-x: scroll;">
 	<div class="planner" id="planner"><%= getPlanner(request) %></div>
        <%@ page import="com.dhtmlx.planner.*,com.dhtmlx.planner.data.*" %>
		<%!
           String getPlanner(HttpServletRequest request) throws Exception {
           DHXPlanner s = new DHXPlanner("../codebase/", DHXSkin.TERRACE);
           s.setWidth(900);
          
           s.setInitialDate(2016, 0, 21);
           s.load("events.jsp", DHXDataFormat.JSON);
           return s.render();
           }
        	%> 
    	</div>
   	
   	</div>
                            </div>
                        </div>
                    </div>
                </div>



             




                <!-- Footer -->
                <footer class="footer text-right">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6">
                                © 2016. All rights reserved.
                            </div>
                            <div class="col-xs-6">
                                <ul class="pull-right list-inline m-b-0">
                                    <li>
                                        <a href="#">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            <!-- end container -->
       
        <!-- end wrapper -->



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

    
</body>
</html>