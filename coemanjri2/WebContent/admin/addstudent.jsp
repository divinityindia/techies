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
        <title>:: Add Student</title>

        <!-- Plugins css -->
        <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">  
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/form.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/state.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<!-- <script src="../assets/js/state.js"></script> -->
        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizer.min.js"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="../assets/js/addstudent.js"></script>
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
                    	<c:choose>
  							<c:when test="${param.success eq 1}">
    							<div class="form_success">Success</div>
  							</c:when>
  							<c:when test="${param.success eq 0}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  						</c:choose>
                    <div class="row">
                   		<form  class="form-horizontal m-t-20" action="addstudent" method="post" enctype="multipart/form-data">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="studentname" id="studentname"  placeholder="Enter student name" required="required"/>
                                    </div>
                                   	<div class="formitem">
                                        <h5><b>PRN No: </b><span id="prnexist" style="font-weight: bold;color: #A42D10;"></span></h5>
                                        <input type="text" class="form-control" name="prnno" maxlength="9" pattern="^[0-9]{8}[a-zA-Z]$" placeholder="Enter PRN no" id="prnno" title="Please Enter 9 character valid PRN No." autocomplete="off"/>
                                    	<div style="float: right;padding-left: 5px;visibility: hidden;" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/>Checking for PRN</div>
                                    </div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Guardian: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="guardianname" id="guardianname"  placeholder="Enter guardian name" required="required"/>
                                    </div>
                                   	<div class="formitem">
                                    	<h5><b>Gender: <font color="tomato">*</font></b></h5>
                                        <input type="radio" name="gender" value="male" style="display: inline" required="required"/>Male
                                        <input type="radio" name="gender" value="female" style="display: inline" required="required"/>Female
                                  	</div>
                              	</div>
                              	
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Date of Birth: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofbirth" id="datepicker-1" required="required" readonly="readonly">
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                                  	<div class="formitem">
                                    	<h5><b>Blood Group: <font color="tomato">*</font></b></h5>
                                       	<input type="text" class="form-control"  name="bloodgroup" id="bloodgroup"  placeholder="Enter Blood Group" required="required"/>
                                    </div>
                           		</div>
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Religion: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="religion" id="religion" required="required">
                                     		<option  value="">---Select Religion---</option>
                                     		<option>Hindu</option>
                                           	<option>Muslim</option>
                                           	<option>Christian</option>
                                           	<option>Buddhist</option>
                                           	<option>Jain</option>
                                           	<option>Sikh</option>
                                           	<option>Other</option>
										</select>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>Category: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="category" id="category" required="required">
                                        	<option selected="selected" value="">---Select Category---</option>
                                        	<option>General/OPEN</option>
                                        	<option>J & K Migrant</option>
                                        	<option>Lingayat Vani</option>
                                        	<option>Maratha</option>
                                        	<option>NT</option>
                                        	<option>NT-1</option>
                                        	<option>NT-1(NT-D)</option>
                                        	<option>NT-2</option>
                                        	<option>NT-2(NT-C)</option>
                                        	<option>NT-2(NT-D)</option>
                                        	<option>NT-A</option>
                                        	<option>NT-B</option>
                                        	<option>NT-C</option>
                                        	<option>NT-D</option>
                                        	<option>OBC</option>
                                        	<option>Raghuvanshi</option>
                                        	<option>SC</option>
                                        	<option>ST</option>
                                        	<option>SBC</option>
                                        	<option>VJ</option>
                                        	<option>VJ-NT</option>
                                        	<option>VJ-DT</option>
                                        </select>
                                  	</div>   
                                  	
                             	</div>
                               	<div class="row">
                              		<div class="formitem">
                                    	<h5><b>Caste <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="caste"  placeholder="Enter Caste" id="caste" required="required"/>
                                  	</div>	
                              		<div class="formitem">
                                   		<h5><b>Email ID<font color="tomato">*</font></b></h5>
                                        <input type="email" class="form-control" name="email"  placeholder="Enter Email ID" id="email" required="required"/>
                                  	</div>
                              		
                             	</div>
                             	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Phone<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="phone"  maxlength="10" pattern="[0-9]{10}" placeholder="Enter Phone no.(Only Numbers [0-9])" id="phone" required="required" title="Please Enter 10 digit valid Mobile Number"/>
                                  	</div>
                              		<div class="formitem">
                                   		<h5><b>Address<font color="tomato">*</font></b></h5>
                                        <textarea class="form-control" name="address"  placeholder="Enter address" id="address" required="required"></textarea>
                                  	</div>
                                  	
                              		
                             	</div>
                             	<div class="row">
                                   	<div class="formitem">
                                    	<h5><b>State: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="state" id="state" required="required">
                                        	<option selected="selected" value="">---Select State---</option>
                                        </select>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>City: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="city" id="city" required="required">
                                        	<option selected="selected" value="">---Select City---</option>
                                        </select>
                                   	</div>
                                   	
                               	</div>	
                               	<div class="row">
                               		<div class="formitem">
                                    	<h5><b>Pincode: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="pincode"  placeholder="Enter 6 digit pincode" maxlength="6" pattern="[0-9]{6}" id="pincode" required="required"/>
                                  	</div>
                               		<div class="formitem">
                                    	<h5><b>Academic Year: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="academicyear"  placeholder="Enter academic year" id="academicyear" required="required"/>
                                  	</div>
                             	</div>
                             	<div class="row">
                             		<div class="formitem">
                                   		<h5><b>Course: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="course" id="course" required="required">
                                        	<option selected="selected">---Select Course--</option>
                                        	<c:forEach var="cat" items="${requestScope.coursename}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                                   	<div class="formitem">
                                   		<h5><b>Semester: <font color="tomato">*</font></b></h5>
                                       	<select class="form-control"  name="semester" id="semester" required="required">
	                                  		<option selected="selected" value="">---Select Semester---</option>
	                                  		<option>SEM-I</option>
	                                     	<option>SEM-II</option>
	                                    	<option>SEM-III</option>
	                                     	<option>SEM-IV</option>
	                                      	<option>SEM-V</option>
	                                    	<option>SEM-VI</option>
	                                    	<option>SEM-VII</option>
	                                    	<option>SEM-VIII</option>
	                                 	</select>
                                 	</div>
                             	</div>
                             	<div class="row">
                             		<div class="formitem">
                                    	<h5><b>Branch: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="branch" id="branch" required="required">
                                        	<option selected="selected" value="">---Select Branch--</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                  	</div>
                                   	<div class="formitem">
                                   		<h5><b>Class: <font color="tomato">*</font></b></h5>
                                   		<select class="form-control"  name="class" id="class" required="required">
                                        	<option selected="selected" value="">---Select Class--</option>
                                        	<c:forEach var="cat" items="${requestScope.classname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                             	</div>
                             	<div class="row">
                                	<div class="formitem">
                                   		<h5><b>Section: <font color="tomato">*</font></b></h5>
                                        <select class="form-control" name="section" id="section" required="required">
                                        	<option selected="selected" value="">---Select Section--</option>
                                        	<c:forEach var="cat" items="${requestScope.sectionname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                              		<div class="formitem">
                                   		<h5><b>Roll No.:<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="rollno"  pattern="[0-9]*" placeholder="Enter Roll no.(Only Numbers [0-9])" id="rollno" required="required"/>
                                  	</div>
                             	</div>
                               	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Photo:<font color="tomato">*</font></b></h5>
                                        <input type="file" name="photo" id="photo" required="required"/>
                                  	</div>
                              		<div class="formitem">
                                   		<h5><b>Admission Date: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofadmission" required="required" id="datepicker-2" readonly="readonly">
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                                   	
                               	</div>
                               	<div class="row">
                                   	<div class="formitem">
                                   		<h5><b>Username:<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="username"  placeholder="Enter Username" id="username" required="required"/>
                                  	</div>
                                   	<div class="formitem">
                                   		<h5><b>Password:<font color="tomato">*</font></b></h5>
                                        <input type="password" class="form-control" name="password"  placeholder="Enter Password" id="password" required="required"/>
                                  	</div>
                                  	<div class="formitem">
                                   		<span id="prnexistbtn" style="font-weight: bold;color: #A42D10;"></span>
                                  	</div>
                             	</div>
                              	<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;" id="submitbtn">Add Student</button>
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