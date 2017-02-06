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
        <title>:: Add Parent</title>

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
			$('#loading').hide();
			$('#parentblock').hide();
		 
			$("#student").change(function(event){
				
				$('#parentblock').hide();
				$('#loading').show();
				var student = $( 'option:selected', this ).val();
				$.ajax({
					type:"GET",
					url: "addparentcheck",
					datatype: "json",
					data: {"student" : student},
					success:function(data){
						
						if(data.parentid!=0)
						{
							alert('Parent already exist for the selected Student');
							$("#student").prop("selectedIndex", 0)
							$('#loading').hide();
						}
						else
						{
							$('#loading').hide();
							$('#parentblock').show();
						}
						
					},
					 error:function(){
		                 alert('not worked.');
		             } 
		
				});
				
				
			});
		    $("#branch").change(function(event){
		    	 	$("#loading").show();
		    	 	var course=$("#course").val();
		    	 	var semester=$("#semester").val();
		    	 	var branch=$("#branch").val()
		            $.ajax({
		                type: "GET",
		                url: "showdropdownstudent",                
		                dataType: "json",
		                data: {"course" : course,"semester":semester,"branch":branch},
		                success:function(data){
		                	
		                	if(data){
		                		
		                    	
		                		var student=$("#student");
		                		
		                		var student=$("#student").prop( "disabled", false );
		                		$.each(data, function(k, v) {
		                			 $('<option>').val(k).text(v).appendTo(student); 
		                		  });
		                		
		                		$('#loading').hide();
		                		
		                		
		                    	
		                    	
		
		                    }
		                },
		                error:function(){
		                    alert('not worked.');
		                } 
		
		            })  
		    	 	
		    	 	
		    	 	
		    	 	
		                 
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
  						</c:choose>
                    <div class="row">
                   		<form  class="form-horizontal m-t-20" action="addparent" method="post" enctype="multipart/form-data">                  
               				<div>
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
                                        <select class="form-control"  name="branch" id="branch" required="required" onchange="getStudent(this.selectedIndex);">
                                        	<option selected="selected" value="">---Select Branch--</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                  	</div>
                                  	<div class="formitem">
                                    	<h5><b>Student Name: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="student" id="student" required="required" disabled="disabled">
                                        	<option selected="selected" value="">---Select Student--</option>
                                        	
                                        </select>
                                        <div style="float: right;padding-left: 5px" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
                                  	</div>
                             	</div>
                             	
                             	<div id="parentblock">
                             	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Gurdian Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="guardianname" id="gurdianname"  placeholder="Enter Gurdian name" required="required"/>
                                    </div>
                                   	<div class="formitem">
                                    	<h5><b>Father Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="fathername" id="fathername"  placeholder="Enter father name" required="required"/>
                                    </div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Mother Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="mothername" id="mothername"  placeholder="Enter mother name" required="required"/>
                                    </div>
                                   	<div class="formitem">
                                    	<h5><b>Father Profession: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="fatherprofession" id="fatherprofession"  placeholder="Enter profession" required="required"/>
                                    </div>
                              	</div>
                              	<div class="row">
                              		<div class="formitem">
                                    	<h5><b>Mother Profession: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="motherprofession" id="motherprofession"  placeholder="Enter profession" required="required"/>
                                    </div>
                                   	<div class="formitem">
                                   		<h5><b>Email ID<font color="tomato">*</font></b></h5>
                                        <input type="email" class="form-control" name="email"  placeholder="Enter Email ID" id="email" required="required"/>
                                  	</div>  	
                             	</div>
                               	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Phone<font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control" name="phone"  placeholder="Enter Phone no." id="phone" required="required"/>
                                  	</div>
                                  	<div class="formitem">
                                   		<h5><b>Address<font color="tomato">*</font></b></h5>
                                        <textarea class="form-control" name="address"  placeholder="Enter address" id="address" required="required"></textarea>
                                  	</div>
                              	</div>
                             	<div class="row">
                              		<div class="formitem">
                                    	<h5><b>City: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="city" id="city"  placeholder="Enter city name " id="branch"/>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>State: <font color="tomato">*</font></b></h5>
                                       	<input type="text" class="form-control"  name="state" id="state"  placeholder="Enter state " />
                                   	</div>
                             	</div>
                             	<div class="row">
                                   	<div class="formitem">
                                   		<h5><b>Photo:<font color="tomato">*</font></b></h5>
                                        <input type="file" name="photo" id="photo" required="required"/>
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
                             	</div>
                             	
                              	<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;">Add Parent</button>
                          		</div>
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