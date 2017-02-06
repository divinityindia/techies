<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <!-- App Favicon icon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App Title -->
        <title>:: Add Teacher</title>

        <!-- Plugins css -->
       
       <!--  <link href="../assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet"> -->

       <!--  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" /> -->
        <!-- <link href="../assets/css/menu.css" rel="stylesheet" type="text/css" /> -->
        <!-- <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" /> -->
        <link href="../assets/css/table.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="../assets/css/addfaculty.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizr.min.js"></script>
        
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript">
        $(function() {  
            $( "#datepicker-1" ).datepicker({
            	dateFormat:"dd/MM/yyyy"
            });
            $( "#datepicker-2" ).datepicker({
            	dateFormat:"dd/MM/yyyy"
            });  
            $( "#fromdate" ).datepicker({
            	dateFormat:"dd/MM/yyyy"
            });
            $( "#todate" ).datepicker({
            	dateFormat:"dd/MM/yyyy"
            });
            $( "#krdate" ).datepicker({
            	dateFormat:"dd/MM/yyyy"
            });
         });
        </script>
        <script src="../assets/js/addfaculty.js"></script>
       
    </head>


    <body>

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>
	<div class="wrapper">
    	<div class="container">

           <!-- Page-Title -->
          
        	<div class="row">
            	<div class="col-sm-12">
                	<div class="card-box">
                    	
  						<div id="success" style="display: none;color: tomato;font-weight: bold;font-size: large;"></div>
  						<div id="qualsuccess" style="display: none;color: tomato;font-weight: bold;font-size: large;"></div>
  						<div id="certsuccess" style="display: none;color: tomato;font-weight: bold;font-size: large;"></div>
  						<input type="hidden" id="fid" value="0" name="fid"></input>
  						<div id="block1">
  						<form action="addfaculty" method="post" id="form1" enctype="multipart/form-data">
  						<table> 
							<tr><th colspan="4">Step 1: Faculty Details Entry</th></tr>
    
							<tr>
								<td colspan="4">
								<table>
									<tr><td>Name:<font color="tomato">*</font></td><td>
									<select name="salutation" id="salutation" required="required">
										<option value="" selected="selected">Select</option>
										<option value="Mr.">Mr.</option>
										<option value="Mrs.">Mrs.</option>
										<option value="Miss.">Miss.</option>
										<option value="Dr.">Dr.</option>
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
								<td>
									Upload Photo:
								</td>
								<td colspan="3">
									<input type="file" name="photo" id="photo" style="width: 90%">
								</td>
							</tr>
							<tr>
								<td>PAN No.:</td>
								<td>
									<input type="text" name="panno" pattern="[A-Za-z]{5}\d{4}[A-Za-z]{1}" id="panno" placeholder="PAN Number" style="width: 90%" maxlength="10">
								</td>
								<td class="left">Aadhar No.:</td>
								<td>
									<input type="text" name="aadharno" pattern="\d{12}" id="aadharno" placeholder="Aadhar Number" style="width: 90%" maxlength="12">
								</td>
							</tr>
							<tr>
								<td>Permanent Address:</td>
								<td>
									<textarea name="paddress" id="paddress"></textarea>
								</td>
								<td class="left">Current Address:<font color="tomato">*</font></td>
								<td>
									<textarea name="caddress" id="caddress" required="required"></textarea>
								</td>
							</tr>
							<tr>
								<td>State:</td>
								<td>
									<select name="pstate" id="pstate" style="width: 90%">
										<option selected="selected" value="">Select State</option>
									</select><br>
								</td>
								<td class="left">State:<font color="tomato">*</font></td>
								<td>
									<select name="state" id="state" style="width: 90%" required="required">
										<option selected="selected" value="">Select State</option>
									</select><br>
								</td>
							</tr>
							<tr>
								<td>City:</td>
								<td>
									<select name="pcity" id="pcity" style="width: 90%">
										<option selected="selected" value="">Select City</option>
									</select><br>
								</td>
								<td class="left">City:<font color="tomato">*</font></td>
								<td>
									<select name="city" id="city" style="width: 90%" required="required">
										<option selected="selected" value="">Select City</option>
									</select><br>
								</td>
							</tr>
							<tr>
								<td>Pin:</td>
								<td>
									<input type="text" name="ppin" id="ppin" pattern="\d{6}" placeholder="6 digit Pincode" style="width: 90%" maxlength="6">
								</td>
								<td class="left">Pin:<font color="tomato">*</font></td>
								<td>
									<input type="text" name="cpin" id="cpin" pattern="\d{6}" placeholder="6 digit Pincode" style="width: 90%" required="required" maxlength="6">
								</td>
							</tr>
							<tr>
								<td>Date of Birth:<font color="tomato">*</font></td>
								<td>
									<input type="text" name="dob" id="datepicker-1" placeholder="Date of Birth" style="width: 90%" required="required"  readonly="readonly">
								</td>
								<td class="left">Gender:<font color="tomato">*</font></td>
								<td>
									<select name="gender" id="gender" style="width: 90%" required="required">
										<option selected="selected" value="">Select Gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>Religion:<font color="tomato">*</font></td>
								<td>
									<select name="religion" id="religion" style="width: 90%" required="required">
										<option selected="selected" value="">Select Religion</option>
										<option>Hindu</option>
                                        <option>Muslim</option>
                                        <option>Christian</option>
                                        <option>Buddhist</option>
                                        <option>Jain</option>
                                        <option>Sikh</option>
                                        <option>Other</option>
									</select>
								</td>
								<td class="left">Caste:<font color="tomato">*</font></td>
								<td>
									<input type="text" name="caste" id="caste" placeholder="Caste" style="width: 90%" required="required">
								</td>
							</tr>
							<tr>
								<td>Marital Status:</td>
								<td>
									<select name="mstatus" id="mstatus" style="width: 90%">
										<option selected="selected" value="">Select Status</option>
										<option value="Married">Married</option>
										<option value="Single">Single</option>
										<option value="Divorsed">Divorsed</option>
									</select>
								</td>
								<td class="left">Mobile:<font color="tomato">*</font></td>
								<td>
									<input type="text" name="mobile" id="mobile" pattern="\d{10}" placeholder="Mobile Number" style="width: 90%" required="required" maxlength="10">
								</td>
							</tr>
							<tr>
								<td>Email:<font color="tomato">*</font></td>
								<td>
									<input type="email" name="email" id="email" placeholder="Email ID" style="width: 90%" required="required">
								</td>
								<td class="left">Website:</td>
								<td>
									<input type="text" name="website" id="website" placeholder="Website" style="width: 90%">
								</td>
							</tr>
							
							<tr><th colspan="4">Appointment Details</th></tr>
							<tr>
								<td>Appointed for Branch:<font color="tomato">*</font></td>
								<td>
									<select name="branch" id="branch" style="width: 90%" required="required">
										<option selected="selected" value="">Select Branch</option>
									</select>
								</td>
								<td class="left">Joining Post:<font color="tomato">*</font></td>
								<td>
									<select name="post" id="post" style="width: 90%" required="required">
										<option selected="selected" value="">Select Post</option>
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
								<td>Date of Joining:</td>
								<td>
									<input type="text" name="doj" id="datepicker-2" placeholder="Date of Joining" style="width: 90%" readonly="readonly">
								</td>
								<td class="left">Nature of Appointment:<font color="tomato">*</font></td>
								<td>
									<select name="noa" id="noa" style="width: 90%">
										<option selected="selected" value="">Select</option>
										<option>Temporary</option>
										<option>Permanent</option>
										<option>Probation</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>Nature of Job:<font color="tomato">*</font></td>
								<td>
									<select name="noj" id="noj" style="width: 90%" required="required">
										<option selected="selected" value="">Nature of job</option>
										<option value="Teaching">Teaching</option>
										<option value="Non-Teaching">Non-Teaching</option>
									</select>
								</td>
								<td colspan="2"></td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><input type="submit" id="save1" value="Add Faculty">&nbsp;&nbsp;<input type="button" id="next1" value="Next" disabled="disabled"></td>
							</tr>
						</table>
						</form>
  						</div>
  						<div id="block2">
  							<form action="addfacultyqual" method="post" id="form2">
  							<table>
								<tr><th colspan="8">Step 2: Qualification Details</th></tr>
								<tr><td colspan="8" class="left" style="font-weight: bold;">Educational Details</td></tr>
								<tr>
									<td>Check</td>
									<td style="width: 12%">Degree</td>
									<td>Specialization</td>
									<td>Institute</td>
									<td>University</td>
									<td>Passout Yr</td>
									<td>%/Grade</td>
									<td>Achievement</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="qual1" id="qual1" value="ug"><br>UG</td>
									<td>
										<select name="udegree" id="udegree" style="width: 100%" disabled="disabled">
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
									<td>
										<input type="text" name="uspl" id="uspl" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="uinst" id="uinst" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="uuniv" id="uuniv" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="upyr" id="upyr" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="uper" id="uper" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="uachiev" id="uachiev" style="width: 90%" disabled="disabled">
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="qual2" id="qual2" value="pg"><br>PG</td>
									<td>
										<select name="pdegree" id="pdegree" style="width: 100%" disabled="disabled">
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
									<td>
										<input type="text" name="pspl" id="pspl" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="pinst" id="pinst" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="puniv" id="puniv" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="ppyr" id="ppyr" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="pper" id="pper" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="pachiev" id="pachiev" style="width: 90%" disabled="disabled">
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="qual3" id="qual3" value="ppg"><br>PPG</td>
									<td>
										<select name="ppdegree" id="ppdegree" style="width: 100%" disabled="disabled">
											<option selected="selected" value="">Select</option>
											<option value="Ph.D.">Ph.D.</option>
											<option value="M.Phil">M.Phil</option>
										</select>
									</td>
									<td>
										<input type="text" name="ppspl" id="ppspl" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="ppinst" id="ppinst" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="ppuniv" id="ppuniv" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="pppyr" id="pppyr" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="ppper" id="ppper" style="width: 90%" disabled="disabled">
									</td>
									<td>
										<input type="text" name="ppachiev" id="ppachiev" style="width: 90%" disabled="disabled">
									</td>
								</tr>
								<tr><td colspan="8" class="left" style="font-weight: bold;">Certification Details</td></tr>
								<tr>
									<td  colspan="8">
										<table>
											<tr>
												<td>Check Required</td>
												<td>Course Name</td>
												<td>Institute/University</td>
												<td>Duration in months</td>
												<td>Course Content</td>			
											</tr>
											<tr>
												<td>
													<input type="checkbox" name="cert1" id="cert1" value="1">
												</td>
												<td>
													<input type="text" name="crsname1" id="crsname1" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cinst1" id="cinst1" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cduration1" id="cduration1" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="ccontent1" id="ccontent1" style="width: 90%" disabled="disabled">
												</td>
											</tr>
											<tr>
												<td>
													<input type="checkbox" name="cert2" id="cert2" value="2">
												</td>
												<td>
													<input type="text" name="crsname2" id="crsname2" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cinst2" id="cinst2" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cduration2" id="cduration2" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="ccontent2" id="ccontent2" style="width: 90%" disabled="disabled">
												</td>
											</tr>
											<tr>
												<td>
													<input type="checkbox" name="cert3" id="cert3" value="3">
												</td>
												<td>
													<input type="text" name="crsname3" id="crsname3" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cinst3" id="cinst3" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cduration3" id="cduration3" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="ccontent3" id="ccontent3" style="width: 90%" disabled="disabled">
												</td>
											</tr>
											<tr>
												<td>
													<input type="checkbox" name="cert4" id="cert4" value="4">
												</td>
												<td>
													<input type="text" name="crsname4" id="crsname4" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cinst4" id="cinst4" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="cduration4" id="cduration4" style="width: 90%" disabled="disabled">
												</td>
												<td>
													<input type="text" name="ccontent4" id="ccontent4" style="width: 90%" disabled="disabled">
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan="8" style="text-align: center;"><input type="submit" id="save2" value="Save Details" disabled="disabled"></td>
								</tr>
							</table>
						</form>
  						</div>
  						<div id="block3">
  							<table>
								<tr><th colspan="4">Step 3: Experience Details</th></tr>
								<tr>
									<td class="left">Organization:<font color="tomato">*</font></td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="eorg" id="eorg" required="required" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Website URL:</td>
									<td colspan="3" class="left"><input type="text" name="eurl" id="eurl" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Designation:</td>
									<td colspan="3" class="left"><input type="text" name="eurl" id="eurl" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">From</td>
									<td class="left"><input type="text" name="fromdate" id="fromdate" style="width: 85%" readonly="readonly"></td>
									<td class="left">To:</td>
									<td class="left"><input type="text" name="todate" id="todate" style="width: 85%" readonly="readonly"></td>
								</tr>
								<tr>
									<td class="left">Job Profile:</td>
									<td colspan="3" class="left"><input type="text" name="jprofile" id="jprofile" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Achievement:</td>
									<td colspan="3" class="left"><input type="text" name="achi" id="achi" style="width: 90%"></td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><input type="button" id="save3" value="Save Details"></td>
								</tr>
								<tr>
									<td class="left" colspan="4" >* Fields are compulsory</td>
								</tr>
								<tr>
									<td class="left" colspan="4" ><input type="hidden" name="fid" id="fid">Click Here: <a href="">To add Knowledge Repository of the Same faculty</a></td>
								</tr>
							</table>
						</div>
						<div id="block4">
  							<table>
								<tr><th colspan="4">Step 4: Information of Knowledge Repository</th></tr>
								<tr>
									<td class="left">Headline:<font color="tomato">*</font></td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="headline" id="headline" required="required" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Category:</td>
									<td>
										<select name="krcategory" id="krcategory" style="width: 100%">
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
									<td class="left">Publication:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="publication" id="publication" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Author:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="author" id="author" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Date:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="date" id="krdate" readonly="readonly" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">URL:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="krurl" id="krurl" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Keywords:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="keywords" id="keywords" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Article Upload:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="file" name="articlefile" id="articlefile" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Publication:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="publication" id="publication" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Contents:</td>
									<td colspan="3" class="left" style="width: 700px"><textarea name="contents" id="contents" style="width: 90%"></textarea></td>
								</tr>
								<tr>
									<td class="left">Notes:</td>
									<td colspan="3" class="left" style="width: 700px"><textarea name="notes" id="notes" style="width: 90%"></textarea></td>
								</tr>
								<tr>
									<td class="left">Publication:</td>
									<td colspan="3" class="left" style="width: 700px">
										<select name="priority" id="priority" style="width: 90%">
												<option selected="selected" value="">Select</option>
												<option>Business</option>
												<option>Urjent</option>
												<option>High</option>
												<option>Low</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="left">Guide(For Seminar/Project):</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="guide" id="guide" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Co - Guide:</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="coguide" id="coguide" style="width: 90%"></td>
								</tr>
								<tr>
									<td class="left">Team Size</td>
									<td colspan="3" class="left" style="width: 700px"><input type="text" name="tsize" id="tsize" style="width: 90%"></td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><input type="button" id="save3" value="Save Details"></td>
								</tr>
								<tr>
									<td class="left" colspan="4" >* Fields are compulsory</td>
								</tr>
							</table>
						</div>
                    
                </div>
            </div>
        </div>
		
		
		
                <!-- Footer -->
                <footer class="footer text-right">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6">
                                © 2016. All rights reserved.
                            </div>
                            <div class="col-xs-6">
                                <ul class="pull-right list-inline m-b-0">
                                    <li>
                                        <a href="#">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->

    </body>
</html>