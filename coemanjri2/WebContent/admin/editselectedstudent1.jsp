<!DOCTYPE html>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Bean.StudentBean"%>
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
        <title>:: Edit Selected Student</title>

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
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        <script src="../assets/js/addstudent.js"></script>
       
       
    </head>


    <body>

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>

<%!
StudentBean sb=new StudentBean();
int i;

%>
<%
	sb=(StudentBean)session.getAttribute("studentBean");
%>
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
                   		<form  class="form-horizontal m-t-20" action="editselectedstudent" method="post" enctype="multipart/form-data">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="studentname" id="studentname"  placeholder="Enter student name" required="required" value="<%=sb.getStudentName()%>"/>
                                    </div>
                                   	<div class="formitem">
                                        <h5><b>PRN No: <font color="tomato">*</font></b><span id="prnexist" style="font-weight: bold;color: #A42D10;"></span></h5>
                                        <input type="text" class="form-control" name="prnno" maxlength="9" pattern="^[0-9]{8}[a-zA-Z]$" placeholder="Enter PRN no" id="eprnno" required="required" title="Please Enter 9 character valid PRN No."/>
                                    	<div style="float: right;padding-left: 5px;visibility: hidden;" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/>Checking for PRN</div>
                                    </div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Guardian: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="guardianname" id="guardianname"  placeholder="Enter guardian name" required="required" value="<%=sb.getGuardianName()%>"/>
                                    </div>
                                    
                                   	<div class="formitem">
                                    	<h5><b>Gender: <font color="tomato">*</font></b></h5>
                                        <input type="radio" name="gender" value="male" style="display: inline" required="required" <% if(sb.getGender().equals("male")){%>checked<%} %>/>Male
                                        <input type="radio" name="gender" value="female" style="display: inline" required="required" <% if(sb.getGender().equals("female")){%>checked<%} %>/>Female
                                  	</div>
                              	</div>
                              	<%
                              	Date date = sb.getDateofbirth(); // wherever you get this from
                              	DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                              	String text = df.format(date);
                              	%>
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Date of Birth: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofbirth" id="datepicker" required="required" value=<%=text %>>
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                                  	<div class="formitem">
                                    	<h5><b>Blood Group: <font color="tomato">*</font></b></h5>
                                       	<input type="text" class="form-control"  name="bloodgroup" id="bloodgroup"  placeholder="Enter Blood Group" required="required"  value="<%=sb.getBloodgroup()%>"/>
                                    </div>
                           		</div>
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Religion: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="religion" id="ereligion" required="required">
                                     		<option  value="">---Select Religion---</option>
                                     		<option <% if(sb.getReligion().equals("Hindu")){%>selected<%} %>>Hindu</option>
                                           	<option <% if(sb.getReligion().equals("Muslim")){%>selected<%} %>>Muslim</option>
                                           	<option <% if(sb.getReligion().equals("Christian")){%>selected<%} %>>Christian</option>
                                           	<option <% if(sb.getReligion().equals("Buddhist")){%>selected<%} %>>Buddhist</option>
                                           	<option <% if(sb.getReligion().equals("Jain")){%>selected<%} %>>Jain</option>
                                           	<option <% if(sb.getReligion().equals("Sikh")){%>selected<%} %>>Sikh</option>
                                           	<option <% if(sb.getReligion().equals("Other")){%>selected<%} %>>Other</option>
										</select>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>Category: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="category" id="ecategory" required="required">
                                        	<option selected="selected" value="0">---Select Category---</option>
                                        	<option>OPEN</option>
                                        	<option>OBC</option>
                                        	<option>SBC</option>
                                        	<option>SC</option>
                                        	<option>ST</option>
                                        	<option>VJ</option>
                                        	<option>NT-B</option>
                                        	<option>NT-C</option>
                                        	<option>NT-D</option>
                                        </select>
                                  	</div> 
                                   	 	
                             	</div>
                               	<div class="row">
                               		<div class="formitem">
                                    	<h5><b>Caste <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="caste"  placeholder="Enter Caste" id="caste" required="required" value="<%=sb.getCaste()%>"/>
                                  	</div>  
                              		<div class="formitem">
                                   		<h5><b>Email ID<font color="tomato">*</font></b></h5>
                                        <input type="email" class="form-control" name="email"  placeholder="Enter Email ID" id="email" required="required" value="<%=sb.getEmail()%>"/>
                                  	</div>
                              		
                             	</div>
                             	<div class="row">
                             		<div class="formitem">
                                   		<h5><b>Phone<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="phone"  maxlength="10" pattern="[0-9]{10}" placeholder="Enter Phone no.(Only Numbers [0-9])" id="phone" required="required" title="Please Enter 10 digit valid Mobile Number"/>
                                  	</div>
                              		<div class="formitem">
                                   		<h5><b>Address<font color="tomato">*</font></b></h5>
                                        <textarea class="form-control" name="address"  placeholder="Enter address" id="address" required="required"><%=sb.getAddress()%></textarea>
                                  	</div>
                                </div>
                                <div class="row">
                                  	<div class="formitem">
                                    	<h5><b>State: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="state" id="state" required="required">
                                        	
                                        </select>
                                   	</div>
                                   	
                              		<div class="formitem">
                                    	<h5><b>City: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="city" id="city" required="required">
                                        	<option selected="selected" value="0">---Select City---</option>
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
                                        <input type="text" class="form-control" name="academicyear" placeholder="Enter academic year" id="academicyear" required="required" value="<%=sb.getAcademicyear()%>"/>
                                  	</div>
                               	</div>	
                               	<%
                               		String courseid=sb.getCourseId()+"";
                               		String branchid=sb.getBranchId()+"";
                               		String classid=sb.getClassId()+"";
                               		String sectionid=sb.getSectionId()+"";
                               		
                               		HashMap<String,String> map=(HashMap<String,String>)request.getAttribute("coursename");
                               		Set<String> s=map.keySet();
                               		ArrayList course = new ArrayList(s);
                               		
                               		map=(HashMap<String,String>)request.getAttribute("branchname");
                               		s=map.keySet();
                               		ArrayList branch = new ArrayList(s);
                               		
                               		map=(HashMap<String,String>)request.getAttribute("classname");
                               		s=map.keySet();
                               		ArrayList class1 = new ArrayList(s);
                               		
                               		map=(HashMap<String,String>)request.getAttribute("sectionname");
                               		s=map.keySet();
                               		ArrayList section = new ArrayList(s);
                               		
                               	%>
                               	<div class="row">
                               		<div class="formitem">
                               		<%i=0; %>
                                   		<h5><b>Course: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="course" id="course" required="required">
                                        	<option>---Select Course--</option>
                                        	<c:forEach var="cat" items="${requestScope.coursename}">
                                            	<option value="${cat.key}" <% if(courseid.equals(course.get(i))){%>selected<%} i++;%>>${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                       <%i=0; %> 
                                   	</div>
                                   	
                                   	<div class="formitem">
                                   		<h5><b>Semester: <font color="tomato">*</font></b></h5>
                                       	<select class="form-control"  name="semester" id="semester" required="required">
	                                  		<option selected="selected" value="">---Select Semester---</option>
	                                  		<option <% if(sb.getSemester().equals("SEM-I")){%>selected<%} %>>SEM-I</option>
	                                     	<option <% if(sb.getSemester().equals("SEM-II")){%>selected<%} %>>SEM-II</option>
	                                    	<option <% if(sb.getSemester().equals("SEM-III")){%>selected<%} %>>SEM-III</option>
	                                     	<option <% if(sb.getSemester().equals("SEM-IV")){%>selected<%} %>>SEM-IV</option>
	                                      	<option <% if(sb.getSemester().equals("SEM-V")){%>selected<%} %>>SEM-V</option>
	                                    	<option <% if(sb.getSemester().equals("SEM-VI")){%>selected<%} %>>SEM-VI</option>
	                                    	<option <% if(sb.getSemester().equals("SEM-VII")){%>selected<%} %>>SEM-VII</option>
	                                    	<option <% if(sb.getSemester().equals("SEM-VIII")){%>selected<%} %>>SEM-VIII</option>
	                                 	</select>
                                 	</div>
                                 	
                                 	
                             	</div>
                             	<div class="row">
                             	
                             		<div class="formitem">
                             			<%i=0; %>
                                    	<h5><b>Branch: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="branch" id="branch" required="required">
                                        	<option selected="selected" value="">---Select Branch--</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}" <% if(branchid.equals(branch.get(i))){%>selected<%} i++;%>>${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                        <%i=0; %>
                                  	</div>
                                   	
                                   	<div class="formitem">
                                   		<%i=0; %>
                                   		<h5><b>Class: <font color="tomato">*</font></b></h5>
                                   		<select class="form-control"  name="class" id="class" required="required">
                                        	<option selected="selected" value="">---Select Class--</option>
                                        	<c:forEach var="cat" items="${requestScope.classname}">
                                            	<option value="${cat.key}" <% if(classid.equals(class1.get(i))){%>selected<%} i++;%>>${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   		<%i=0; %>
                                   	</div>
                              		
                             	</div>
                             	<div class="row">
                                	<div class="formitem">
                                   		<%i=0; %>
                                   		<h5><b>Section: <font color="tomato">*</font></b></h5>
                                        <select class="form-control" name="section" id="section" required="required">
                                        	<option selected="selected" value="">---Select Section--</option>
                                        	<c:forEach var="cat" items="${requestScope.sectionname}">
                                            	<option value="${cat.key}" <% if(sectionid.equals(section.get(i))){%>selected<%} i++;%>>${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                        <%i=0; %>
                                   	</div>
                                   	
                                   	
                              		<div class="formitem">
                                   		<h5><b>Roll No.:<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="rollno"  pattern="[0-9]*" placeholder="Enter Roll no.(Only Numbers [0-9])" id="rollno" required="required"/>
                                  	</div>
                              		
                                    
                             	</div>
                             	<%
                              	Date date1 = sb.getDateofadmission(); // wherever you get this from
                              	df = new SimpleDateFormat("dd/MM/yyyy");
                              	text = df.format(date1);
                              	%>
                               
                               	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Photo:<font color="tomato">*</font></b></h5>
                                   		<img src="${pageContext.servletContext.contextPath}/admin/photoservlet?studentid=<%=sb.getStudentid()+""%>" /><br/>
                                   		Change Photo: <input type="checkbox" name="changephoto" id="changephoto"><br/><br/>
                                        <input type="file" name="photo" id="photo" disabled="disabled"/>
                                  	</div>
                              		<div class="formitem">
                                   		<h5><b>Admission Date: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofadmission" required="required" value="<%=text%>">
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                                   	
                               	</div>
                               	<div class="row">
                                   	<div class="formitem">
                                   		<h5><b>Username:<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="username"  placeholder="Enter Username" id="username" required="required" value="<%=sb.getUsername()%>" disabled="disabled"/>
                                  	</div>
                             	</div>
                              	<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;">Save</button>
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