<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Course Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
			
				$("#addeditbutton").text("Add Course")
				$("#formactionadd").val("add");
				
				//Delete button function
				$('.courseid').change(function() { 
 				    if ($('.courseid:checked').length) { 
 				        $('#deleteButton').removeAttr('disabled'); 
 				    } else { 
 				        $('#deleteButton').attr('disabled', 'disabled'); 
				    } 
 				}); 
 				
 				//Reset button function
				$('#resetbutton').click(function() { 
					$('#coursename').val("");
					$("#courseduration").prop("selectedIndex", 0)
					$("#addeditbutton").text("Add Course")
					$("#formactionadd").val("add");
 				});
 				
				//editlink onclick function
				
				$('.editlink').click(function() { 
					
					var $this = $(this);
		            var courseid = $this.data('p1');
		            var coursename= $this.data('p2'); 
		            var courseduration = $this.data('p3'); 
		            $("#cid").val(courseid);
					$('#coursename').val(coursename);
					$('#courseduration').val(courseduration);
					$("#addeditbutton").text("Save");
					$("#formactionadd").val("edit");
 				});
 				
 			}); 
		</script> 
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.course==false}">
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
    							<div class="form_success">Course/Courses deleted successfully</div>
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
       				
       				<h2>Course Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addcourse" method="post" id="form1">
  						<input type="hidden" name="cid" id="cid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody id="addcrs">
    						<tr>
								<td class="llabel">Course Name<span class="required">*</span></td>
								<td>
									<input type="text" name="coursename" id="coursename"  class="simpletext" placeholder="Course name" required="required"/>
								</td>
								<td class="llabel">Course Duration<span class="required">*</span></td>
								<td>
									<select name="courseduration" id="courseduration" required="required">
                                     		<option value="">---Select Duration---</option>
                                     		<option>1 YEAR</option>
                                     		<option>2 YEARS</option>
                                     		<option>3 YEARS</option>
                                     		<option>4 YEARS</option>
                                     		<option>5 YEARS</option>
                                     		<option>6 YEARS</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Course</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Courses Added</h3>
						<form action="addcourse" method="post">
						<table class="info">
							<tr>
								<th>Course ID</th>
								<th>Course Name</th>
								<th>Course Duration</th>
								<th>Delete Course</th>
								<th>Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.coursebeans}">
							<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
								<td>${cat.courseId}</td>
								<td>${cat.courseName}</td>
								<td>${cat.courseDuration}</td>
								<td><input type="checkbox" name="courseid" value="${cat.courseId}" class="courseid" /></td>
								<td><a href="javascript:;" data-p1="${cat.courseId}" data-p2="${cat.courseName}" data-p3="${cat.courseDuration}" class="editlink">Edit</a></td>
							</tr>
							</c:forEach>
						</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Course</button>
							<input type="hidden" name="formaction" value="delete" id="formactiondelete"/>
							</td></tr>
						</table>
						</form>
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
</body>
</html>
