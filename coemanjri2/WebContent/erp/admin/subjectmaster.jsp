<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Subject Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
			
				$("#addeditbutton").text("Add Subject")
				$("#formactionadd").val("add");
				
				//Delete button function
				$('.subjectid').change(function() { 
 				    if ($('.subjectid:checked').length) { 
 				        $('#deleteButton').removeAttr('disabled'); 
 				    } else { 
 				        $('#deleteButton').attr('disabled', 'disabled'); 
				    } 
 				});
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$('#subjectname').val("");
					$("#course").prop("selectedIndex", 0)
					$("#semester").prop("selectedIndex", 0)
					$("#branch").prop("selectedIndex", 0)
					$("#addeditbutton").text("Add Subject")
					$("#formactionadd").val("add");
 				}); 
				
				//editlink onclick function
				
				$('.editlink').click(function() { 
					
					var $this = $(this);
		            var subjectid = $this.data('p1');
		            var  subjectname= $this.data('p2'); 
		            var courseid = $this.data('p3'); 
		            var semester = $this.data('p4'); 
		            var branchid = $this.data('p5'); 
				    
		            $("#sid").val(subjectid);
					$('#subjectname').val(subjectname.substring(0,subjectname.indexOf(":")));
					$('#course').val(courseid);
					$("#semester").val(semester);
					$("#branch").val(branchid);
					$("#addeditbutton").text("Save");
					$("#formactionadd").val("edit");
 				}); 
			
 			}); 
		</script> 
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
  							<c:when test="${param.success eq 2}">
    							<div class="form_success">Subject/Subjects deleted successfully</div>
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
       				
       				<h2>Subject Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addsubject" method="post" id="form1">
  						<input type="hidden" name="sid" id="sid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody id="addcrs">
    						<tr>
								<td class="llabel">Subject Name<span class="required">*</span></td>
								<td>
									<input type="text" name="subjectname" id="subjectname"  class="simpletext" placeholder="Subject name" required="required"/>
								</td>
								<td class="llabel">Course<span class="required">*</span></td>
								<td>
									<select name="course" id="course" required="required">
                                  			<option selected="selected">---Select Course---</option>
                                  			<c:forEach var="cat" items="${requestScope.coursename}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
										</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Semester<span class="required">*</span></td>
								<td>
									<select name="semester" id="semester" required="required">
                                  			<option value="">---Select Semester---</option>
                                  			<option>SEM-I</option>
	                                     	<option>SEM-II</option>
	                                    	<option>SEM-III</option>
	                                     	<option>SEM-IV</option>
	                                      	<option>SEM-V</option>
	                                    	<option>SEM-VI</option>
	                                    	<option>SEM-VII</option>
	                                    	<option>SEM-VIII</option>
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
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Subject</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Subjects Added</h3>
						<form action="addsubject" method="post">
						<table class="info" style="width: 80%">
									<tr>
										<th>Subject ID</th>
										<th>Subject Name</th>
										<th>Delete Subject</th>
										<th>Edit Subject</th>
									</tr>

									<c:forEach var="cat" items="${requestScope.subjectbeans}">
										<tr onmouseover="this.style.backgroundColor='#ffff66';"
											onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>${cat.subjectid}</td>
											<td>${cat.subjectName}</td>
											<td><input type="checkbox" name="subjectid"
												value="${cat.subjectid}" class="subjectid" /></td>
											<td><a href="javascript:;" data-p1="${cat.subjectid}"
												data-p2="${cat.subjectName}" data-p3="${cat.courseId}"
												data-p4="${cat.semester}" data-p5="${cat.branchId}"
												class="editlink">Edit</a></td>
										</tr>
									</c:forEach>
								</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Subject</button>
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
