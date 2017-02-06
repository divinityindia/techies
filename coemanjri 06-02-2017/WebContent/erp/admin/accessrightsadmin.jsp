<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Access Rights(Admin)</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/accessrights.js"></script>
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
       				
       				<h2>User Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<input type="hidden" id="deptid" value="${deptid}">
  						<input type="hidden" id="cuserid" value="${userid}">
  						<table> 
    						<tr>
								<td class="llabel">Department<span class="required">*</span></td>
								<td>
									<select name="dept" id="dept" required="required">
                                     		<option value="">---Select Department---</option>
									</select>
								</td>
								<td class="llabel">Category<span class="required">*</span></td>
								<td>
									<select name="category" id="category" required="required">
                                     		<option value="">---Select Category---</option>
                                     		<option>Administrator</option>
                                     		<option>Teacher</option>
                                     		<option>Student</option>
                                     		<option>Parent</option>
									</select>
								</td>
							</tr>
							<tr>
								<td></td><td></td><td><img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display: none;"/></td><td></td>
							</tr>
						</table>
						
						<center>
						
						<h3>User List</h3>
						<table class="info" id="usertable">
							<thead>
							<tr>
								<th>User ID</th>
								<th>Department</th>
								<th>User Name</th>
								<th>Category</th>
								<th>Edit Permissions</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
							</tbody>
									
						</table>
						
						</center>
					
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
<script type="text/javascript">
$(function(){
	$.ajax({
	    type: "GET",
	    url: "../showdropdowndepts",                
	    dataType: "json",
	    success:function(data){
	    	
	    	if(data){
	    		var dept=$("#dept");
	    		var deptid=$("#deptid").val();
	    		$.each(data, function(k, v) {
	    			if(deptid==k)
	    			{
	    				$('<option>').val(k).text(v).appendTo(dept);	
	    			}
	    			else if(deptid=='0')
	    			{
	    				$('<option>').val(k).text(v).appendTo(dept);	
	    			}
	    			
	    		});
	        }
	    },
	    error:function(){
	        
	    } 

	});
});
</script>
</body>
</html>
