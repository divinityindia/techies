<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Section Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
			
				$("#addeditbutton").text("Add Section")
				$("#formactionadd").val("add");
				
				
				//Delete button function
				$('.sectionid').change(function() { 
 				    if ($('.sectionid:checked').length) { 
 				        $('#deleteButton').removeAttr('disabled'); 
 				    } else { 
 				        $('#deleteButton').attr('disabled', 'disabled'); 
				    } 
 				});
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$('#sectionname').val("");
					$('#note').val("");
					$("#addeditbutton").text("Add Section")
					$("#formactionadd").val("add");
 				}); 
				
				
				//editlink onclick function
				
				$('.editlink').click(function() { 
					
					var $this = $(this);
		            var sectionid = $this.data('p1');
		            var sectionname= $this.data('p2'); 
		            var note = $this.data('p3'); 
		            
		            $("#sid").val(sectionid);
					$('#sectionname').val(sectionname);
					$('#note').val(note);
					$("#addeditbutton").text("Save");
					$("#formactionadd").val("edit");
 				}); 
			
 			}); 
		</script> 
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.section==false}">
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
    							<div class="form_success">Section/Sections deleted successfully</div>
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
       				
       				<h2>Section Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addsection" method="post" id="form1">
  						<input type="hidden" name="sid" id="sid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody>
    						<tr>
								<td class="llabel">Section Name<span class="required">*</span></td>
								<td>
									<input type="text" name="sectionname" id="sectionname"  class="simpletext" placeholder="Section name" required="required"/>
								</td>
								<td class="llabel">Note<span class="required">*</span></td>
								<td>
									<input type="text" name="note" id="note"  class="simpletext" placeholder="Note" required="required"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Section</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Sections Added</h3>
						<form action="addsection" method="post">
						<table class="info">
									<tr>
										<th>Section ID</th>
										<th>Section Name</th>
										<th>Note</th>
										<th>Delete Section</th>
										<th>Edit Section</th>
									</tr>

									<c:forEach var="cat" items="${requestScope.sectionbeans}">
										<tr onmouseover="this.style.backgroundColor='#ffff66';"
											onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>${cat.sectionId}</td>
											<td>${cat.sectionName}</td>
											<td>${cat.note}</td>
											<td><input type="checkbox" name="sectionid"
												value="${cat.sectionId}" class="sectionid" /></td>
											<td><a href="javascript:;" data-p1="${cat.sectionId}"
												data-p2="${cat.sectionName}" data-p3="${cat.note}"
												class="editlink">Edit</a></td>
										</tr>
									</c:forEach>
								</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Section</button>
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
