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
        <title>Ubold - Responsive Admin Dashboard Template</title>

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

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizr.min.js"></script>
      
        <script src="../js/showdropdownstudent.js"></script>
        
        <script>
     function showDropDown(){
		 var links = "";
		 var count = 0;
		 // Get the options from the hidden control
		   $options = $('#selectOptions option');
			$options.each(function(i, val) {	
				$option = $(this) ;
                                var tx=$option.text().replace(/~~~/g,"<br>"); 
				links = links 
					+ "<div class=\"optionDiv\" onclick=\"setSelectedOption('"+ $option.val() + "');\">" +"<b><font color=\"brown\">"+(count+1)+". </font></b> " + tx+ "</div>";
				count++; 
			});

			
			// Generate the dvi based select control
			$dropDownDiv = $("#dropDownOptions");
			$dropDownDiv.html(links);
			$dropDownDiv.show();
			
			// Add a scroll bar if required
			if(count > 4){
				$dropDownDiv.addClass("scrollDiv");
			}
                        
	}

	function setSelectedOption(val)
        {   
                $('#load2').show();
		$("#dropDownOptions").hide();
		//$("#dropDown").val(text);
                if(chk(val)==true)
                {
                    $('#selectOptions').val(val);
                    addItem(val);
                }

	}
        

$(document).click(function(e) {

  if( e.target.id != 'dropDown') {//alert(e.target.id);
    $("#dropDownOptions").hide();
  }

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
                          
                            <div class="row">
                                 <form  class="form-horizontal m-t-20" action="EditSelectedStudent" method="post">   
                                        
               <div>
                                   <div class="row">
                                       
                                       
                                         <div style="width: 40%;float: left;margin-left: 80px;margin-top: 15px;">
                                            <h5><b>Branch Code: <font color="tomato">*</font></b></h5>
                                            <select class="form-control" onchange="showItem()"  name="studentname" id="itm"   >
                                             <option></option>
                                                   <c:forEach var="cat" items="${requestScope.studentname}">
                                                   <option>${cat[1]}</option>
                                                   </c:forEach>
                                                
                                               </select>
                                             <div style="float: right;padding-left: 5px"> <img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display: none"/></div>
                                         </div>
                                         <div style="width: 40%;float: right;margin-right: 80px;margin-top: 15px;">
                                            <h5><b>Student Name: <font color="tomato">*</font></b></h5>
                                          <select class="form-control"  name="studentitle" id="branchname"   >
                                                 
                                                
                                               </select>
<!--                                            <input id="dropDown" readonly="readonly" class="dropDown" style="cursor: default;width:100%;"
                                                onclick="showDropDown();" value="-- Select Category --">-->
                                         </div>
                                        
                                    
                                    </div>
                                                  
                                                  <button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;">NEXT</button>
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