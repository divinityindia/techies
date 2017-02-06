<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Department Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#addeditbutton").text("Add Branch")
		$("#formactionadd").val("add");

		//Delete button function
		$('.branchid').change(function() {
			if ($('.branchid:checked').length) {
				$('#deleteButton').removeAttr('disabled');
			} else {
				$('#deleteButton').attr('disabled', 'disabled');
			}
		});

		//Reset button function
		$('#resetbutton').click(function() {
			$('#branchname').val("");
			$("#addeditbutton").text("Add Branch")
			$("#formactionadd").val("add");
		});

		//editlink onclick function

		$('.editlink').click(function() {

			var $this = $(this);
			var branchid = $this.data('p1');
			var branchname = $this.data('p2');
			$("#bid").val(branchid);
			$('#branchname').val(branchname);
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
    							<div class="form_success">Branch/Branches deleted successfully</div>
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
       				
       				<h2>Branch Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addbranch" method="post" id="form1">
  						<input type="hidden" name="bid" id="bid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
    						<tr>
								<td class="llabel">Branch Name<span class="required">*</span></td>
								<td>
									<input type="text" name="branchname" id="branchname"  class="simpletext" placeholder="Branch name" required="required"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Branch</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Branches Added</h3>
						<form action="addbranch" method="post">
						<table class="info">
							<tr>
								<th>Branch ID</th>
								<th>Branch Name</th>
								<th>Delete Branch</th>
								<th>Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.branchbeans}">
                                            	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
													<td>${cat.branchid}</td><td>${cat.branchName}</td><td><input type="checkbox" name="branchid" value="${cat.branchid}" class="branchid"/></td><td><a href="javascript:;" data-p1="${cat.branchid}" data-p2="${cat.branchName}" class="editlink">Edit</a></td>
												</tr>
                                            </c:forEach>
						</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Branch</button>
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
