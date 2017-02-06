<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: News and Events Manager</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
			
 				$('.eventid').change(function() { 
 				    if ($('.eventid:checked').length) { 
 				        $('#deleteButton').removeAttr('disabled'); 
 				    } else { 
 				        $('#deleteButton').attr('disabled', 'disabled'); 
				    } 
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
    							<div class="form_success">Event/Events deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Please select at least one event to delete!</div>
  							</c:when>
  						</c:choose>
       				
       				<h2>News and Events Manager</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="newsandevent" method="post" id="form1" enctype="multipart/form-data">
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody>
    						<tr>
								<td class="llabel">Event Heading<span class="required">*</span></td>
								<td>
									<input type="text" name="eventheading" id="eventheading"  class="simpletext" placeholder="Event Heading" required="required"/>
								</td>
								<td class="llabel">Event Details<span class="required">*</span></td>
								<td>
									<input type="text" name="eventdetails" id="eventdetails"  class="simpletext" placeholder="Event Details" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Upload Document</td>
								<td>
									<input type="file" name="document" id="document"  class="simpletext"/>
								</td>
								<td class="llabel">Link if any</td>
								<td>
									<input type="text" name="eventlink" id="eventlink"  class="simpletext" placeholder="Event link if any"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit">Add Event</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Events Added</h3>
						<form action="newsandevent" method="post" enctype="multipart/form-data">
						<table class="info">
									<tr>
										<th>Event ID</th>
										<th>Event Heading</th>
										<th>Delete Events</th>
									</tr>

									<c:forEach var="cat" items="${requestScope.eventList}">
										<tr onmouseover="this.style.backgroundColor='#ffff66';"
											onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>${cat.key}</td>
											<td>${cat.value}</td>
											<td><input type="checkbox" name="eventid"
												value="${cat.key}" class="eventid" /></td>
										</tr>
									</c:forEach>
								</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Events</button>
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
