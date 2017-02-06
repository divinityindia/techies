<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>:: Update Employee</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        $(function() {  
            $( "#datepicker-1" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#datepicker-2" ).datepicker({
            	dateFormat:"dd/MM/yyyy",
            	changeMonth: true,
      	      changeYear: true,
    	      yearRange: "1942:2050",
    		  dateFormat:"dd/mm/yy"
            });  
            $( "#fromdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#todate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#krdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
         });
        </script>
<script src="../js/updateemployeeexp.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.updateemployee==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Update Employee Experience</h2>
       				<div id="expsuccess" class="success"></div>
  					
       				<div id="block3" style="text-align: center;">
  							
  							
						<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%">
							<thead>
							<tr>
								<th style="font-weight: bold;">Orgainzation</th><th style="font-weight: bold;">Website</th><th style="font-weight: bold;">Designation</th><th style="font-weight: bold;">Job Profile</th><th style="font-weight: bold;">From Date</th><th style="font-weight: bold;">To Date</th><th style="font-weight: bold;">Achievement</th><th style="font-weight: bold;">Delete</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${expList}">	
								<tr id="e${cat.expId}">
									<td>${cat.eorg}</td><td>${cat.eurl}</td><td>${cat.designation}</td><td>${cat.jobprofile}</td><td><fmt:formatDate value="${cat.fromDate}" pattern="dd-MM-yyyy"/></td><td><fmt:formatDate value="${cat.toDate}" pattern="dd-MM-yyyy"/></td><td>${cat.achievement}</td><td><a href="javascript:;" data-p1="${cat.expId}" class="deletelinkExp">Delete</a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
       					<img src="../../icons/loading3.gif" id="load1" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>
  						<form action="updateemployeeexp" method="post" id="form3">	
  						<input type="hidden" class="fid" value="${efid}" name="fid"></input>
  						<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%">
								<tr>
									<th colspan="4" style="font-weight: bold;">
										Add more experience
									</th>
								</tr>
								<tr>
									<td class="exlabel">Organization:<span class="required">*</span></td>
									<td>
										<input type="text" name="eorg" id="eorg"  placeholder="Organization" class="simpletext" required="required">
									</td>
									<td class="exlabel">Website</td>
									<td>
										<input type="text" name="eurl" id="eurl"  placeholder="Website URL" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Designation:<span class="required">*</span></td>
									<td>
										<input type="text" name="designation" id="designation"  placeholder="Designation" class="simpletext" required="required">
									</td>
									<td class="exlabel">Job Profile</td>
									<td>
										<input type="text" name="jobprofile" id="jobprofile"  placeholder="Job Profile" class="simpletext">
									</td>
									
								</tr>
								<tr>
									<td class="exlabel">From:</td>
									<td>
										<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="fromdate" id="fromdate" readonly="readonly">
									</td>
									<td class="exlabel">To:</td>
									<td>
										<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="todate" id="todate" readonly="readonly">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Achievement:</td>
									<td colspan="3">
										<input type="text" name="achi" id="achi"  placeholder="Achievement" class="simpletext">
									</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><button type="submit" id="save3">Save Details</button></td>
								</tr>
							</table>
							</form>
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
<!-- <script type="text/javascript">
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	
		if($.urlParam('success')=='1')
		{
			$("#success").empty();
			$("#success").append('Employee updated Successfully.');
			$("#success").css('display','block');
		}
		else if($.urlParam('success')=='0')
		{
			$("#success").empty();
			$("#success").append('Student Employee failed...Please try again');
			$("#success").css('display','block');
		}
		
		
		

	</script>	 -->	
</body>
</html>
