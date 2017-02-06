<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Update Access Rights(Admin)</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/updateaccessrights.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.access==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				
       				<c:choose>
  							<c:when test="${param.success eq 1}">
    							<div class="form_success">Success</div>
  							</c:when>
  							<c:when test="${param.success eq 0}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  						</c:choose>
       				<br/>
       				<h2 style="text-align: center;">Update Access Rights</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						
						<center>
						
						<form action="updateaccessrights" method="post">
						<input type="hidden" name="userid" id="userid" value="${bean.userid}">				
						<table class="info" id="usertable">
							<thead>
							<tr>
								<th colspan="2"><span style="font-weight: bold;">Username: </span>${username}&nbsp;&nbsp;&nbsp;<span style="font-weight: bold;">Category: </span> ${category}</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
								<%-- <c:if test = "${cbean.addstudent==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Add Student</td><td><input type="checkbox" id="addstudent" value="${bean.addstudent}" <c:if test="${bean.addstudent == 'true'}">checked="checked"</c:if> name="addstudent" class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.searchstudent==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Search Student</td><td><input type="checkbox" id="searchstudent" value="${bean.searchstudent}" name="searchstudent" <c:if test="${bean.searchstudent == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.updatestudent==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Update Student</td><td><input type="checkbox" id="updatestudent" value="${bean.updatestudent}" name="updatestudent" <c:if test="${bean.updatestudent == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if> --%>
								<c:if test = "${cbean.addemployee==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Add Employee</td><td><input type="checkbox" id="addemployee" value="${bean.addemployee}" name="addemployee" <c:if test="${bean.addemployee == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.searchemployee==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Search Employee</td><td><input type="checkbox" id="searchemployee" value="${bean.searchemployee}" name="searchemployee" <c:if test="${bean.searchemployee == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.updateemployee==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Update Employee</td><td><input type="checkbox" id="updateemployee" value="${bean.updateemployee}" name="updateemployee" <c:if test="${bean.updateemployee == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.event==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Event</td><td><input type="checkbox" id="event" value="${bean.event}" name="event" <c:if test="${bean.event == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.news==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>News</td><td><input type="checkbox" id="news" value="${bean.news}" name="news" <c:if test="${bean.news == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.routine==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Routine</td><td><input type="checkbox" id="routine" value="${bean.routine}" name="routine" <c:if test="${bean.routine == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.gallery==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Gallery</td><td><input type="checkbox" id="gallery" value="${bean.gallery}" name="gallery" <c:if test="${bean.gallery == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.user==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>User</td><td><input type="checkbox" id="user" value="${bean.user}" name="user" <c:if test="${bean.user == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.access==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Access</td><td><input type="checkbox" id="access" value="${bean.access}" name="access" <c:if test="${bean.access == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.course==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Course</td><td><input type="checkbox" id="course" value="${bean.course}" name="course" <c:if test="${bean.course == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.branch==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Branch</td><td><input type="checkbox" id="branch" value="${bean.branch}" name="branch" <c:if test="${bean.branch == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.class1==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Class</td><td><input type="checkbox" id="class" value="${bean.class1}" name="class" <c:if test="${bean.class1 == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.section==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Section</td><td><input type="checkbox" id="section" value="${bean.section}" name="section" <c:if test="${bean.section == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.subject==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Subject</td><td><input type="checkbox" id="subject" value="${bean.subject}" name="subject" <c:if test="${bean.subject == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.leave==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Leave</td><td><input type="checkbox" id="leave" value="${bean.leave}" name="leave" <c:if test="${bean.leave == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.hostel==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Hostel</td><td><input type="checkbox" id="hostel" value="${bean.hostel}" name="hostel" <c:if test="${bean.hostel == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.transport==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Transport</td><td><input type="checkbox" id="transport" value="${bean.transport}" name="transport" <c:if test="${bean.transport == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.holiday==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Holiday</td><td><input type="checkbox" id="holiday" value="${bean.holiday}" name="holiday" <c:if test="${bean.holiday == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.studentattendance==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Student Attendance</td><td><input type="checkbox" id="studentattendance" value="${bean.studentattendance}" name="studentattendance" <c:if test="${bean.studentattendance == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.teacherattendance==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Teacher Attendance</td><td><input type="checkbox" id="teacherattendance" value="${bean.teacherattendance}" name="teacherattendance" <c:if test="${bean.teacherattendance == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.examattendance==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Exam Attendance</td><td><input type="checkbox" id="examattendance" value="${bean.examattendance}" name="examattendance" <c:if test="${bean.examattendance == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.exam==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Exam Master</td><td><input type="checkbox" id="exam" value="${bean.exam}" name="exam" <c:if test="${bean.exam == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.examschedule==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Exam Schedule Master</td><td><input type="checkbox" id="examschedule" value="${bean.examschedule}" name="examschedule" <c:if test="${bean.examschedule == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.mark==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Exam Marks</td><td><input type="checkbox" id="mark" value="${bean.mark}" name="mark" <c:if test="${bean.mark == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.lmember==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Members</td><td><input type="checkbox" id="lmember" value="${bean.lmember}" name="lmember" <c:if test="${bean.lmember == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.lbook==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Books</td><td><input type="checkbox" id="lbook" value="${bean.lbook}" name="lbook" <c:if test="${bean.lbook == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.lissue==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Book Issue</td><td><input type="checkbox" id="lissue" value="${bean.lissue}" name="lissue" <c:if test="${bean.lissue == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.lfine==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Library Fine</td><td><input type="checkbox" id="lfine" value="${bean.lfine}" name="lfine" <c:if test="${bean.lfine == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.mailsms==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Mail / SMS</td><td><input type="checkbox" id="mailsms" value="${bean.mailsms}" name="mailsms" <c:if test="${bean.mailsms == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.message==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Message</td><td><input type="checkbox" id="message" value="${bean.message}" name="message" <c:if test="${bean.message == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.report==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Report</td><td><input type="checkbox" id="report" value="${bean.report}" name="report" <c:if test="${bean.report == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.visitor==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Visitor</td><td><input type="checkbox" id="visitor" value="${bean.visitor}" name="visitor" <c:if test="${bean.visitor == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.feetype==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Fee Type</td><td><input type="checkbox" id="feetype" value="${bean.feetype}" name="feetype" <c:if test="${bean.feetype == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.invoice==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Invoice</td><td><input type="checkbox" id="invoice" value="${bean.invoice}" name="invoice" <c:if test="${bean.invoice == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.balance==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Balance</td><td><input type="checkbox" id="balance" value="${bean.balance}" name="balance" <c:if test="${bean.balance == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.expense==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Expense</td><td><input type="checkbox" id="expense" value="${bean.expense}" name="expense" <c:if test="${bean.expense == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.paymentsetting==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Payment Setting</td><td><input type="checkbox" id="paymentsetting" value="${bean.paymentsetting}" name="paymentsetting" <c:if test="${bean.paymentsetting == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<c:if test = "${cbean.academiccalender==true}"><tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
									<td>Academic Calender</td><td><input type="checkbox" id="academiccalender" value="${bean.academiccalender}" name="academiccalender" <c:if test="${bean.academiccalender == 'true'}">checked="checked"</c:if> class="chk"></td>
								</tr></c:if>
								<tr>
								<td colspan="2" style="text-align: center;"><button type="submit" id="update">Update Rights</button></td>
							</tr>
							</tbody>
						</table>
						</form>
						</center>
					
				</div>
				
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

</body>
</html>
