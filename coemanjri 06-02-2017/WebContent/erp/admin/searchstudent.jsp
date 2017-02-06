<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Search Student</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/student.js"></script>

<script type="text/javascript">
$(function() {  
	  $( "#datepicker-1" ).datepicker({
		  changeMonth: true,
	      changeYear: true,
	      yearRange: "1942:2050",
		  dateFormat:"dd/mm/yy"
	  });
	  $( "#datepicker-2" ).datepicker({
		  changeMonth: true,
	      changeYear: true,
	      yearRange: "1942:2050",
		  dateFormat:"dd/mm/yy"
	  });
	  
	});
</script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.searchstudent==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Search Student</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form id="form1">
  						<table> 
  							<tbody id="searchbyay">
    						<tr>
    							<td class="llabel">Academic Year<span class="required">*</span></td>
								<td>
									<select name="academicyear" id="academicyear" required="required">
                                     		<option  value="">---Academic Year---</option>
                                     		<option>2010-2011</option>
                                     		<option>2011-2012</option>
                                     		<option>2012-2013</option>
                                     		<option>2013-2014</option>
                                     		<option>2014-2015</option>
                                     		<option>2015-2016</option>
                                     		<option>2016-2017</option>
                                     		<option>2017-2018</option>
                                     		<option>2018-2019</option>
                                     		<option>2019-2020</option>
                                     		<option>2020-2021</option>
                                     		<option>2021-2022</option>
                                     		<option>2022-2023</option>
                                     		<option>2023-2024</option>
                                     		<option>2024-2025</option>
                                     		<option>2025-2026</option>
                                     		<option>2026-2027</option>
                                     		<option>2027-2028</option>
                                     		<option>2028-2029</option>
                                     		<option>2029-2030</option>
                                     		<option>2030-2031</option>
                                     		<option>2031-2032</option>
                                     		<option>2032-2033</option>
                                     		<option>2033-2034</option>
                                     		<option>2034-2035</option>
                                     		<option>2035-2036</option>
                                     		<option>2036-2037</option>
                                     		<option>2037-2038</option>
                                     		<option>2038-2039</option>
									</select>
								</td>
								<td class="llabel">Course<span class="required">*</span></td>
								<td>
									<select name="course" id="course" required="required">
                                     		<option  value="">---Select Course---</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Branch<span class="required">*</span></td>
								<td>
									<select name="branch" id="branch" required="required">
                                     		<option  value="">---Select Branch---</option>
									</select>
								</td>
								<td class="llabel">Class<span class="required">*</span></td>
								<td>
									<select name="class" id="class" required="required">
                                     		<option  value="">---Select class---</option>
									</select>
								</td>
							</tr>
							</tbody>
							<tbody id="searchbyprn">
							<tr><th colspan="4"><b>Search By PRN:</b> <input type="checkbox" name="chkprnno" id="chkprnno"  class="simpletext"></th></tr>
							<tr>
								<th colspan="4">
									<input type="text" id="srchprnno" name="srchprnno" maxlength="9" pattern="^[0-9]{8}[a-zA-Z]$" placeholder="Enter PRN no" id="prnno" title="Please Enter 9 character valid PRN No." class="simpletext" disabled="disabled">	
								</th>
							</tr>
							</tbody>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="button" id="searchbtn">Search</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="reset">Reset</button></td>
							</tr>
							<tr>
								<td></td><td></td><td><img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display: none;"/></td><td></td>
							</tr>
						</table>
						</form>
  						</div>
  						<div id="block2">
  							<table id="studentprofile">
								 <tr><th colspan="5"><h2>Click on Student Name to see full profile</h2></th></tr>							
  							</table>
  						</div>
  						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
$('#chkprnno').change(function() {
    $('#srchprnno').attr('disabled', !this.checked);
    $('#srchprnno').attr('required', this.checked);
    $('#academicyear').attr('disabled', this.checked);
    $('#academicyear').attr('required', !this.checked);
    $('#course').attr('disabled', this.checked);
    $('#course').attr('required', !this.checked);
    $('#branch').attr('disabled', this.checked);
    $('#branch').attr('required', !this.checked);
    $('#class').attr('disabled', this.checked);
    $('#class').attr('required', !this.checked);
    $('#success').empty();
});		
</script>	
</body>
</html>
