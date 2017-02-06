<!DOCTYPE html>
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
								Teachers</p>
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
						<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
					</div>
					
					<div class="dashboard">
						<a href="addstudent.jsp" class="dash_btns"><img src="../images/admissions.PNG" height="70" width="70"/><br>New Student Entry</a>
						<a href="#" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage Users</a>
						<a href="#" class="dash_btns"><img src="../images/reports.png" height="70" width="70"/><br>Generate Reports</a>
					</div>
					<div class="dashboard">
						<a href="addemployee.jsp" class="dash_btns"><img src="../images/admissions.PNG" height="70" width="70"/><br>New Employee Entry</a>
						<a href="#" class="dash_btns"><img src="../images/attendance.png" height="70" width="70"/><br>Student Attendance</a>
						<a href="#" class="dash_btns"><img src="../images/manageusers.png" height="70" width="70"/><br>Manage Users</a>
						<a href="#" class="dash_btns"><img src="../images/reports.png" height="70" width="70"/><br>Generate Reports</a>
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
