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
       <link href="../assets/plugins/custombox/dist/custombox.min.css" rel="stylesheet">
        
        <link href="../assets/plugins/custombox/dist/custombox.min.css" rel="stylesheet">
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
                       <c:when test= "${sessionScope.msg1=='SUCCESS'}">
                           <script>alert('success');</script>
                            <a id="linkForPopUp" href="#success-modal"  data-animation="fadein" data-plugin="custommodal" 
                                   data-overlaySpeed="200" data-overlayColor="#36404a" ></a>
                            
                        </c:when>
                        <c:when test= "${sessionScope.msg1=='ERROR'}">
                              <script>alert('error');</script>
                            <a id="linkForPopUp" href="#error-modal"  data-animation="fadein" data-plugin="custommodal" 
                                   data-overlaySpeed="200" data-overlayColor="#36404a" ></a>
                        </c:when>
                        <c:otherwise>
                              
                        </c:otherwise>
                    </c:choose>
                        <c:remove var="msg1" scope="session"/>
                            <div class="row">
                                
                                  <form  class="form-horizontal m-t-20" action="AddBook" method="post" >   
                                        
               <div>
                                            <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Book Title: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="booktitle" id=studentname"  placeholder="Enter Book name" id="town"/>
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>Author: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control" name="author"  placeholder="Enter Author Name" id="prnno"/>
                                        </div>
                                    </div>
                                            
                                       <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Publisher: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="publisher" id="admissiondate"  placeholder="Enter  Publisher Info" id="town"/>
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>Book Number: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control" name="booknumber"  placeholder="Enter Book Number" id="admissionyear"/>
                                        </div>
                                    </div>
                                            
                                              <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Account Number: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="accountnumber" id="passoutyear"  placeholder="Enter Account Number " iyeard="passoutyear"/>
                                        </div>
                                        <div style="width: 49%;float: right;margin-top: 15px;">
                                            <h5><b>Source: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="source" id="company"  placeholder="Enter Source Info " id="branch"/>
                                        </div>
                                    </div>
                                                  
                                         <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Branch: <font color="tomato">*</font></b></h5>
                                             <select class="form-control"  name="branchname" id="branchname"   >
                                                   <c:forEach var="cat" items="${requestScope.branchname}" >
                                                   <option value="${cat.key}">${cat.value}</option>
                                                   </c:forEach>
                                                
                                               </select>
                                            
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>Pages: <font color="tomato">*</font></b></h5>
                                           <input type="text" class="form-control"  name="pages" id="passoutdate"  placeholder="Enter Number Of Pages  " />
                                        </div>
                                    </div>
                                                  
                                       <div class="row">
                                           <div style="width: 49%;float: right">
                                             <h5><b>Publication Year: <font color="tomato">*</font></b></h5>
                                            
                                     <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="mm/dd/yyyy" name="publicationdate" id="datepicker" >
                                                        <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                                    </div><!-- input-group -->
                                        </div>
                                        
                                        <div style="width: 49%;float: left">
                                             <h5><b>Price: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control"  name="price" id="city"  placeholder="Enter Price " id="branch"/>
                                        </div>
                                    </div>
                                
                       
                                                  
                                                  <button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;">Submit</button>
                                            </div>
                                    </form>
                            </div>
                     <div id="success-modal" class="modal-demo">
                        <h4 class="custom-modal-title"></h4>
                        <br><br>
                        <img src="../icon/done32.png"/> <b><font color="green">Task Created Successfully.</font></b><br><br>
                        <button type="button" onclick="Custombox.close();" class="btn btn-default waves-effect waves-light">   OK   </button><br><br>
                </div>
                <div id="error-modal" class="modal-demo" >
                        <h4 class="custom-modal-title"></h4>
                        <br><br>
                        <img src="../icon/Error-32.png"/> <b><font color="red">Something Went Wrong. Try Again.</font></b><br><br>
                        <button type="button" onclick="Custombox.close();" class="btn btn-default waves-effect waves-light">   OK   </button><br><br>
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

        
         
                
                <script src="../assets/plugins/custombox/dist/custombox.min.js"></script>
       
        
        <!-- App core js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>

        <!-- page js -->
        <script src="../assets/pages/jquery.form-pickers.init.js"></script>

    </body>
</html>