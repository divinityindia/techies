<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Bean.TeacherBean"%>
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
        <title>:: Edit Selected Teacher</title>

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
        <script type="text/javascript">
$(document).ready(function() {
	
	$('#changephoto').change(function() {
	    $('#photo').attr('disabled', !this.checked);
	    $('#photo').attr('required', this.checked);
	});
});
</script>
       
    </head>


    <body>

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>

<%!
TeacherBean tb=new TeacherBean();
int i;

%>
<%
	tb=(TeacherBean)session.getAttribute("teacherBean");
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
                   		<form  class="form-horizontal m-t-20" action="editselectedteacher" method="post" enctype="multipart/form-data">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="teachername" id="teachername"  placeholder="Enter teacher name" required="required" value="<%=tb.getTeacherName()%>"/>
                                    </div>
                                   	<div class="formitem">
                                        <h5><b>Designation: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="designation"  placeholder="Enter Designation" id="designation" required="required" value="<%=tb.getDesignation()%>"/>
                                    </div>
                              	</div>
                              	<%
                              	Date date = tb.getDateOfBirth(); // wherever you get this from
                              	DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
                              	String text = df.format(date);
                              	%>
                              	<div class="row">
                                	<div class="formitem">
                                   		<h5><b>Date of Birth: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofbirth"  placeholder="Enter Date of Birth" id="datepicker" required="required" value=<%=text %>>
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>Gender: <font color="tomato">*</font></b></h5>
                                        <input type="radio" name="gender" value="male" style="display: inline" required="required" <% if(tb.getGender().equals("male")){%>checked<%} %>/>Male
                                        <input type="radio" name="gender" value="female" style="display: inline" required="required" <% if(tb.getGender().equals("female")){%>checked<%} %>/>Female
                                  	</div>
                              	</div>
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Religion: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="religion" id="religion" required="required">
                                     		<option selected="selected" value="">---Select Religion---</option>
                                     		<option <% if(tb.getReligion().equals("Hindu")){%>selected<%} %>>Hindu</option>
                                           	<option <% if(tb.getReligion().equals("Muslim")){%>selected<%} %>>Muslim</option>
                                           	<option <% if(tb.getReligion().equals("Christan")){%>selected<%} %>>Christan</option>
                                           	<option <% if(tb.getReligion().equals("Buddha")){%>selected<%} %>>Buddha</option>
                                           	<option <% if(tb.getReligion().equals("Jain")){%>selected<%} %>>Jain</option>
										</select>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>Caste <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="caste"  placeholder="Enter Caste" id="caste" required="required" value="<%=tb.getCaste()%>"/>
                                  	</div>   	
                             	</div>
                               	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Email ID<font color="tomato">*</font></b></h5>
                                        <input type="email" class="form-control" name="email"  placeholder="Enter Email ID" id="email" required="required" value="<%=tb.getEmail()%>"/>
                                  	</div>
                              		<div class="formitem">
                                   		<h5><b>Phone<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="phone"  placeholder="Enter Phone no." id="phone" required="required" value="<%=tb.getPhone()%>"/>
                                  	</div>
                             	</div>
                             	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Address<font color="tomato">*</font></b></h5>
                                        <textarea class="form-control" name="address"  placeholder="Enter address" id="address" required="required"><%=tb.getAddress()%></textarea>
                                  	</div>
                              		<div class="formitem">
                                    	<h5><b>City: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="city" id="city"  placeholder="Enter city name"  value="<%=tb.getCity()%>"/>
                                   	</div>
                             	</div>
                             	<%
                               		String classid=tb.getClassId()+"";
                               		
                               		
                               		HashMap<String,String> map=(HashMap<String,String>)request.getAttribute("classname");
                               		Set<String> s=map.keySet();
                               		ArrayList class1 = new ArrayList(s);
                             	%>
                             	<div class="row">
                                   	<div class="formitem">
                                    	<h5><b>State: <font color="tomato">*</font></b></h5>
                                       	<input type="text" class="form-control" name="state" id="state" placeholder="Enter state"  value="<%=tb.getState()%>"/>
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
                             	<%
                              	Date date1 = tb.getDateofjoining(); // wherever you get this from
                              	df = new SimpleDateFormat("dd/MM/yyyy");
                              	text = df.format(date1);
                              	%>
                             	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Date of Joining: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofjoining" required="required" value="<%=text%>">
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                             		<div class="formitem">
                                   		<h5><b>Photo:<font color="tomato">*</font></b></h5>
                                   		<img src="${pageContext.servletContext.contextPath}/admin/photoservletteacher?teacherid=<%=tb.getTeacherid()+""%>" /><br/>
                                   		Change Photo: <input type="checkbox" name="changephoto" id="changephoto"><br/><br/>
                                        <input type="file" name="photo" id="photo" disabled="disabled"/>
                                  	</div>
                             	</div>
                             	<div class="row">
                                   	<div class="formitem">
                                   		<h5><b>Username:<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="username"  placeholder="Enter Username" id="username" required="required" value="<%=tb.getUsername()%>" disabled="disabled"/>
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