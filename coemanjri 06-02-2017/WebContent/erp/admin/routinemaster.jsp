<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Routine Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/routine.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.routine==false}">
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
  							<c:when test="${param.success eq 2}">
    							<div class="form_success">Routine/Routines deleted successfully</div>
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
       				
       				<h2>Routine Master</h2>
       				<div id="block1">
  						
  						<table id="coursebranchblock"> 
    						<tr>
								<td class="llabel">Course<span class="required">*</span></td>
								<td>
									<select name="course" id="course" required="required" class="">
                                     		<option selected="selected">---Select Course---</option>
                                        	<c:forEach var="cat" items="${requestScope.coursename}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
								<td class="llabel">Branch<span class="required">*</span></td>
								<td>
									<select name="branch" id="branch" required="required">
                                     		<option selected="selected">---Select Branch---</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="button" id="addr">Add Routines</button></td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;">
									<img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display:none"/>
									<input type="hidden" value="add" name="action">
								</td>
							</tr>
						</table>
						<form action="routine" method="post" id="form1">
						<table id="otherdetails">
							<tr>
								<td colspan="4" style="text-align: center;">
									<b>Add Routines for <span id="label1"></span>&nbsp;::&nbsp;Branch:&nbsp;<span id="label2"></span></b> 
									<input type="hidden" name="crsid" id="crsid">
									<input type="hidden" name="brid" id="brid">
									<input type="hidden" value="add" name="action">
								</td>
							</tr>
							<tr>
								<td class="llabel">Class<span class="required">*</span></td>
								<td>
									<select name="classname" id="classname" required="required">
                                     		<option value="">---Select Class---</option>
                                        	<c:forEach var="cat" items="${requestScope.classname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
								<td class="llabel">Section<span class="required">*</span></td>
								<td>
									<select name="sectionname" id="sectionname" required="required">
                                     		<option value="">---Select Section---</option>
                                        	<c:forEach var="cat" items="${requestScope.sectionname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Subject<span class="required">*</span></td>
								<td>
									<select name="subjectname" id="subjectname" required="required">
                                     		<option value="">---Select Subject---</option>
                                        	<c:forEach var="cat" items="${requestScope.subjectname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
								<td class="llabel">Day<span class="required">*</span></td>
								<td>
									<select class="form-control"  name="day" id="day" required="required">
                                  			<option value="">---Select Day---</option>
                                  			<option value="Monday">Monday</option>
                                  			<option value="Tuesday">Tuesday</option>
                                  			<option value="Wednesday">Wednesday</option>
                                  			<option value="Thursday">Thursday</option>
                                  			<option value="Friday">Friday</option>
                                  			<option value="Saturday">Saturday</option>
                                  			<option value="Sunday">Sunday</option>
                                  		</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Time From<span class="required">*</span></td>
								<td>
									<input type="text" name="timefrom" id="timepicker-1"  class="simpletext" placeholder="Time From" required="required"/>
								</td>
								<td class="llabel">Time To<span class="required">*</span></td>
								<td>
									<input type="text" name="timeto" id="timepicker-2"  class="simpletext" placeholder="Time To" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Room<span class="required">*</span></td>
								<td>
									<input type="text" name="room" id="room"  class="simpletext" placeholder="Room" required="required"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Routine</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton">Reset</button></td>
							</tr>
						</table>
					</form>	
						
				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
