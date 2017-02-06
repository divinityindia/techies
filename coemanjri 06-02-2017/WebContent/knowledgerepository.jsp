<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>::Knowledge Repository</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style type="text/css">
#usertablebody td.krheading{
	width: 30%;
	font-weight: bold;
	color: #000000;
}
</style>
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
						
						<h2 style="color:#082B0D">Knowledge Repository</h2>
						<table class="employeeprofile" id="usertable">
							
							<tbody id="usertablebody">
							
								<tr>
									<th colspan="2">Knowledge Repository</th>
								</tr>
								<tr>
									<td class="krheading">Headline</td><td>${kr.headline}</td></tr><tr><td class="krheading">Category</td><td>${kr.krcategory}</td></tr><tr><td class="krheading">Publication</td><td>${kr.publication}</td></tr><tr><td class="krheading">Author</td><td>${kr.author}</td></tr><tr><td class="krheading">Date of Publication</td><td>${kr.krdate}</td></tr><tr><td class="krheading">URL</td><td>${kr.krurl}</td></tr><c:if test = "${not empty kr.documentName}"><tr><td class="krheading">Download Article</td><td><a href="erp/admin/getkrarticle?krid=${kr.krid}">Article Document(Click to Download)</a></td></tr></c:if><tr><td class="krheading">Keywords</td><td>${kr.keywords}</td></tr><tr><td class="krheading">Content</td><td>${kr.content}</td></tr><tr><td class="krheading">Notes</td><td>${kr.notes}</td></tr><tr><td class="krheading">Priority</td><td>${kr.priority}</td></tr><tr><td class="krheading">Guide</td><td>${kr.guide}</td></tr><tr><td class="krheading">Co-Guide</td><td>${kr.coguide}</td></tr><tr><td class="krheading">Teamsize</td><td>${kr.teamsize}</td>
								</tr>
							
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