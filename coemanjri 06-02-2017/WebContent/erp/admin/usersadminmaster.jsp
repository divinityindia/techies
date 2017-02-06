<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Create User(Admin)</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.user==false}">
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
    							<div class="form_success">Users/user deleted successfully</div>
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
       				
       				<h2>User Master</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="createuser" method="post" id="form1">
  						<input type="hidden" name="deptidh" id="deptidh" value="${deptid}"/>
  						<input type="hidden" name="uid" id="uid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
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
                                     		<option value="Administrator">Administrator</option>
                                     		<option>Teacher</option>
                                     		<option>Student</option>
                                     		<option>Parent</option>
									</select>
								</td>
							</tr>
    						<tr>
								<td class="llabel">User Name<span class="required">*</span></td>
								<td>
									<input type="text" name="username" id="username"  class="simpletext" placeholder="User Name" required="required"/>
								</td>
								<td class="llabel">Password<span class="required">*</span></td>
								<td>
									<input type="password" name="password" id="password"  class="simpletext" placeholder="Password" required="required"/>
								</td>
							</tr>	
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add User</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Users Added</h3>
						<form action="createuser" method="post">
						<table class="info">
							<tr>
								<th>User ID</th>
								<th>Department</th>
								<th>User Name</th>
								<th>Category</th>
								<th>Delete User</th>
								<th>Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.userbeans}">
                                            	<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
													<td>${cat.userid}</td><td>${cat.deptName}</td><td>${cat.username}</td><td>${cat.category}</td><td><input type="checkbox" name="userid" value="${cat.userid}" class="userid"/></td><td><a href="javascript:;" data-p1="${cat.userid}" data-p2="${cat.deptid}" data-p3="${cat.username}" data-p4="${cat.category}" class="editlink">Edit</a></td>
												</tr>
                                            </c:forEach>
						</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete User</button>
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
<script type="text/javascript">
$(function(){
	$.ajax({
	    type: "GET",
	    url: "../showdropdowndepts",                
	    dataType: "json",
	    success:function(data){
	    	
	    	if(data){
	    		var dept=$("#dept");
	    		var deptid=$("#deptidh").val();
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


$("#addeditbutton").text("Add User")
$("#formactionadd").val("add");

//Delete button function
$('.userid').change(function() {
	if ($('.userid:checked').length) {
		$('#deleteButton').removeAttr('disabled');
	} else {
		$('#deleteButton').attr('disabled', 'disabled');
	}
});


//editlink onclick function

$('.editlink').click(function() {

	$("#dept").prop('selectedIndex', 0);
	$("#category").prop('selectedIndex', 0);
	var $this = $(this);
	var userid = $this.data('p1');
	var deptid = $this.data('p2');
	var username = $this.data('p3');
	var category = $this.data('p4');
	$("#uid").val(userid);
	$('#dept option[value='+deptid+']').prop('selected',true);
	$('#category option[value='+category+']').prop("selected", true);
	$('#username').val(username);
	$('#password').val('');
	$("#addeditbutton").text("Save");
	$("#formactionadd").val("edit");
});

//Reset button function
$('#resetbutton').click(function() {
	$("#dept").prop('selectedIndex', 0);
	$("#category").prop('selectedIndex', 0);
	$('#username').val('');
	$('#password').val('');
	$("#addeditbutton").text("Add User")
	$("#formactionadd").val("add");
});


</script>
</body>
</html>
