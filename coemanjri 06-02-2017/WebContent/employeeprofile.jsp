<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>::Faculty Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<jsp:include page="top.jsp"/>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div id="fixed">
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        
        <!-- Middle Column -->
        <div class="one_half1" > 
          <table class="employeeprofile" id="usertable">
							<thead>
							<tr>
								<th style="width: 30%"><img src="erp/admin/employeephotoservlet?employeeid=${emp.facultyId}"></th><th><span style="font-weight: bold;">Name: ${emp.sal} ${emp.fname} ${emp.lname}</span><br/><br><span style="font-weight: bold;">Designation: ${emp.post}</span><br/><span style="font-weight: bold;">Department: ${emp.branchName}</span><br/><span style="font-weight: bold;">Email: ${emp.email}</span></th>
							</tr>
							</thead>
						</table>
						<h2 style="color:#2E2D10">Experience Details</h2>
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
						
						<h2 style="color:#082B0D">Qualification Details</h2>
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
						
						<h2 style="color:#082B0D">Certifications Details</h2>
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
						
						<h2 style="color:#082B0D">Knowledge Repository</h2>
						<table class="employeeprofile" id="usertable">
							
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${krList}">	
								<tr>
									<th colspan="2">Knowledge Repository</th>
								</tr>
								<tr>
									<td style="font-weight: bold;color: black;width:30%">Headline</td><td>${cat.headline}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Category</td><td>${cat.krcategory}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Publication</td><td>${cat.publication}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Author</td><td>${cat.author}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Date of Publication</td><td>${cat.krdate}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">URL</td><td>${cat.krurl}</td></tr><c:if test = "${not empty cat.documentName}"><tr><td style="font-weight: bold;color: black;width:30%">Download Article</td><td><a href="erp/admin/getkrarticle?krid=${cat.krid}">Article Document(Click to Download)</a></td></tr></c:if><tr><td style="font-weight: bold;color: black;width:30%">Keywords</td><td>${cat.keywords}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Content</td><td>${cat.content}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Notes</td><td>${cat.notes}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Priority</td><td>${cat.priority}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Guide</td><td>${cat.guide}</td></tr><tr><td style="font-weight: bold;color: black;width:30%">Co-Guide</td><td>${cat.coguide}</td></tr><tr><td style="font-weight: bold;color: black;;width:30%">Teamsize</td><td>${cat.teamsize}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
        </div>
        
        <!-- / Middle Column --> 
        
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div class="group">
        <h2>Quickly Find What You Are Looking For</h2>
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
    </main>
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