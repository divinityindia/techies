<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Class Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
			
				$("#addeditbutton").text("Add Class")
				$("#formactionadd").val("add");
				
				//Delete button function
				$('.classid').change(function() { 
 				    if ($('.classid:checked').length) { 
 				        $('#deleteButton').removeAttr('disabled'); 
 				    } else { 
 				        $('#deleteButton').attr('disabled', 'disabled'); 
				    } 
 				});
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$('#classname').val("");
					$('#classnumeric').val("");
					$('#note').val("");
					$("#addeditbutton").text("Add Class")
					$("#formactionadd").val("add");
 				}); 
			
				
				//editlink onclick function
				
				$('.editlink').click(function() { 
					
					var $this = $(this);
		            var classid = $this.data('p1');
		            var classname= $this.data('p2'); 
		            var classnumeric = $this.data('p3'); 
		            var note = $this.data('p4');
		            $("#cid").val(classid);
					$('#classname').val(classname);
					$('#classnumeric').val(classnumeric);
					$('#note').val(note);
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
    							<div class="form_success">Class/Classes deleted successfully</div>
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
       				
       				<h2>Class Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addclass" method="post" id="form1">
  						<input type="hidden" name="cid" id="cid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody>
    						<tr>
								<td class="llabel">Class Name<span class="required">*</span></td>
								<td>
									<input type="text" name="classname" id="classname"  class="simpletext" placeholder="Class name" required="required"/>
								</td>
								<td class="llabel">Class Numeric<span class="required">*</span></td>
								<td>
									<input type="text" name="classnumeric" id="classnumeric"  class="simpletext" placeholder="Class Numeric" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Note<span class="required">*</span></td>
								<td>
									<input type="text" name="note" id="note"  class="simpletext" placeholder="Note" required="required"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Class</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Classes Added</h3>
						<form action="addclass" method="post">
						<table class="info">
									<tr>
										<th>Class ID</th>
										<th>Class Name</th>
										<th>Class Numeric</th>
										<th>Note</th>
										<th>Delete Class</th>
										<th>Edit Class</th>
									</tr>

									<c:forEach var="cat" items="${requestScope.classbeans}">
										<tr onmouseover="this.style.backgroundColor='#ffff66';"
											onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>${cat.classId}</td>
											<td>${cat.className}</td>
											<td>${cat.classNumeric}</td>
											<td>${cat.note}</td>
											<td><input type="checkbox" name="classid"
												value="${cat.classId}" class="classid" /></td>
											<td><a href="javascript:;" data-p1="${cat.classId}"
												data-p2="${cat.className}" data-p3="${cat.classNumeric}"
												data-p4="${cat.note}" class="editlink">Edit</a></td>
										</tr>
									</c:forEach>
								</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Class</button>
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
