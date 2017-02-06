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
        <jsp:include page="teacherUserChk.jsp"/>
         <header id="topnav">
            <div class="topbar-main">
                <div class="container">

                    <!-- Logo container-->
                    <div class="logo">
                        <a href="index.html" class="logo">PDEA's COLLEGE OF ENGINEERING,Manjari</span></a>
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
                                <a href="" class="dropdown-toggle waves-effect waves-light profile" data-toggle="dropdown" aria-expanded="true" style="text-transform: uppercase;">${sessionScope.user} </a>
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
                                <a href="admin.jsp"><i class="md md-dashboard"></i>HOME</a>
                              	<ul class="submenu">
                                    <li  class="has-submenu"><a href="#" class="waves-effect waves-light "><span>Student</span> </a>
                                    	<ul class="submenu">
                                    		<li><a href="addstudent" class="waves-effect waves-light "><span>Add Student</span> </a></li>
                                         	<li><a href="editstudent" class="waves-effect waves-light "> <span>Edit Student</span> </a></li>
                                         	<li><a href="GetAllStudent" class="waves-effect waves-light "> <span>Get All Students</span> </a></li>
                                         	<li><a href="GetBranchCode" class="waves-effect waves-light "> <span>Branch Code</span> </a></li>
                                		</ul>
                                    </li>
                                    <li  class="has-submenu"><a href="#" class="waves-effect waves-light "> <span>Teacher</span> </a>
                                    	<ul class="submenu">
                                    		<li><a href="addteacher" class="waves-effect waves-light "><span>Add Teacher</span></a></li>
                                         	<li><a href="editteacher" class="waves-effect waves-light "> <span>Edit Teacher</span> </a></li>
                                         	<li><a href="#" class="waves-effect waves-light "> <span>Get All Teachers</span> </a></li>
                                		</ul>
                                    </li>
                                    <li  class="has-submenu"><a href="#" class="waves-effect waves-light "> <span>Parent</span> </a>
                                    	<ul class="submenu">
                                    		<li><a href="addparent" class="waves-effect waves-light "><span>Add Parent</span></a></li>
                                         	<li><a href="editparent" class="waves-effect waves-light "> <span>Edit Parent</span> </a></li>
                                         	<li><a href="#" class="waves-effect waves-light "> <span>Get All Parent</span> </a></li>
                                		</ul>
                                    </li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Leave Application</span> </a></li>
                                    <li class="has-submenu"><a href="#" class="waves-effect waves-light "> <span>Hostel</span> </a>
                                    	<ul class="submenu">
                                    		<li><a href="#" class="waves-effect waves-light"><span>Hostel</span></a></li>
                                    		<li><a href="#" class="waves-effect waves-light"> <span>Category</span> </a></li>
                                    		<li><a href="#" class="waves-effect waves-light"> <span>Member</span> </a></li>
                                		</ul>
                                    </li>
                                    <li class="has-submenu"><a href="#" class="waves-effect waves-light "> <span>Transport</span></a>
                                    	<ul class="submenu">
                                    		<li><a href="#" class="waves-effect waves-light "><span>Transport</span></a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>Member</span> </a></li>
                                		</ul>
                                    </li>
                                    <li><a href="newsandevent" class="waves-effect waves-light "> <span>Events</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Holidays</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Promotion</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Routine</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Media</span> </a></li>
                                    
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="fa fa-users"></i>Create Account</a>
                                <ul class="submenu">
                                    <li><a href="createusertype.jsp" class="waves-effect waves-light "><span> Create Department </span> </a></li>
                                         <li><a href="UserTypeList" class="waves-effect waves-light "> <span> Create Department User </span> </a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="fa fa-map"></i>Departments</a>
                                <ul class="submenu">
                                	<li><a href="addcourse" class="waves-effect waves-light "> <span>Courses</span> </a></li>
                                    <li><a href="addbranch" class="waves-effect waves-light "> <span>Branches</span> </a></li>
                                    <li><a href="addclass" class="waves-effect waves-light "> <span>Classes</span> </a></li>
                                    <li><a href="addsection" class="waves-effect waves-light "> <span>Sections</span> </a></li>
                                    <li><a href="addsubject" class="waves-effect waves-light "> <span>Subjects</span> </a></li>
                       			</ul>
                            </li>

                     		
							<li class="has-submenu">
                                <a href="#" class="waves-effect waves-light "> <i class="md md-check"></i>Attendance</a>
                                <ul class="submenu">
                                    <li><a href="attendance" class="waves-effect waves-light "><span>Student Attendance</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "><span>Teacher Attendance</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "><span>Exam Attendance</span> </a></li>
                                </ul>
                            </li>
							<li class="has-submenu">
                                <a href="waves-effect waves-light " ><i class="fa fa-pencil-square-o"></i>Exam</a>
                                <ul class="submenu">
                                    <li class="has-submenu"><a href="#" class="waves-effect waves-light "><span>Exam</span> </a>
                                    	<ul class="submenu">
                                    		<li><a href="#" class="waves-effect waves-light "><span>Add Exam</span></a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>Edit Exam</span> </a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>Get All Exams</span> </a></li>
                                    	</ul>
                                    </li>
                                    <li class="has-submenu"><a href="#" class="waves-effect waves-light "><span>Exam Schedule</span> </a>
                                    	<ul class="submenu">
                                    		<li><a href="#" class="waves-effect waves-light "><span>Add Exam Schedule</span></a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>Edit Exam Schedule</span> </a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>Get All Exams Schedule</span> </a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Mark</span> </a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="waves-effect waves-light " ><i class="fa fa-book"></i>Library</a>
                                <ul class="submenu">
                                    <li><a href="#" class="waves-effect waves-light "><span>Member</span></a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Books</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Issue</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light "> <span>Fine</span> </a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="waves-effect waves-light " ><i class="fa fa-money"></i>Account</a>
                                <ul class="submenu">
                                    <li><a href="#" class="waves-effect waves-light"><span>Fee Type</span></a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Invoice</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Balance</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Expense</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Payment Setting</span> </a></li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="waves-effect waves-light " ><i class="fa fa-weixin"></i>Communication</a>
                                <ul class="submenu">
                                    <li class="has-submenu"><a href="#" class="waves-effect waves-light"><span>Mail / SMS</span></a>
                                    	<ul class="submenu">
                                    		<li><a href="#" class="waves-effect waves-light "><span>Mail / SMS Template</span></a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>Mail / SMS</span> </a></li>
                                    		<li><a href="#" class="waves-effect waves-light "> <span>SMS Setting</span> </a></li>
                                		</ul>	
                                    </li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Message</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Notice</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Report</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Visitor Information</span> </a></li>
                                    <li><a href="#" class="waves-effect waves-light"> <span>Import</span> </a></li>
                                </ul>
                            </li>
<!-- 							<li class="has-submenu"><a href="calendar.jsp" class="waves-effect waves-light "><i class="md md-alarm-on"></i> <span> Calendar </span> </a></li>                             -->

                            
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
