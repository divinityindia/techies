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
        <title>:: Routine</title>

        <!-- Plugins css -->
       
        <!-- <link href="../assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet"> -->

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
			table.hovertable td {
				border-width: 1px;
				padding: 8px;
				border-style: solid;
				border-color: #a9c6c9;
			}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<!-- Script for Timepicker -->
		
		
		<link rel="stylesheet" href="../assets/css/wickedpicker.css">
        <script type="text/javascript" src="../assets/js/wickedpicker.js"></script>
		
        
		<script type="text/javascript">
			$(document).ready(function(){
				$('#loading').hide();
				$('#otherdetails').hide();
				$('#subject option[value!="0"]').remove();
				$('#addr').click(function() { 
					var course=$("#course").val();
		    	 	
		    	 	var branch=$("#branch").val()
		    	 	
		    	 	
					if( $.trim(course) == $.trim("---Select Course---") || $.trim(branch) == $.trim("---Select Branch---"))
						{
							alert("Please select Course and Branch");
						}
					else
						{
						$('#loading').show();
						
			            $.ajax({
			                type: "GET",
			                url: "showdropdownsubject",                
			                dataType: "json",
			                data: {"course" : course,"branch":branch},
			                success:function(data){
			                	
			                	if(data){
			                		
			                    	
			                		var subject=$("#subjectname");
			                		
			                		$.each(data, function(k, v) {
			                			 $('<option>').val(v).text(v).appendTo(subject); 
			                		  });
			                		
			                		$('#loading').hide();
			                		
			                		$('#otherdetails').show();
			    					$('#coursebranchblock').hide();
			    					
			    					$("#label1").text($("#course option:selected").text());
			    					$("#label2").text($("#branch option:selected").text());
			                    	

			                    }
			                },
			                error:function(){
			                    alert('not worked.');
			                } 

			            })
						}
					 
				});
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$('#coursebranchblock').show();
					$('#otherdetails').hide();
					$("#classname").prop("selectedIndex", 0)
					$("#sectionname").prop("selectedIndex", 0)
					$("#subjectname").prop("selectedIndex", 0)
					$("#day").prop("selectedIndex", 0)
					$('#timefrom').val("");
					$('#timeto').val("");
					$('#room').val("");
					
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
    							<div class="form_success">Schedule/Schedules deleted successfully</div>
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
                   		<form class="form-horizontal m-t-20" action="routine" method="post" id="form1">                  
               				<div>
                            	<div class="row" id="coursebranchblock">
                            	
                            	
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
                                    	<h5><b>Branch: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="branch" id="branch" required="required">
                                        	<option selected="selected">---Select Branch---</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                        <div style="float: right;padding-left: 5px" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
                                  		<input type="hidden" value="add" name="action">
                                  	</div>
                                  	<div class="formitem">
                                  		<button type="button" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;" id="addr">Add Routines</button>
                               		</div>
                               	</div>
                               	<div id="otherdetails">
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b><font color="green">Add Routines for <span id="label1"></span>&nbsp;::&nbsp;Branch:&nbsp;<span id="label2"></span></font></b></h5>
                                	</div>
                              		<div class="formitem">
                                   	</div>
                              	</div>
                              	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Class: <font color="tomato">*</font></b></h5>
                                   		<select class="form-control"  name="classname" id="classname" required="required">
                                        	<option selected="selected" value="">---Select Class--</option>
                                        	<c:forEach var="cat" items="${requestScope.classname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                              		<div class="formitem">
                                   		<h5><b>Section: <font color="tomato">*</font></b></h5>
                                        <select class="form-control" name="sectionname" id="sectionname" required="required">
                                        	<option selected="selected" value="">---Select Section--</option>
                                        	<c:forEach var="cat" items="${requestScope.sectionname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                              	</div>
                                <div class="row">
                                	<div class="formitem">
                                		<h5><b>Subject Name: <font color="tomato">*</font></b></h5>
                                  		<select class="form-control"  name="subjectname" id="subjectname" required="required">
                                  			<option selected="selected" value="">---Select Subject---</option>
                                  		</select>
                               		</div>
                                	<div class="formitem">
                                   		<h5><b>Day: <font color="tomato">*</font></b></h5>
                                  		<select class="form-control"  name="day" id="day" required="required">
                                  			<option value="">---Select Day---</option>
                                  			<option value="Monday">Monday</option>
                                  			<option value="Tuesday">Tuesday</option>
                                  			<option value="Wednesday">Wednesday</option>
                                  			<option value="Thursday">Thursday</option>
                                  			<option value="Friday">Friday</option>
                                  			<option value="Saturday">Saturday</option>
                                  			<option value="Sunday">Sunday</option>
                                  		</select>
                                   	</div>
                               	</div>
                              	<div class="row">
                                	<div class="formitem">
                                    	<h5><b>Time From: <font color="tomato">*</font></b></h5>
                                    	<div class="input-group bootstrap-timepicker timepicker">
                                        <input type="text" class="form-control"  name="timefrom" id="timefrom"  placeholder="Time from" class="timepicker1" required="required"/>
                                    	<span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                    	</div>
                                    </div>
                                	<div class="formitem">
                                    	<h5><b>Time To: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="timeto" id="timeto"  placeholder="Time to" class="timepicker2" required="required"/>
                                    </div>
                              	</div>
                                <div class="row">    
                                	<div class="formitem">
                                    	<h5><b>Room: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="room" id="room"  placeholder="Enter room no." required="required"/>
                                    </div>
                                	<div class="formitem">
                                    	<button type="reset" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;margin-left: 20px" id="resetbutton" form="#form1">Reset</button>
                                    	<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;" id="addeditbutton">Add Routine</button>
                                    </div>
                              	</div>
                              </div>
                              	
                             </div>
                        </form>
                    </div>
                    <hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;"/>
                    
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
<!--      	<script src="../assets/plugins/timepicker/bootstrap-timepicker.js"></script> -->
<!--      	<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script> -->
<!--      	<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script> -->
<!--      	<script src="../assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script> -->
<!--      	<script src="../assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> -->

        <!-- App core js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>

        <!-- page js -->
<!--         <script src="../assets/pages/jquery.form-pickers.init.js"></script> -->

    </body>
</html>