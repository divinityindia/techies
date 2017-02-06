<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Change Main Administrator Password</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.changepassword==false}">
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
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">${param.message}</div>
  							</c:when>
  							<c:when test="${param.success eq 4}">
    							<div class="form_success">Something went wrong. Please try again.</div>
  							</c:when>
  						</c:choose>
       				
       				<h2>Change User name and Password</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="changepassword" method="post" id="form1">
  						<table> 
    						<tr>
								<td class="llabel">Current Username<span class="required">*</span></td>
								<td>
									<input type="text" name="cusername" id="cusername"  class="simpletext" placeholder="Current User Name" required="required"/>
								</td>
								<td class="llabel">Current Password<span class="required">*</span></td>
								<td>
									<input type="password" name="cpassword" id="cpassword"  class="simpletext" placeholder="Current Password" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">New Username<span class="required">*</span></td>
								<td>
									<input type="text" name="nusername" id="nusername"  class="simpletext" placeholder="New User Name" required="required"/>
								</td>
								<td class="llabel">New Password<span class="required">*</span></td>
								<td>
									<input type="password" name="npassword" id="npassword"  class="simpletext" placeholder="New Password" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Select Security Question<span class="required">*</span></td>
								<td>
									<select name="squestion" required="required" id="squestion">
										<option value="">---Select Question---</option>
										<option>In which city you were born?</option>
										<option>What is your favorite place to visit?</option>
										<option>In which Year you joined your first job?</option>
										<option>What is the name of your first school?</option>
										<option>What is the name of your pet?</option>
										<option>What is your favorite color?</option>
										<option>What is your father's middle name?</option>
									</select>
								</td>
								<td class="llabel">Answer<span class="required">*</span></td>
								<td>
									<input type="text" name="answer" id="answer"  class="simpletext" placeholder="Answer" required="required"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Submit</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
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
