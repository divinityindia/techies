<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: ACADEMICS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/layout1.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/tableinfo.css" rel="stylesheet" type="text/css" media="all">
<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- this file for demo -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link  rel="stylesheet" type="text/css" href="css/demo.css" />
	<link  rel="stylesheet" type="text/css" href="erp/css/table.css" />
	
	<!-- Copy & paste -->
	<link rel="stylesheet" type="text/css" href="css/animate.min.css " />
	<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.min.css " />
	<link rel="stylesheet" type="text/css" href="css/tabs.css" />
	
	<!-- this is for choose your color -->
	<link rel="stylesheet" type="text/css" href="css/colors/color_1.css" id="colors-style" />
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900|Dosis:300,400,700|Oswald:300">


	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon/favicon.ico">
</head>
<body id="top">
<jsp:include page="top.jsp"/>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div id="fixed">
<div class="page_wrapper">
<div class="wrapper row3">
  <div class="rounded">
   
      <!-- main body --> 
      <!-- ################################################################################################ -->
      
        <!-- Left Column -->
     <!-- Begin HorizontalTab style 1 -->
		<section class="section-full dark-bg">

			<div class="container">

				<div class="row">

					<div class="col-md-12">
						
						<!-- Begin .HorizontalTab -->
						<div class="VerticalTab fc_VerticalTab VerticalTab_1 tabs_ver_1">
						
							<ul class="resp-tabs-list hor_1">
								<li class="tabs-1"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">H.O.D Desk</span></li>
								<li class="tabs-2"><i class="fc_icons fa fa-bullhorn"></i> <span class="tabs-text">Research And Development</span></li>
								<li class="tabs-3"><i class="fc_icons fa fa-user"></i> <span class="tabs-text">Student Development and Welfare</span></li>
								<li class="tabs-4"><i class="fc_icons fa fa-envelope"></i> <span class="tabs-text">Syllabus</span></li>
                                <li class="tabs-5"><i class="fc_icons fa fa-envelope"></i> <span class="tabs-text">Academic Calenders</span></li>
							</ul>   
							
							<div class="resp-tabs-container hor_1">
							<div class="fc-tab-1">
								<h2 class="title_contanier">HOD Details</h2>
								<div class="scroll">					
									<table class="employeeprofile" id="usertable">
										<thead>
										<tr>
											<th style="font-weight: bold;color: black;text-align: center;width:40% ">Department</th><th style="font-weight: bold;color: black;text-align: center;">H.O.D  (Click link to see H.O D profile)</th>
										</tr>
										</thead>
										<tbody id="usertablebody">
										<c:forEach var="cat" items="${hodList}">	
											<tr>
												<td>${cat.branchName}</td><td><a href="publicviewemployee?employeeid=${cat.facultyId}" target="_blank">${cat.sal} ${cat.fname} ${cat.lname}</a></td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
				                  </div>
								</div>
								<div class="fc-tab-2">
									<h2 class="title_contanier">Research and Development</h2>
								<div class="scroll">					
									<table class="employeeprofile" id="usertable">
										<thead>
										<tr>
											<th style="font-weight: bold;color: black;text-align: center;" colspan="3">Knowledge Repositories</th>
										</tr>
										<tr>
											<th style="font-weight: bold;color: black;text-align: center;width:10% ">Sr. No</th><th style="font-weight: bold;color: black;text-align: center;width:40% ">Title(Click link to see details)</th><th style="font-weight: bold;color: black;text-align: center;">Author</th>
										</tr>
										</thead>
										<tbody id="usertablebody">
										<c:forEach var="cat" items="${allKrList}" varStatus="loop">	
											<tr>
												<td style="text-align: center;">${loop.count}</td><td><a href="publicviewkr?krid=${cat.krid}&fid=${cat.fid}" target="_blank">${cat.headline}</a></td><td>${cat.sal} ${cat.fname} ${cat.lname}</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
				                  </div>
								</div>
								<div class="fc-tab-3">
									<h2 class="title_contanier">Student Development and Welfare</h2>
									<p>Page under construction...!!!</p>
								</div>
								<div class="fc-tab-4">
									<h2 class="title_contanier">Syllabus</h2>
									<p><a href="http://unipune.ac.in/university_files/syllabi.htm" target="_blank">Go to Savitribai Phule Pune University Syllabus Page</a></p>
									<br><br><br><br><br><br><br><br><br><br>
								</div>
								<div class="fc-tab-5">
									<h2 class="title_contanier">Academic Calendar</h2>
								<div class="scroll">					
									<table class="employeeprofile" id="usertable">
										<thead>
										<tr>
											<th style="font-weight: bold;color: black;text-align: center;width:10% ">Sr. No</th><th style="font-weight: bold;color: black;text-align: center;">Branch</th><th style="font-weight: bold;color: black;text-align: center;">Class</th><th style="font-weight: bold;color: black;text-align: center;">Download Academic Calender</th>
										</tr>
										</thead>
										<tbody id="usertablebody">
										<c:forEach var="cat" items="${acList}" varStatus="loop">	
											<tr>
												<td>${loop.count}</td><td>${cat.branch}</td><td>${cat.class1}</td><td><a href="downloadacademiccalender?acid=${cat.acid}" target="_blank">${cat.documentName}</a></td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
				                  </div>
								</div>
							</div>
						</div>
						<!-- End .HorizontalTab -->
					
					</div>
					
				</div>
				
			</div>

		</section>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div class="group" style="margin-top: 50px;">
        <h2 class="h2style">Quickly Find What You Are Looking For</h2>
        <h2></h2>
       	<div class="myfont">
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="http://unipune.ac.in/" target="_blank">&#9755; Savitribai Phule Pune University</a></li>
			<li><a href="https://mahaeschol.maharashtra.gov.in" target="_blank">&#9755; Samaj Kalyan(E Scholarship)</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://exam.unipune.ac.in" target="_blank">&#9755; SPPU's Online Examination Form</a></li>
          	<li><a href="#">&#9755; Anti Ragging</a></li> 
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://dte.org.in" target="_blank">&#9755; Directorate of Technical Education</a></li>
          	<li><a href="#">&#9755; Women's grievance cell</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://ropune.org.in" target="_blank">&#9755; RO DTE, Pune</a></li>
          	<li><a href="#">&#9755; Mandatory Disclosure</a></li>  
          </ul>
          <!-- ################################################################################################ --> 
        </div>
		</div>
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    
  </div>
</div>
                                 </div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<jsp:include page="bottom.jsp"/>
</div>
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>

	
</body>
</html>