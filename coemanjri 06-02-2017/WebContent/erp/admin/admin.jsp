<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: ADMIN</title>
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<jsp:include page="admintop.jsp"/>
    <div id="wrapper">
        <div id="movable">
        <div id="contentliquid">

				<div id="content">
					<div class="count_block">
						<div class="count_info"
							style="background: url('../../images/demo/teachers.jpg'); background-repeat: no-repeat;">
							<div class="count_number" id="stdct"></div>
							<p style="font-size: large; color: #FFFFFF; font-weight: bold;">Students</p>
							<p style="font-size: small;; color: #FFFFFF; font-weight: bold;">Total
								Students</p>
						</div>
						<div class="count_info"
							style="background: url('../../images/demo/students.jpg'); background-repeat: no-repeat;">
							<div class="count_number" id="tcrct"></div>
							<p style="font-size: large; color: #FFFFFF; font-weight: bold;">Teachers</p>
							<p style="font-size: small;; color: #FFFFFF; font-weight: bold;">Total
								Employees</p>
						</div>
						<div class="count_info"
							style="background: url('../../images/demo/parents.jpg'); background-repeat: no-repeat;">
							<div class="count_number" id="prtct"></div>
							<p style="font-size: large; color: #FFFFFF; font-weight: bold;">Parents</p>
							<p style="font-size: small;; color: #FFFFFF; font-weight: bold;">Total
								Parents</p>
						</div>
						<div class="count_info"
							style="background: url('../../images/demo/attendance.jpg'); background-repeat: no-repeat;">
							<div class="count_number" id="atdct"></div>
							<p style="font-size: large; color: #FFFFFF; font-weight: bold;">Attendance</p>
							<p style="font-size: small;; color: #FFFFFF; font-weight: bold;">Total
								Attendance Recorded</p>
						</div>
						<p class="button"><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
					</div>
					
					
					<div class="dashboard">
						<c:if test = "${right.addemployee==true}"><a href="addemployee.jsp" class="dash_btns"><img src="../images/admissions.PNG" height="70" width="70"/><br>New Employee Entry</a></c:if>
						<c:if test = "${right.updateemployee==true}"><a href="usearchemployee.jsp" class="dash_btns"><img src="../images/admissions.PNG" height="70" width="70"/><br>Update Employee</a></c:if>
						<c:if test = "${right.searchemployee==true}"><a href="searchemployee.jsp" class="dash_btns"><img src="../images/admissions.PNG" height="70" width="70"/><br>Search Employee</a></c:if>
						<c:if test = "${right.user==true}"><a href="adddepartment" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage Departments</a></c:if>
					</div>
					<div class="dashboard">
						
						<c:if test = "${right.user==true}"><a href="createuser" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage Users</a></c:if>
						<c:if test = "${right.access==true}"><a href="accessrightsadmin.jsp" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage Access Rights</a></c:if>
						<c:if test = "${right.news==true}"><a href="news" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage News</a></c:if>
						<c:if test = "${right.event==true}"><a href="event" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage Events</a></c:if>
						<!-- <a href="#" class="dash_btns"><img src="../images/reports.png" height="70" width="70"/><br>Generate Reports</a> -->
					</div>
					<div class="dashboard">
						
						
						<c:if test = "${right.gallery==true}"><a href="photogallery.jsp" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Photogallery</a></c:if>
						<c:if test = "${right.gallery==true}"><a href="virtualtour.jsp" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Virtual Tour</a></c:if>
						<c:if test = "${right.academiccalender==true}"><a href="addacademiccalender" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Academic Calender</a></c:if>
					</div>
					<div class="dashboard">
						
					</div>
				</div>
				<div id="footer">
           <div id="copyright" class="clear"> 
    			<p style="float: left;">Copyright &copy; 2016 - All Rights Reserved - <a href="#">College of Engineering, Manjari</a></p>    
    			<p style="float: right;">Designed and Developed by <a target="_blank" href="#">Techdivinity</a></p>
  			</div>
        </div>
        </div>
    </div>
    </div>
    <script src="../js/admin.js"></script>
</body>
</html>
