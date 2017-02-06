<!DOCTYPE html>
<html>
<head>
<title>Top Page</title>
<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>
<body>
	<jsp:include page="admUserChk.jsp"/>
    <div id="wrapper">
    	<div id="fixed">
        <div id="header">
            <div id="flogo">
    			<img src="../../images/l3.png"/>	
     		</div>
  			<div id="llogo">
    			<img src="../../images/logo.jpg"/>	
    		</div>
    		<div id="mtext">	
		      	<p id="tophead">PUNE DISTRICT EDUCATION ASSOCIATION'S</p>
		      	<p id="middlehead">College of Engineering, Manjari (BK)</p>
		      	<p id="bottomhead">Achieving The Best</p>
		      	<p id="bbhead">(Approved by AICTE, Govt. of Maharashtra || Affiliated to Savitribai Phule Pune University) Act Approved NO. 740-89-316(E)/Et/98</p>
  			</div>
        </div>
        <div id="navigation">
            <nav id="mainav"> 
      			<ul class="clear">
        			<li><a class="drop" href="admin.jsp">ADMIN</a>
          				<ul>
            				<li><a class="drop" href="#">Student</a>
            					<ul>
	                				<li><a href="addstudent.jsp">Add Student</a></li>
				    				<li><a href="searchstudent.jsp">Search/Edit Student</a></li>
              					</ul>
            				</li>
            				<li><a class="drop" href="#">Employee</a>
            					<ul>
	                				<li><a href="addemployee.jsp">Add Employee</a></li>
				    				<li><a href="searchemployee.jsp">Search/Edit Employee</a></li>
              					</ul>
            				</li>
            				<li><a class="drop" href="#">Parent</a>
            					<ul>
	                				<li><a href="#">View Parent</a></li>
              					</ul>
            				</li>
            				<li><a href='#'>Leave Application</a></li>
            				<li><a class="drop" href="#">Hostel</a>
            					<ul>
	                				<li><a href="#">Hostel</a></li>
	                				<li><a href="#">Category</a></li>
	                				<li><a href="#">Member</a></li>
              					</ul>
            				</li>
            				<li><a class="drop" href="#">Transport</a>
            					<ul>
	                				<li><a href="#">Transport</a></li>
	                				<li><a href="#">Member</a></li>
              					</ul>
            				</li>
            				<li><a href='newsandevent'>Events</a></li>
            				<li><a href='#'>Holidays</a></li>
            				<li><a href='#'>Promotion</a></li>
            				<li><a class="drop" href="#">Routines</a>
            					<ul>
	                				<li><a href="routine">Add Routines</a></li>
	                				<li><a href="showroutines">View Routines</a></li>
              					</ul>
            				</li>
            				<li><a href='photogallery.jsp'>Gallery</a></li>
          				</ul>
        			</li>
         			<li><a class="drop" href="#">CREATE ACCOUNT</a>
			  			<ul>
							<li><a href='#'>Create Department</a></li>
							<li><a href='#'>Create User</a></li>
          				</ul>
        			</li>
        			<li><a class="drop" href="#">MASTER ENTRIES</a>
			  			<ul>
							<li><a href='addcourse'>Courses</a></li>
							<li><a href='addbranch'>Branches</a></li>
							<li><a href='addclass'>Classes</a></li>
							<li><a href='addsection'>Sections</a></li>
							<li><a href='addsubject'>Subjects</a></li>
          				</ul>
        			</li>
        			<li><a class="drop" href="#">ATTENDANCE</a>
          				<ul>
							<li><a href='#'>Student Attendance</a></li>
							<li><a href='#'>Teacher Attendance</a></li>
							<li><a href='#'>Exam Attendance</a></li>
          				</ul>
        			</li>
					<li><a class="drop" href="#">EXAM</a>
          				<ul>
            				<li><a href="#">Exam Master</a></li>
            				<li><a class="drop" href="#">Exam Schedule</a>
            					<ul>
	                				<li><a href="#">Add Exam Schedule</a></li>
				    				<li><a href="#">View/Edit Schedule</a></li>
              					</ul>
            				</li>
            				<li><a href="#">Mark</a></li>
            			</ul>
        			</li>
					<li><a class="drop" href="#">LIBRARY</a>
          				<ul>
							<li><a href='#'>Member</a></li>
							<li><a href='#'>Books</a></li>
							<li><a href='#'>Issue</a></li>
							<li><a href='#'>Fine</a></li>
          				</ul>
        			</li>
        			<li><a class="drop" href="#">COMMUNICATION</a>
          				<ul>
            				<li><a class="drop" href="#">Mail/SMS</a>
            					<ul>
	                				<li><a href="#">Mail/SMS Template</a></li>
				    				<li><a href="#">Mail/SMS</a></li>
				    				<li><a href="#">SMS Setting</a></li>
              					</ul>
            				</li>
            				<li><a href="#">Message</a></li>
            				<li><a href="#">Notice</a></li>
            				<li><a href="#">Report</a></li>
            				<li><a href="#">Visitor Information</a></li>
            				<li><a href="#">Import</a></li>
            			</ul>
        			</li>
        			<li><a class="drop" href="#">ACCOUNT</a>
          				<ul>
          					<li><a href='#'>Fee Type</a></li>
							<li><a href='#'>Invoice</a></li>
							<li><a href='#'>Balance</a></li>
							<li><a href='#'>Expense</a></li>
							<li><a href='#'>Payment Setting</a></li>
          				</ul>
        			</li>
      			</ul>
    			</nav>
        		</div>
      		</div>
  		</div>
	</body>
</html>  