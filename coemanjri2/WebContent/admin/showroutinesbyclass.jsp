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
        <title>:: Show Routine By Class</title>

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
								
				//Reset button function
				$('#resetbutton').click(function() { 
					$("#classname").prop("selectedIndex", 0)
					$("#branche").prop("selectedIndex", 0)
					$("#course").prop("selectedIndex", 0)
					
 				});
				
				//ajax call te fetch
				
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
                   		                  
               				<div>
                            	<div class="row">
                            		<div class="formitem">
                            		</div>
                            		<div class="formitem">
                            		</div>
                            	</div>
                            	<div class="row">
                            	
                                	<div class="formitem">
                                	
                                		<c:forEach var="cat" items="${requestScope.sectionname}">
                                            <h5><b>Section: <font color="tomato">cat.values</font></b></h5>
                                            <table class="hovertable">
<!-- 											<tr> -->
<!-- 												<th>Day</th><th>Subject</th><th>From Time</th><th>To Time</th><th>Room</th> -->
<!-- 											</tr> -->
											<tr>
												<div style="height:20px;width: 25px;background: yellow;float: left;margin-left: 5px">
													Sub1
												</div>
												<div style="height:20px;width: 25px;background: yellow;float: left;margin-left: 5px">
													Sub1
												</div>
												<div style="height:20px;width: 25px;background: yellow;float: left;margin-left: 5px">
													Sub1
												</div>
											</tr>
<%-- 											<c:forEach var="cat" items="${requestScope.bean}"> --%>
<!--                                             	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<%-- 													<td>${bean.day}</td><td>${bean.subject}</td><td>${bean.timeFrom}</td><td>${bean.timeTo}</td><td>${bean.room}</td> --%>
<!-- 												</tr> -->
<%--                                             </c:forEach> --%>
										</table>
                                        </c:forEach>
									</div>
									<div class="formitem">
										<table class="hovertable">
									<tr>
												<div class="routineBox">
													<p class="textcolor">Hii</p>
													<p class="textcolor">Hello World</p>
												</div>
												<div class="routineBox">
													<p class="textcolor">Hii</p>
													<p class="textcolor">Hello World</p>
												</div>
												<div class="routineBox">
													<p class="textcolor">Hii</p>
													<p class="textcolor">Hello World</p>
												</div>
											</tr>
											
										</table>
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