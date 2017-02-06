<!DOCTYPE html>
<%@page import="Model.GetListItemDao"%>
<%@page import="java.util.HashMap"%>
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
        <title>:: Show Student List</title>

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
        <style type="text/css">
			table.hovertable {
				font-family: verdana,arial,sans-serif;
				font-size:11px;
				color:#333333;
				border-width: 1px;
				border-color: #999999;
				border-collapse: collapse;
			}
			table.hovertable th {
				background-color:#c3dde0;
				border-width: 1px;
				padding: 8px;
				border-style: solid;
				border-color: #a9c6c9;
			}
			table.hovertable tr {
				background-color:#d4e3e5;
			}
			
			
			table.hovertable td{
				border-width: 1px;
				padding: 8px;
				border-style: solid;
				border-color: #a9c6c9;
			}
			
			a.ex2:hover, a.ex2:active {font-size: 150%;color:red;}
			
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
			
				$('#listblock').hide();
				$('#loading').hide();
				
				//ajax call On branch change function
				
				$("#branch").change(function(event){
					
					var course1=$("#course").text();
				   	var semester1=$("#semester").text();
				  	var branch1=$("#branch").text()
					if($.trim(course1) == $.trim("---Select Course---") && $.trim(semester1) == $.trim("---Select Semester---"))
					{
						alert("Please select Course and Branch");
					}
					else
					{
						var course=$("#course").val();
					   	var semester=$("#semester").val();
					  	var branch=$("#branch").val()
						$('#student option[value!="0"]').remove();
			    	 	$("#myTable").find("tr:gt(0)").remove();
			    	 	$("#loading").show();
			    	 	$.ajax({
			                type: "POST",
			                url: "showstudentlist",                
			                dataType: "json",
			                data: {"course" : course,"semester":semester,"branch":branch},
			                success:function(data){
			                	
			                	if(data){
			                		var c=1;
			                		
			                		
			                		$.each(data, function (i, item) {
//		 	                            var classid=item.classId;
//		 	                            var branchid=item.branchId;
//		 	                            var sectionid=item.sectionId;
//		 	                            var courseid=item.courseId;
			                			
			                        	$('#myTable tbody').append('<tr class="trow"><td>'+c+'</td><td title="Click to generate ID Card"><a href="generateid?studentid='+item.studentid+'&studentname='+item.studentName+'&classid='+item.classId+'&sectionid='+item.sectionId+'&branchid='+item.branchId+'&courseid='+item.courseId+'" class="ex2" target="_blank">'+item.rollno+'</a></td><td><img src="photoservlet?studentid='+item.studentid+'"></td><td>'+item.studentName+'</td><td>'+item.prnno+'</td><td>'+item.guardianName+'</td><td>'+item.gender+'</td><td>'+item.dateofbirth+'</td><td>'+item.bloodgroup+'</td><td>'+item.religion+'</td><td>'+item.caste+'</td><td>'+item.email+'</td><td>'+item.phone+'</td><td>'+item.address+'</td><td>'+item.city+'</td><td>'+item.state+'</td><td>'+item.dateofadmission+'</td><td>'+item.academicyear+'</td></tr>');
			     							                   	
			                        	c++;
			                        });
			                        
			                        
			                        
			                        $(".trow").mouseenter(function() {
			                            $(this).css("backgroundColor","#ffff66");
			                        }).mouseleave(function() {
			                             $(this).css("backgroundColor","#d4e3e5");
			                        });
			                        
			                		$('#loading').hide();
			                		$('#listblock').show();
			                    	
			                    	
			
			                    }
			                },
			                error:function(){
			                	$('#loading').hide();
			                    alert('Error....Please try again');
			                    
			                } 
			
			            })		
					}
					
	    	 	  
	    	 });
				
				
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$("#course").prop("selectedIndex", 0)
					$("#semester").prop("selectedIndex", 0)
					$("#branch").prop("selectedIndex", 0)
					
 				}); 
				
			
 			}); 
		</script> 
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
  							<c:when test="${param.success eq 2}">
    							<div class="form_success">Subject/Subjects deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Error please try again!</div>
  							</c:when>
  							<c:when test="${param.success eq 4}">
    							<div class="form_success">Edit Successful</div>
  							</c:when>
  							<c:when test="${param.success eq 5}">
    							<div class="form_success">Edit failed</div>
  							</c:when>
  						</c:choose>
                    <div class="row">
                   		<form  class="form-horizontal m-t-20" action="addsubject" method="post" id="form1">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                		<h5><b>Course: <font color="tomato">*</font></b></h5>
                                  		<select class="form-control"  name="course" id="course" required="required">
                                  			<option selected="selected">---Select Course---</option>
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
                                 	<div class="formitem">
                                		<h5><b>Branch: <font color="tomato">*</font></b></h5>
                                  		<select class="form-control"  name="branch" id="branch" required="required">
                                  			<option selected="selected">---Select Branch---</option>
                                  			<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
										</select>
										<div style="float: right;padding-left: 5px" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
                               		</div>
                               	</div>
                              	<button type="reset" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;margin-right: 90px" id="resetbutton" form="#form1">Reset</button>
                             </div>
                       	</form>
                    </div>
                    <hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;"/>
                    <div class="row" id="listblock">
                   		                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                	
                                	<!-- HTML Example by Way2Tutorial.com -->
										<div style="height:auto;width:1000px;border:solid 2px orange;overflow:scroll;overflow-y:hidden;overflow-x:scroll;">
										<table id="myTable" class="hovertable">
											<thead>
												<tr>
											   		<th>Sr. No.</th><th>Roll No.(Click to print ID Card)</th><th>Photo</th><th>Student Name</th><th>PRN No.</th><th>Guardian Name</th><th>Gender</th><th>Date of Birth</th><th>Blood Group</th><th>Religion</th><th>Caste</th><th>Email</th><th>Phone</th><th>Address</th><th>City</th><th>State</th><th>Date of Admission</th><th>Academic Year</th>
											    </tr>
											</thead>
											
											<tbody style="overflow-y: scroll; overflow-x: scroll;">
												
											</tbody>
											
										</table>
										</div>
									</div>
									</div>
                               		
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