<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Add Employee</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" type="text/css" href="../css/addemployee.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        $(function() {  
            $( "#datepicker-1" ).datepicker({
            	beforeShow: function() {
                    setTimeout(function(){
                        $('.ui-datepicker').css('z-index', 99999999999999);
                    }, 0);
                },
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#datepicker-2" ).datepicker({
            	beforeShow: function() {
                    setTimeout(function(){
                        $('.ui-datepicker').css('z-index', 99999999999999);
                    }, 0);
                },
            	dateFormat:"dd/MM/yyyy",
            	changeMonth: true,
      	      changeYear: true,
    	      yearRange: "1942:2050",
    		  dateFormat:"dd/mm/yy"
            });  
            $( "#fromdate" ).datepicker({
            	beforeShow: function() {
                    setTimeout(function(){
                        $('.ui-datepicker').css('z-index', 99999999999999);
                    }, 0);
                },
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#todate" ).datepicker({
            	beforeShow: function() {
                    setTimeout(function(){
                        $('.ui-datepicker').css('z-index', 99999999999999);
                    }, 0);
                },
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#krdate" ).datepicker({
            	beforeShow: function() {
                    setTimeout(function(){
                        $('.ui-datepicker').css('z-index', 99999999999999);
                    }, 0);
                },
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
         });
        </script>
<script src="../js/addemployee.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.addemployee==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Add New Employee</h2>
       				<div id="success" class="success"></div>
  					<div id="qualsuccess" class="success"></div>
  					<div id="certsuccess"  class="success"></div>
  					<div id="expsuccess"  class="success"></div>
  					<div id="krsuccess"  class="success"></div>
  					<input type="hidden" class="fid" value="0" name="fid"></input>
  					<div id="block1">
  						<form action="addemployee" method="post" id="form1" enctype="multipart/form-data">
  						<table> 
							<tr><th colspan="4"><font style="font-weight: bold;">Step 1: Employee Details Entry</font></th></tr>
    						<tr>
								<td colspan="4">
								<table>
									<tr><td>Name:<span class="required">*</span></td><td>
									<select name="salutation" id="salutation" required="required">
										<option value="" selected="selected">Select</option>
										<option value="Dr.">Dr.</option>
										<option value="Prof.">Prof.</option>
										<option value="Mr.">Mr.</option>
										<option value="Mrs.">Mrs.</option>
										<option value="Miss.">Miss.</option>
									</select></td>
									<td>
										<input type="text" name="fname" id="fname" placeholder="First Name"  required="required">
										<input type="text" name="mname" id="mname" placeholder="Middle Name"  required="required">
										<input type="text" name="lname" id="lname" placeholder="Last Name"  required="required">
									</td>
									
									</tr>
								</table>
								</td>
							</tr>
    						<tr>
								<td class="llabel">BCUD ID</td>
								<td>
									<input type="text" name="bcud" id="bcud" placeholder="BCUD ID" class="simpletext">
								</td>
								<td class="llabel"></td>
								<td>
									
								</td>
							</tr>
    						<tr>
								<td class="llabel">PAN No</td>
								<td>
									<input type="text" name="panno" pattern="[A-Za-z]{5}\d{4}[A-Za-z]{1}" id="panno" placeholder="PAN Number" class="simpletext">
								</td>
								<td class="llabel">Aadhar No</td>
								<td>
									<input type="text" name="aadharno" pattern="\d{12}" id="aadharno" placeholder="Aadhar Number" maxlength="12" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Upload Photo</td>
								<td>
									<input type="file" class="simpletext" name="photo" id="photo">
								</td>
								<td class="llabel">Date of Birth<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="dob" id="datepicker-1" required="required">
								</td>
								
							</tr>
							<tr>
								<td class="llabel">Gender<span class="required">*</span></td>
								<td>
									<input type="radio" name="gender" value="male" style="display: inline" required="required"/>Male
                                    <input type="radio" name="gender" value="female" style="display: inline" required="required"/>Female
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
                                        	<option>J &amp; K Migrant</option>
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
								<td class="llabel">Caste<span class="required">*</span></td>
								<td>
									<input type="text" name="caste" id="caste"  placeholder="Caste" class="simpletext">
								</td>
							</tr>
							
							<tr>
								<td class="llabel">Marital Status</td>
								<td>
									<select name="mstatus" id="mstatus">
										<option selected="selected" value="">---Select Status---</option>
										<option value="Married">Married</option>
										<option value="Single">Single</option>
										<option value="Divorsed">Divorsed</option>
									</select>
								</td>
								<td class="llabel">Phone<span class="required">*</span></td>
								<td>
									<input type="tel" maxlength="20" class="simpletext" pattern="[0-9]*" title="Please enter valid Phone number" placeholder="Phone No." name="phone" id="phone" required="required">
								</td>
							</tr>
							<tr>
								<td class="llabel">Email Id<span class="required">*</span></td>
								<td>
									<input type="email" name="email" id="email"  placeholder="Email ID" class="simpletext" required="required">
								</td>
								<td class="llabel">Website</td>
								<td>
									<input type="text" name="website" id="website"  placeholder="Website URL" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Current Address<span class="required">*</span></td>
								<td>
									<textarea name="caddress" id="caddress" rows="5" placeholder="Current Address" class="simpletext" required="required"></textarea>
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
								<td class="llabel">Permanent City</td>
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
							<tr><th colspan="4"><font style="font-weight: bold;">Appointment Details</font></th></tr>
							<tr>
								<td class="llabel">Appointed for Department<span class="required">*</span></td>
								<td>
									<select name="branch" id="branch" required="required">
                                     		<option  value="">---Select Department---</option>
									</select>
								</td>
								<td class="llabel">Joining Post<span class="required">*</span></td>
								<td>
									<select name="post" id="post" required="required">
										<option selected="selected" value="">---Select Post---</option>
										<option>Principal</option>
										<option>Vice-Principal</option>
										<option>HOD</option>
										<option>Professor</option>
										<option>Professor by Promo</option>
										<option>Asst. Professor</option>
										<option>Asst. Professor by Promo</option>
										<option>Lecturer</option>
										<option>Sr. Lecturer</option>
										<option>Lecturer Sel Gr.</option>
										<option>Lab Assistant</option>
										<option>Programmer</option>
										<option>Clerk</option>
										<option>Sr. Clerk</option>
										<option>Technical Asst.</option>
										<option>Peon</option>
										<option>Librarian</option>
										<option>Registrar</option>
										<option>Store In Charge</option>
										<option>T and P Officer</option>
										<option>Phy. Dir. Edu.</option>
										<option>Board of Director</option>
										<option>Management Committee</option>
										<option>Office Staff</option>
										<option>Other</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Date of Joining<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="doj" id="datepicker-2" required="required">
								</td>
								<td class="llabel">Nature of Appointment<span class="required">*</span></td>
								<td>
									<select name="noa" id="noa" required="required">
										<option selected="selected" value="">---Select---</option>
										<option>Temporary</option>
										<option>Permanent</option>
										<option>Probation</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Nature of Job<span class="required">*</span></td>
								<td>
									<select name="noj" id="noj" required="required">
										<option selected="selected" value="">---Nature of job---</option>
										<option value="Teaching">Teaching</option>
										<option value="Non-Teaching">Non-Teaching</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="submitbtn">Add Employee</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="reset">Reset</button></td>
							</tr>
						</table>
						</form>
  					</div>
       			</div>
       			<div id="block2">
       				<form action="addemployeequal" method="post" id="form2">
       					<table>
								<tr><th colspan="8"><font style="font-weight: bold;">Step 2: Qualification Details</font></th></tr>
								<tr><th colspan="8">Educational Details</th></tr>
								<tr>
									<td class="clabel">Check</td>
									<td class="clabel">Degree</td>
									<td class="qlabel">Specialization</td>
									<td class="qlabel">Institute</td>
									<td class="qlabel">University</td>
									<td class="qlabel">Passout Yr</td>
									<td class="qlabel">%/Grade</td>
									<td class="qlabel">Achievement</td>
								</tr>
								<tr>
									<td class="clabel">
										<input type="checkbox" name="qual1" id="qual1" value="Undergraduate"><br>UG
										<input type="hidden" class="fid" value="0" name="fid"></input>
									</td>
									<td class="qlabel">
										<select name="udegree" id="udegree" disabled="disabled" class="sqtext">
											<option selected="selected" value="">Select</option>
											<option value="B.E.">B.E.</option>
											<option value="B.Tech.">B.Tech.</option>
											<option value="B.Sc.">B.Sc.</option>
											<option value="B.C.A.">B.C.A.</option>
											<option value="B.C.S.">B.C.S.</option>
											<option value="B.Lib.">B.Lib.</option>
											<option value="B.A">B.A</option>
											<option value="B.Com">B.Com</option>
											<option value="Diploma">Diploma</option>
											<option value="H.S.C.">H.S.C.</option>
											<option value="S.S.C.">S.S.C.</option>
											<option value="I.T.I">I.T.I</option>
											<option value="Other">Other</option>
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="uspl" id="uspl" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="uinst" id="uinst" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="uuniv" id="uuniv" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="upyr" id="upyr" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="uper" id="uper" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="uachiev" id="uachiev" disabled="disabled" class="qtext">
									</td>
								</tr>
								<tr>
									<td class="clabel"><input type="checkbox" name="qual2" id="qual2" value="Postgraduate"><br>PG</td>
									<td class="qlabel">
										<select name="pdegree" id="pdegree" disabled="disabled" class="sqtext">
											<option selected="selected" value="">Select</option>
											<option value="M.E.">M.E.</option>
											<option value="M.Tech">M.Tech.</option>
											<option value="M.Sc.">M.Sc.</option>
											<option value="M.Lib.">M.Lib.</option>
											<option value="M.A">M.A</option>
											<option value="M.B.A">M.B.A</option>
											<option value="M.Com">M.Com</option>
											<option value="Other">Other</option>
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="pspl" id="pspl" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="pinst" id="pinst" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="puniv" id="puniv" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="ppyr" id="ppyr" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="pper" id="pper" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="pachiev" id="pachiev" disabled="disabled" class="qtext">
									</td>
								</tr>
								<tr>
									<td class="clabel"><input type="checkbox" name="qual3" id="qual3" value="Post Postgraduate"><br>PPG</td>
									<td class="qlabel">
										<select name="ppdegree" id="ppdegree" disabled="disabled" class="sqtext">
											<option selected="selected" value="">Select</option>
											<option value="Ph.D.">Ph.D.</option>
											<option value="M.Phil">M.Phil</option>
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="ppspl" id="ppspl" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="ppinst" id="ppinst" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="ppuniv" id="ppuniv" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="pppyr" id="pppyr" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="ppper" id="ppper" disabled="disabled" class="qtext">
									</td>
									<td class="qlabel">
										<input type="text" name="ppachiev" id="ppachiev" disabled="disabled" class="qtext">
									</td>
								</tr>
								</table>
								<table>
								<tr><th colspan="8">Certification Details</th></tr>
								<tr>
									<td  colspan="8">
										<table>
											<tr>
												<td class="clabel">Check</td>
												<td class="cerlabel">Course Name</td>
												<td class="cerlabel">Institute/University</td>
												<td class="cerlabel">Duration in months</td>
												<td class="cerlabel">Course Content</td>			
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert1" id="cert1" value="1">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname1" id="crsname1" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst1" id="cinst1" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration1" id="cduration1" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent1" id="ccontent1" disabled="disabled">
												</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert2" id="cert2" value="2">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname2" id="crsname2" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst2" id="cinst2" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration2" id="cduration2" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent2" id="ccontent2" disabled="disabled">
												</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert3" id="cert3" value="3">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname3" id="crsname3" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst3" id="cinst3" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration3" id="cduration3" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent3" id="ccontent3" disabled="disabled">
												</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert4" id="cert4" value="4">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname4" id="crsname4" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst4" id="cinst4" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration4" id="cduration4" disabled="disabled">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent4" id="ccontent4" disabled="disabled">
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan="8" style="text-align: center;"><button type="submit" id="save2">Save Details</button></td>
								</tr>
							</table>
       				</form>
       			</div>
       			<div id="block3" style="text-align: center;">
  							<form action="addemployeeexp" method="post" id="form3">
  							<table>
								<tr>
								<th colspan="4">
									Step 3: Experience Details
									<input type="hidden" class="fid" value="0" name="fid"></input>
								</th></tr>
								<tr>
									<td class="exlabel">Organization:<span class="required">*</span></td>
									<td>
										<input type="text" name="eorg" id="eorg"  placeholder="Organization" class="simpletext" required="required">
									</td>
									<td class="exlabel">Website</td>
									<td>
										<input type="text" name="eurl" id="eurl"  placeholder="Website URL" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Designation:<span class="required">*</span></td>
									<td>
										<input type="text" name="designation" id="designation"  placeholder="Designation" class="simpletext" required="required">
									</td>
									<td class="exlabel">Job Profile</td>
									<td>
										<input type="text" name="jobprofile" id="jobprofile"  placeholder="Job Profile" class="simpletext">
									</td>
									
								</tr>
								<tr>
									<td class="exlabel">From:</td>
									<td>
										<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="fromdate" id="fromdate" readonly="readonly">
									</td>
									<td class="exlabel">To:</td>
									<td>
										<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="todate" id="todate" readonly="readonly">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Achievement:</td>
									<td>
										<input type="text" name="achi" id="achi"  placeholder="Achievement" class="simpletext">
									</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><button type="submit" id="save3">Save Details</button></td>
								</tr>
								<tr>
									<td class="exlabel" colspan="4" ><span class="required">*</span> Fields are compulsory</td>
								</tr>
								<tr>
									<td class="exlabel" colspan="4" ><input type="hidden" name="fid" id="fid">Click Here: <a href="javascript:;" id="krlink">To add Knowledge Repository of the Same faculty</a></td>
								</tr>
							</table>
							</form>
						</div>
						<div id="block4">
  							<form action="addemployeekr" method="post" id="form4"  enctype="multipart/form-data">
  							<table>
								<tr><th colspan="4">
									Step 4: Information of Knowledge Repository
									<input type="hidden" class="fid" value="0" name="fid"></input>									
								</th></tr>
								<tr>
									<td class="exlabel">Headline:<span class="required">*</span></td>
									<td>
										<input type="text" name="headline" id="headline"  placeholder="Headline" class="simpletext" required="required">
									</td>
									<td class="exlabel">Category</td>
									<td>
										<select name="krcategory" id="krcategory">
												<option selected="selected" value="">Select</option>
												<option>Publication</option>
												<option>Presentation</option>
												<option>Workshop/Seminar Attended</option>
												<option>Book Published</option>
												<option>Guest Lecture Delivered</option>
												<option>Petant</option>
												<option>Project</option>
												<option>Seminar</option>
												<option>Conference Attended</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="exlabel">Publication:</td>
									<td>
										<input type="text" name="publication" id="publication"  placeholder="Publication" class="simpletext">
									</td>
									<td class="exlabel">Author:</td>
									<td>
										<input type="text" name="author" id="author"  placeholder="Author" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Date:</td>
									<td>
										<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="krdate" id="krdate" readonly="readonly">
									</td>
									<td class="exlabel">URL:</td>
									<td>
										<input type="text" name="kurl" id="kurl"  placeholder="URL" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Article Upload:</td>
									<td>
										<input type="file" name="articlefile" id="articlefile" class="simpletext">
									</td>
									<td class="exlabel">Keywords:</td>
									<td>
										<input type="text" name="keywords" id="keywords"  placeholder="Keywords" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Content:</td>
									<td>
										<input type="text" name="content" id="content1"  placeholder="Content" class="simpletext">
									</td>
									<td class="exlabel">Notes:</td>
									<td>
										<input type="text" name="notes" id="notes"  placeholder="Notes" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Priority:</td>
									<td>
										<select name="priority" id="priority">
												<option selected="selected" value="">Select</option>
												<option>Business</option>
												<option>Urjent</option>
												<option>High</option>
												<option>Low</option>
										</select>
									</td>
									<td class="exlabel">Guide(For Seminar/Project):</td>
									<td>
										<input type="text" name="guide" id="guide"  placeholder="Guide" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Co-Guide:</td>
									<td>
										<input type="text" name="coguide" id="coguide"  placeholder="Co - Guide" class="simpletext">
									</td>
									<td class="exlabel">Team Size:</td>
									<td>
										<input type="text" name="tsize" id="tsize"  placeholder="Team Size" class="simpletext">
									</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><button type="submit" id="save3">Save Details</button></td>
								</tr>
								<tr>
									<td  class="exlabel" colspan="4" >* Fields are compulsory</td>
								</tr>
							</table>
							</form>
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
<script>
$(function(){
	$.ajax({
	    type: "GET",
	    url: "../showdropdowndepts",                
	    dataType: "json",
	    success:function(data){
	    	
	    	if(data){
	    		var branch=$("#branch");
	    		
	    		$.each(data, function(k, v) {
	    			 $('<option>').val(k).text(v).appendTo(branch); 
	    		  });
	        }
	    },
	    error:function(){
	        
	    } 

	});
});

</script>		
</body>
</html>
