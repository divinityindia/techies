<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <!-- App Favicon icon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App Title -->
        <title>:: Add Exam Schedule</title>

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
        <link href="../assets/css/form.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizr.min.js"></script>
        
       
    </head>


    <body>

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>
	<div class="wrapper">
    	<div class="container">

           <!-- Page-Title -->
          
        	<div class="row">
            	<div class="col-sm-12">
                	<div class="card-box">
                    	<c:if test="${param.success eq 1}">
                        	<div> success </div>
                        </c:if>
                    <div class="row">
                   		<form  class="form-horizontal m-t-20" action="addteacher" method="post">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Exam Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="examname" id="examname"  placeholder="Enter Exam name" required="required"/>
                                    </div>
                                    <div class="formitem">
                                   		<h5><b>Class: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="class" id="class" required="required">
                                     		<option selected="selected"  value="">---Select Class---</option>
										</select>
                                   	</div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem">
                                   		<h5><b>Section: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="section" id="section" required="required">
                                     		<option selected="selected"  value="">---Select Section---</option>
										</select>
                                   	</div>
                                   	<div class="formitem">
                                   		<h5><b>Subject: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="subject" id="subject" required="required">
                                     		<option selected="selected"  value="">---Select Subject---</option>
										</select>
                                   	</div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem">
                                   		<h5><b>Date of Exam: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofexam"  placeholder="Enter Date of Exam" id="datepicker" required="required">
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>Time From: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="timefrom" id="timefrom"  placeholder="Time from" required="required"/>
                                    </div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Time To: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="timeto" id="timeto"  placeholder="Time to" required="required"/>
                                    </div>
                                    <div class="formitem">
                                    	<h5><b>Room: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="room" id="room"  placeholder="Room" required="required"/>
                                    </div>
                              	</div>
                              		
                               	<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;">Add Exam Schedule</button>
                          	</div>
                       	</form>
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

            </div> <!-- end container -->
        </div>
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