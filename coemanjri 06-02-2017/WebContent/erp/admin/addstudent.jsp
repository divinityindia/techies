<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Add Student</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
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
<c:if test = "${right.addstudent==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Add New Student</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addstudent" method="post" id="form1" enctype="multipart/form-data">
  						<table> 
							<tr><th colspan="4"><b>Step 1: Student Details</b>&nbsp;&nbsp;&nbsp;<span id="prnexist" style="font-weight: bold;color: #A42D10;display: none;"></span></th></tr>
    						<tr>
								<td class="llabel">Name<span class="required">*</span></td>
								<td>
									<input type="text" name="studentname" id="studentname" placeholder="Student Name" class="simpletext">
								</td>
								<td class="llabel">PRN No.:</td>
								<td>
									<input type="text" id="prnno" name="prnno" maxlength="9" pattern="^[0-9]{8}[a-zA-Z]$" placeholder="Enter PRN no" id="prnno" title="Please Enter 9 character valid PRN No." autocomplete="off" class="simpletext">
									<img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display: none;"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Guardian</td>
								<td>
									<input type="text" name="guardianname" id="guardianname"  placeholder="Enter guardian name" class="simpletext">
								</td>
								<td class="llabel">Date of Birth<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="dateofbirth" id="datepicker-1" required="required">
								</td>
								
							</tr>
							<tr>
								<td class="llabel">Upload Photo</td>
								<td>
									<input type="file" class="simpletext" name="photo" id="photo">
								</td>
								<td class="llabel">Gender<span class="required">*</span></td>
								<td>
									<input type="radio" name="gender" value="male" style="display: inline" required="required"/>Male
                                    <input type="radio" name="gender" value="female" style="display: inline" required="required"/>Female
								</td>
							</tr>
							<tr>
								<td class="llabel">Blood Group</td>
								<td>
									<input type="text" name="bloodgroup" id="bloodgroup"  placeholder="Blood Group" class="simpletext">
								</td>
								<td class="llabel">Religion<span class="required">*</span></td>
								<td>
									<select name="religion" id="religion" required="required">
                                     		<option  value="">---Select Religion---</option>
                                     		<option>Hindu</option>
                                           	<option>Muslim</option>
                                           	<option>Christian</option>
                                           	<option>Buddhist</option>
                                           	<option>Jain</option>
                                           	<option>Sikh</option>
                                           	<option>Other</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Category<span class="required">*</span></td>
								<td>
									<select name="category" id="category" required="required">
                                     		<option selected="selected" value="">---Select Category---</option>
                                        	<option>General/OPEN</option>
                                        	<option>J & K Migrant</option>
                                        	<option>Lingayat Vani</option>
                                        	<option>Maratha</option>
                                        	<option>NT</option>
                                        	<option>NT-1</option>
                                        	<option>NT-1(NT-D)</option>
                                        	<option>NT-2</option>
                                        	<option>NT-2(NT-C)</option>
                                        	<option>NT-2(NT-D)</option>
                                        	<option>NT-A</option>
                                        	<option>NT-B</option>
                                        	<option>NT-C</option>
                                        	<option>NT-D</option>
                                        	<option>OBC</option>
                                        	<option>Raghuvanshi</option>
                                        	<option>SC</option>
                                        	<option>ST</option>
                                        	<option>SBC</option>
                                        	<option>VJ</option>
                                        	<option>VJ-NT</option>
                                        	<option>VJ-DT</option>
									</select>
								</td>
								<td class="llabel">Caste</td>
								<td>
									<input type="text" name="caste" id="caste"  placeholder="Caste" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Email Id<span class="required">*</span></td>
								<td>
									<input type="email" name="email" id="email"  placeholder="Email ID" class="simpletext" required="required">
								</td>
								<td class="llabel">Phone<span class="required">*</span></td>
								<td>
									<input type="tel" maxlength="20" class="simpletext" pattern="[0-9]*" title="Please enter valid Phone number" placeholder="Phone No." name="phone" id="phone" required="required">
								</td>
							</tr>
							<tr>
								<td class="llabel">Current Address<span class="required">*</span></td>
								<td>
									<textarea name="address" id="address" rows="5" placeholder="Current Address" class="simpletext" required="required"></textarea>
								</td>
								<td class="llabel">Permanent Address</td>
								<td>
									<textarea name="paddress" id="paddress" rows="5" placeholder="Permanent Address" class="simpletext"></textarea>
								</td>
							</tr>
							<tr>
								<td class="llabel">Current State<span class="required">*</span></td>
								<td>
									<select name="state" id="state" required="required">
                                     		<option  value="">---Select State---</option>
									</select>
								</td>
								<td class="llabel">Permanent State</td>
								<td>
									<select name="pstate" id="pstate">
                                     		<option  value="">---Select State---</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Current City<span class="required">*</span></td>
								<td>
									<select name="city" id="city" required="required">
                                     		<option  value="">---Select City---</option>
									</select>
								</td>
								<td class="llabel">Permanent State</td>
								<td>
									<select name="pcity" id="pcity">
                                     		<option  value="">---Select City---</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Pincode</td>
								<td>
									<input type="text" name="pincode" id="pincode" pattern="[0-9]{6}" title="Please enter valid Pincode number" maxlength="6" placeholder="Pincode" class="simpletext">
								</td>
								<td class="llabel">Pincode</td>
								<td>
									<input type="text" name="ppincode" id="ppincode" pattern="[0-9]{6}" title="Please enter valid Pincode number" maxlength="6" placeholder="Pincode" class="simpletext">
								</td>
							</tr>
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
							<tr>
								<td class="llabel">Semester<span class="required">*</span></td>
								<td>
									<select name="semester" id="semester" required="required">
                                     		<option  value="">---Select Semester---</option>
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
								<td class="llabel">Section</td>
								<td>
									<select name="section" id="section" >
                                     		<option  value="">---Select section---</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Roll No</td>
								<td>
									<input type="text" name="rollno" id="rollno"  placeholder="Roll No." class="simpletext">
								</td>
								<td class="llabel">Date of Admission<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="dateofadmission" id="datepicker-2" required="required">
								</td>
							</tr>
							<tr><th colspan="4"><b>Step 2: Parent Details</b></th></tr>
							<tr>
								<td class="llabel">Father Name<span class="required">*</span></td>
								<td>
									<input type="text" name="fathername" id="fathername"  placeholder="Father Name" class="simpletext" required="required">
								</td>
								<td class="llabel">Mother Name<span class="required">*</span></td>
								<td>
									<input type="text" name="mothername" id="mothername"  placeholder="Mother Name" class="simpletext" required="required">
								</td>
							</tr>
							<tr>
								<td class="llabel">Father Occupation</td>
								<td>
									<input type="text" name="focc" id="focc"  placeholder="Father Occupation" class="simpletext">
								</td>
								<td class="llabel">Mother Occupation</td>
								<td>
									<input type="text" name="mocc" id="mocc"  placeholder="Mother Occupation" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Guardian Phone no.<span class="required">*</span></td>
								<td>
									<input type="tel" maxlength="20" class="simpletext" pattern="[0-9]*" title="Please enter valid Phone number" placeholder="Phone No." name="gphone" id="gphone" required="required">
								</td>
								<td class="llabel">Guardian Detail Address</td>
								<td>
									<textarea name="gaddress" id="gaddress" rows="5" placeholder="Detail Address" class="simpletext"></textarea>
								</td>
							</tr>
							<tr>
								<td class="llabel">Upload Photo</td>
								<td>
									<input type="file" class="simpletext" name="gphoto" id="gphoto">
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="submitbtn">Add Student</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="reset">Reset</button></td>
							</tr>
						</table>
						</form>
  						</div>
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
