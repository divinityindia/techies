<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>:: Employee Profile</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/updateaccessrights.js"></script>
<style type="text/css">
#usertablebody td.krheading{
	width: 30%;
	font-weight: bold;
	color: #000000;
}
</style>
</head>
<body>
<jsp:include page="admintop.jsp"/>

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
       				<h2 style="text-align: center;">Employee Profile</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						
						<center>
						
						<form action="updateemployee" method="post">
						<input type="hidden" name="fid" id="fid" value="${emp.facultyId}">				
						<table class="employeeprofile" id="usertable">
							<thead>
							<tr>
								<th><img src="employeephotoservlet?employeeid=${emp.facultyId}"></th><th><span style="font-weight: bold;">${emp.sal} ${emp.fname} ${emp.mname} ${emp.lname}</span>&nbsp;&nbsp;&nbsp;<span style="font-weight: bold;">BCUD ID: </span> ${emp.bcud}</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
								<tr>
									<td class="krheading">Date of Birth</td><td><fmt:formatDate value="${emp.dob}" pattern="dd-MM-yyyy"/></td>
								</tr>
								<tr>
									<td class="krheading">Gender</td><td>${emp.gender}</td>
								</tr>
								<tr>
									<td class="krheading">PAN Number</td><td>${emp.panno}</td>
								</tr>
								<tr>
									<td class="krheading">Aadhar Number</td><td>${emp.aadharno}</td>
								</tr>
								<tr>
									<td class="krheading">Current Address</td><td>${emp.caddress}<br>City: ${emp.city}<br>State: ${emp.state}<br>Pincode: ${emp.cpin}</td>
								</tr>
								<tr>
									<td class="krheading">Permanent Address</td><td>${emp.paddress}<br>City: ${emp.pcity}<br>State: ${emp.pstate}<br>Pincode: ${emp.ppin}</td>
								</tr>
								<tr>
									<td class="krheading">Religion</td><td>${emp.religion}</td>
								</tr>
								<tr>
									<td class="krheading">Category</td><td>${emp.category}</td>
								</tr>
								<tr>
									<td class="krheading">Caste</td><td>${emp.caste}</td>
								</tr>
								<tr>
									<td class="krheading">Marital Status</td><td>${emp.mstatus}</td>
								</tr>
								<tr>
									<td class="krheading">Mobile</td><td>${emp.mobile}</td>
								</tr>
								<tr>
									<td class="krheading">Email</td><td>${emp.email}</td>
								</tr>
								<tr>
									<td class="krheading">Website</td><td>${emp.website}</td>
								</tr>
								<tr>
									<th colspan="2">Appointment Details</th>
								</tr>
								<tr>
									<td class="krheading">Appointed for Department</td><td>${emp.branchName}</td>
								</tr>
								<tr>
									<td class="krheading">Joining Post</td><td>${emp.post}</td>
								</tr>
								<tr>
									<td class="krheading">Date of Joining</td><td><fmt:formatDate value="${emp.doj}" pattern="dd-MM-yyyy"/></td>
								</tr>
								<tr>
									<td class="krheading">Nature of Appointment</td><td>${emp.noa}</td>
								</tr>
								<tr>
									<td class="krheading">Nature of Job</td><td>${emp.noj}</td>
								</tr>
								
							</tbody>
						</table>
						<h2>Experience Details</h2>
						<table class="employeeprofile" id="usertable">
							<thead>
							<tr>
								<th style="font-weight: bold;">Orgainzation</th><th style="font-weight: bold;">Website</th><th style="font-weight: bold;">Designation</th><th style="font-weight: bold;">Job Profile</th><th style="font-weight: bold;">From Date</th><th style="font-weight: bold;">To Date</th><th style="font-weight: bold;">Achievement</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${expList}">	
								<tr>
									<td>${cat.eorg}</td><td>${cat.eurl}</td><td>${cat.designation}</td><td>${cat.jobprofile}</td><td><fmt:formatDate value="${cat.fromDate}" pattern="dd-MM-yyyy"/></td><td><fmt:formatDate value="${cat.toDate}" pattern="dd-MM-yyyy"/></td><td>${cat.achievement}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						
						<h2>Qualification Details</h2>
						<table class="employeeprofile" id="usertable">
							<thead>
							<tr>
								<th style="font-weight: bold;">Qualification</th><th style="font-weight: bold;">Degree</th><th style="font-weight: bold;">Specialization</th><th style="font-weight: bold;">Institute</th><th style="font-weight: bold;">University</th><th style="font-weight: bold;">Passing year</th><th style="font-weight: bold;">Percentage</th><th style="font-weight: bold;">Achievement</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${qualList}">	
								<tr>
									<td>${cat.qname}</td><td>${cat.qdegree}</td><td>${cat.qspecialization}</td><td>${cat.qinstitute}</td><td>${cat.quniversity}</td><td>${cat.qpassyr}</td><td>${cat.qper}</td><td>${cat.qachievement}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						
						<h2>Certifications Details</h2>
						<table class="employeeprofile" id="usertable">
							<thead>
							<tr>
								<th style="font-weight: bold;">Course Name</th><th style="font-weight: bold;">Institute</th><th style="font-weight: bold;">Duration</th><th style="font-weight: bold;">Content</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${certList}">	
								<tr>
									<td>${cat.ccoursename}</td><td>${cat.cinstitute}</td><td>${cat.cduration}</td><td>${cat.ccontent}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						
						<h2>Knowledge Repository</h2>
						<table class="employeeprofile" id="usertable">
							
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${krList}">	
								<tr>
									<th colspan="2">Knowledge Repository</th>
								</tr>
								<tr>
									<td class="krheading">Headline</td><td>${cat.headline}</td></tr><tr><td class="krheading">Category</td><td>${cat.krcategory}</td></tr><tr><td class="krheading">Publication</td><td>${cat.publication}</td></tr><tr><td class="krheading">Author</td><td>${cat.author}</td></tr><tr><td class="krheading">Date of Publication</td><td>${cat.krdate}</td></tr><tr><td class="krheading">URL</td><td>${cat.krurl}</td></tr><c:if test = "${not empty cat.documentName}"><tr><td class="krheading">Download Article</td><td><a href="getkrarticle?krid=${cat.krid}">Article Document(Click to Download)</a></td></tr></c:if><tr><td class="krheading">Keywords</td><td>${cat.keywords}</td></tr><tr><td class="krheading">Content</td><td>${cat.content}</td></tr><tr><td class="krheading">Notes</td><td>${cat.notes}</td></tr><tr><td class="krheading">Priority</td><td>${cat.priority}</td></tr><tr><td class="krheading">Guide</td><td>${cat.guide}</td></tr><tr><td class="krheading">Co-Guide</td><td>${cat.coguide}</td></tr><tr><td class="krheading">Teamsize</td><td>${cat.teamsize}</td>
								</tr>'
							</c:forEach>
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
