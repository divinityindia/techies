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
        <title>:: Exam Master</title>

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
			table.hovertable td {
				border-width: 1px;
				padding: 8px;
				border-style: solid;
				border-color: #a9c6c9;
			}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
			
				$("#addeditbutton").text("Add Exam")
				$("#formactionadd").val("add");
				
				//Delete button function
				$('.examid').change(function() { 
 				    if ($('.examid:checked').length) { 
 				        $('#deleteButton').removeAttr('disabled'); 
 				    } else { 
 				        $('#deleteButton').attr('disabled', 'disabled'); 
				    } 
 				});
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$('#examname').val("");
					$('#datepicker').val("");
					$('#note').val("");
					$("#addeditbutton").text("Add Exam")
					$("#formactionadd").val("add");
 				}); 
				
				//editlink onclick function
				
				$('.editlink').click(function() { 
					
					var $this = $(this);
		            var examid = $this.data('p1');
		            var examname= $this.data('p2'); 
		            var doe = $this.data('p3'); 
		            
		            var formattedDate = new Date(doe);
		            var d = formattedDate.getDate();
		            var m =  formattedDate.getMonth();
		            m += 1;  // JavaScript months are 0-11
		            var y = formattedDate.getFullYear();

		            var dateofexam= d + "/" + m + "/" + y;
		            
		            var note = $this.data('p4');
		            $("#eid").val(examid);
					$('#examname').val(examname);
					$('#datepicker').val(dateofexam);
					$('#note').val(note);
					$("#addeditbutton").text("Save");
					$("#formactionadd").val("edit");
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
    							<div class="form_success">Exam/Exams deleted successfully</div>
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
                   		<form  class="form-horizontal m-t-20" action="addexam" method="post" id="form1">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                    	<input type="hidden" name="eid" id="eid" value=""/>
                                    	<h5><b>Exam Name: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="examname" id="examname"  placeholder="Enter Exam name" required="required" value=""/>
                                    </div>
                                   	<div class="formitem">
                                   		<h5><b>Date of Exam: <font color="tomato">*</font></b></h5>
                                        	<div class="input-group">
                                            	<input type="text" class="form-control" placeholder="mm/dd/yyyy" name="dateofexam"  placeholder="Enter Date of Exam" id="datepicker" required="required">
                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                            </div>
                                   	</div>
                              	</div>
                                <div class="row">
                                	<div class="formitem">
                                    	<h5><b>Note: <font color="tomato">*</font></b></h5>
                                        <input type="text" class="form-control"  name="note" id="note"  placeholder="Note if any" required="required"/>
                                    </div>
                                	<div class="formitem">
                                    	<input type="hidden" name="formaction" id="formactionadd" value="add"/>
                                    </div>
                              	</div>
                                <div class="row">
                                	<div class="formitem">
                                    	<button type="reset" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;margin-left: 20px" id="resetbutton" form="#form1">Reset</button>
                                    	<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;" id="addeditbutton">Add Exam</button>
                                    </div>
                                </div>
                             </div>
                       	</form>
                    </div>
                    <hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;"/>
                    <div class="row">
                   		<form  class="form-horizontal m-t-20" action="addexam" method="post" id="form2">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                		<!-- Table goes in the document BODY -->
										<table class="hovertable">
											<tr>
												<th>Exam ID</th><th>Exam Name</th><th>Date of Exam</th><th>Note</th><th>Delete Exam</th><th>Edit Exam</th>
											</tr>
											
											<c:forEach var="cat" items="${requestScope.exambeans}">
                                            	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
													<td>${cat.examId}</td><td>${cat.examName}</td><td>${cat.dateofexam}</td><td>${cat.note}</td><td><input type="checkbox" name="examid" value="${cat.examId}" class="examid"/></td><td><a href="javascript:;" data-p1="${cat.examId}" data-p2="${cat.examName}" data-p3="${cat.dateofexam}" data-p4="${cat.note}" class="editlink">Edit</a></td>
												</tr>
                                            </c:forEach>
										</table>
										<button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: left;" id="deleteButton" disabled="disabled">Delete Exam</button>
										<input type="hidden" name="formaction" value="delete"/>
                               		</div>
                               		
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