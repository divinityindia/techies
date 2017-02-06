<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: News Manager</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="../js/ac.js"></script>

</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.academiccalender==false}">
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
    							<div class="form_success">Academic calender deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  						</c:choose>
       				
       				<h2>Academic Calendar Manager</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addacademiccalender" method="post" id="form1" enctype="multipart/form-data">
  						<input type="hidden" name="acid" id="acid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody>
    						<tr>
								
								<td class="llabel">Branch<span class="required">*</span></td>
								<td>
									<input type="text" name="branch" id="branch"  class="simpletext" placeholder="For Branch" required="required"/>
								</td>
								<td class="llabel">Class<span class="required">*</span></td>
								<td>
									<input type="text" name="class" id="class"  class="simpletext" placeholder="For Class" required="required"/>
								</td>
							</tr>
							
							<tr>
								<td class="llabel">Upload Document<span class="required">*</span></td>
								<td>
									<input type="file" name="document" id="document"  class="simpletext" required="required"/>
								</td>
								<td class="llabel"></td>
								<td>
									
								</td>
							</tr>
							
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Academic Calender</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Academic Calenders Added</h3>
						<form action="addacademiccalender" method="post"  enctype="multipart/form-data">
						<table class="info">
							<tr>
								<th>Academic Calender ID</th>
								<th>Branch</th>
								<th>Class</th>
								<th>Document</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.acList}">
							<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
								<td>${cat.acid}</td>
								<td>${cat.branch}</td>
								<td>${cat.class1}</td>
								<td><a href="../../downloadacademiccalender?acid=${cat.acid}">${cat.documentName}</a></td>
								<td><input type="checkbox" name="acid" value="${cat.acid}" class="acid" /></td>
								<td><a href="javascript:;" data-p1="${cat.acid}" data-p2="${cat.branch}" data-p3="${cat.class1}" class="editlink">Edit</a></td>
							</tr>
							</c:forEach>
						</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Academic Calender</button>
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