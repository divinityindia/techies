<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Top Page</title>
<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="shortcut icon" type="image/x-icon" href="../../images/favicon.ico">
</head>
<body>
	<jsp:include page="admUserChk.jsp"/>
    <div id="wrapper">
    	<div id="fixed">
        <div id="header">
            <!-- <div id="flogo">
    			<img src="../../images/l3.png"/>	
     		</div>
  			<div id="llogo">
    			<img src="../../images/logo.jpg"/>	
    		</div> -->
    		<div id="flogo">
    			<img src="../../images/logon.jpg"/>	
    		</div>
  			<div id="llogo">
    			<img src="../../images/l3.png"/>	
    		</div>
    		<div id="mtext">	
		      <p id="tophead">PUNE DISTRICT EDUCATION ASSOCIATION'S</p>
		      <p id="middlehead">COLLEGE OF ENGINEERING</p>
		      <p id="bottomhead">Manjari (BK), Pune - 412307(Maharashtra) India</p>
		      <p id="bbhead">(Approved by AICTE, New Delhi No. 740-89-316 E/ET/98</p>
		      <p id="bbhead">Affiliated to Savitribai Phule Pune University, Pune | DTE Code: 6206 | Pune Uni. Code: 4026(Engg.) 1223(MBA)</p>
  			</div>
        </div>
        
        <div id="navigation">
        
            <nav id="mainav"> 
      			<ul class="clear">
        			<li><a class="drop" href="admin.jsp">ADMIN</a>
          				<ul>
            				<li><a class="drop" href="#">Employee</a>
            					<ul>
	                				<c:if test = "${right.addemployee==true}"><li><a href="addemployee.jsp">Add Employee</a></li></c:if>
				    				<c:if test = "${right.searchemployee==true}"><li><a href="searchemployee.jsp">Search Employee</a></li></c:if>
				    				<c:if test = "${right.updateemployee==true}"><li><a href="usearchemployee.jsp">Update Employee</a></li></c:if>
              					</ul>
            				</li>
            				
            				<c:if test = "${right.leave==true}"><li><a href='#'>Leave Application</a></li></c:if>
            				<c:if test = "${right.hostel==true}"><li><a class="drop" href="#">Hostel</a>
            					<ul>
	                				<li><a href="#">Hostel</a></li>
	                				<li><a href="#">Category</a></li>
	                				<li><a href="#">Member</a></li>
              					</ul>
            				</li></c:if>
            				<c:if test = "${right.transport==true}"><li><a class="drop" href="#">Transport</a>
            					<ul>
	                				<li><a href="#">Transport</a></li>
	                				<li><a href="#">Member</a></li>
              					</ul>
            				</li></c:if>
            				<c:if test = "${right.news==true}"><li><a href='news'>News</a></li></c:if>
            				<c:if test = "${right.event==true}"><li><a href='event'>Events</a></li></c:if>
            				<c:if test = "${right.holiday==true}"><li><a href='#'>Holidays</a></li></c:if>
            				<li><a href='#'>Promotion</a></li>
            				<c:if test = "${right.routine==true}"><li><a class="drop" href="#">Routines</a>
            					<ul>
	                				<li><a href="routine">Add Routines</a></li>
	                				<li><a href="showroutines">View Routines</a></li>
              					</ul>
            				</li></c:if>
            				<c:if test = "${right.gallery==true}"><li><a href='photogallery.jsp'>Gallery</a></li></c:if>
            				<c:if test = "${right.gallery==true}"><li><a href='virtualtour.jsp'>Virtual Tour</a></li></c:if>
            				<c:if test = "${right.academiccalender==true}"><li><a href='addacademiccalender'>Academic Calender</a></li></c:if>
            				<c:if test = "${right.changepassword==true}"><li><a href='changepassword.jsp'>Change Password</a></li></c:if>
          				</ul>
        			</li>
         			<li><a class="drop" href="#">USERS MASTER</a>
			  			<ul>
							<c:if test = "${right.user==true}"><li><a href='adddepartment'>Create Department</a></li></c:if>
							<c:if test = "${right.user==true}"><li><a href='createuser'>Create User</a></li></c:if>
							<c:if test = "${right.access==true}"><li><a href='accessrightsadmin.jsp'>Access Rights</a></li></c:if>
          				</ul>
        			</li>
        			<li><a class="drop" href="#">MASTER ENTRIES</a>
			  			<ul>
							<c:if test = "${right.course==true}"><li><a href='addcourse'>Courses</a></li></c:if>
							<c:if test = "${right.branch==true}"><li><a href='addbranch'>Branches</a></li></c:if>
							<c:if test = "${right.class1==true}"><li><a href='addclass'>Classes</a></li></c:if>
							<c:if test = "${right.section==true}"><li><a href='addsection'>Sections</a></li></c:if>
							<c:if test = "${right.subject==true}"><li><a href='addsubject'>Subjects</a></li></c:if>
          				</ul>
        			</li>
        			<li><a class="drop" href="#">ATTENDANCE</a>
          				<ul>
							<c:if test = "${right.studentattendance==true}"><li><a href='#'>Student Attendance</a></li></c:if>
							<c:if test = "${right.teacherattendance==true}"><li><a href='#'>Teacher Attendance</a></li></c:if>
							<c:if test = "${right.examattendance==true}"><li><a href='#'>Exam Attendance</a></li></c:if>
          				</ul>
        			</li>
					<li><a class="drop" href="#">EXAM</a>
          				<ul>
            				<c:if test = "${right.exam==true}"><li><a href="#">Exam Master</a></li></c:if>
            				<c:if test = "${right.examschedule==true}"><li><a class="drop" href="#">Exam Schedule</a>
            					<ul>
	                				<li><a href="#">Add Exam Schedule</a></li>
				    				<li><a href="#">View/Edit Schedule</a></li>
              					</ul>
            				</li></c:if>
            				<c:if test = "${right.mark==true}"><li><a href="#">Mark</a></li></c:if>
            			</ul>
        			</li>
					<li><a class="drop" href="#">LIBRARY</a>
          				<ul>
							<c:if test = "${right.lmember==true}"><li><a href='#'>Member</a></li></c:if>
							<c:if test = "${right.lbook==true}"><li><a href='#'>Books</a></li></c:if>
							<c:if test = "${right.lissue==true}"><li><a href='#'>Issue</a></li></c:if>
							<c:if test = "${right.lfine==true}"><li><a href='#'>Fine</a></li></c:if>
          				</ul>
        			</li>
        			<li><a class="drop" href="#">COMMUNICATION</a>
          				<ul>
            				<c:if test = "${right.mailsms==true}"><li><a class="drop" href="#">Mail/SMS</a>
            					<ul>
	                				<li><a href="#">Mail/SMS Template</a></li>
				    				<li><a href="#">Mail/SMS</a></li>
				    				<li><a href="#">SMS Setting</a></li>
              					</ul>
            				</li></c:if>
            				<c:if test = "${right.message==true}"><li><a href="#">Message</a></li></c:if>
            				<li><a href="#">Notice</a></li>
            				<c:if test = "${right.report==true}"><li><a href="#">Report</a></li></c:if>
            				<c:if test = "${right.visitor==true}"><li><a href="#">Visitor Information</a></li></c:if>
            				<li><a href="#">Import</a></li>
            			</ul>
        			</li>
        			<li><a class="drop" href="#">ACCOUNT</a>
          				<ul>
          					<c:if test = "${right.feetype==true}"><li><a href='#'>Fee Type</a></li></c:if>
							<c:if test = "${right.invoice==true}"><li><a href='#'>Invoice</a></li></c:if>
							<c:if test = "${right.balance==true}"><li><a href='#'>Balance</a></li></c:if>
							<c:if test = "${right.expense==true}"><li><a href='#'>Expense</a></li></c:if>
							<c:if test = "${right.paymentsetting==true}"><li><a href='#'>Payment Setting</a></li></c:if>
          				</ul>
        			</li>
      			</ul>
    			</nav>
    			
        		</div>
      		</div>
  		</div>
	</body>
</html>  