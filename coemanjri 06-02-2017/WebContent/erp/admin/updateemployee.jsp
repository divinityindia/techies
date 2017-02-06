<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>:: Update Employee</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        $(function() {  
            $( "#datepicker-1" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#datepicker-2" ).datepicker({
            	dateFormat:"dd/MM/yyyy",
            	changeMonth: true,
      	      changeYear: true,
    	      yearRange: "1942:2050",
    		  dateFormat:"dd/mm/yy"
            });  
            $( "#fromdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#todate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#krdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
         });
        </script>
<script src="../js/editemployee.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.updateemployee==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Update Employee Information</h2>
       				<div id="success" class="success"></div>
  					<input type="hidden" class="fid" value="0" name="fid"></input>
  					<div id="block1">
  						<form action="updateemployee" method="post" id="form1" enctype="multipart/form-data">
  						<input type="hidden" class="fid" value="${emp.facultyId}" name="fid"></input>
  						<table> 
							<tr><th colspan="4"><font style="font-weight: bold;">Employee Details Entry</font></th></tr>
    						<tr>
								<td colspan="4">
								<table>
									<tr><td>Name:<span class="required">*</span></td><td>
									<select name="salutation" id="salutation" required="required">
										<option value="">Select</option>
										<option <c:if test = "${emp.sal eq 'Dr.'}">selected="selected"</c:if>>Dr.</option>
										<option <c:if test = "${emp.sal eq 'Prof.'}">selected="selected"</c:if>>Prof.</option>
										<option <c:if test = "${emp.sal eq 'Mr.'}">selected="selected"</c:if>>Mr.</option>
										<option <c:if test = "${emp.sal eq 'Mrs.'}">selected="selected"</c:if>>Mrs.</option>
										<option <c:if test = "${emp.sal eq 'Miss.'}">selected="selected"</c:if>>Miss.</option>
										
									</select></td>
									<td>
										<input type="text" name="fname" id="fname" placeholder="First Name" value="${emp.fname}" required="required">
										<input type="text" name="mname" id="mname" placeholder="Middle Name" value="${emp.mname}" required="required">
										<input type="text" name="lname" id="lname" placeholder="Last Name" value="${emp.lname}" required="required">
									</td>
									
									</tr>
								</table>
								</td>
							</tr>
    						<tr>
								<td class="llabel">BCUD ID</td>
								<td>
									<input type="text" name="bcud" id="bcud" value="${emp.bcud}" placeholder="BCUD ID" class="simpletext">
								</td>
								<td class="llabel"></td>
								<td>
									
								</td>
							</tr>
    						<tr>
								<td class="llabel">PAN No</td>
								<td>
									<input type="text" name="panno" pattern="[A-Za-z]{5}\d{4}[A-Za-z]{1}" id="panno" value="${emp.panno}" placeholder="PAN Number" class="simpletext">
								</td>
								<td class="llabel">Aadhar No</td>
								<td>
									<input type="text" name="aadharno" pattern="\d{12}" id="aadharno" value="${emp.aadharno}" placeholder="Aadhar Number" maxlength="12" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Photo</td>
								<td>
									<img id="editphoto" src="employeephotoservlet?employeeid=${emp.facultyId}"/>
								</td>
								<td class="llabel">Edit Photo(Check to change photo)<span class="required">*</span></td>
								<td>
									<input type="checkbox" name="chkphoto" id="chkphoto" value="1" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Upload Photo</td>
								<td>
									<input type="file" class="simpletext" name="photo" id="photo" disabled="disabled">
								</td>
								<td class="llabel">Date of Birth<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="dob" id="datepicker-1" required="required" readonly="readonly" value="<fmt:formatDate value="${emp.dob}" pattern="dd/MM/yyyy"/>">
								</td>
								
							</tr>
							<tr>
								<td class="llabel">Gender<span class="required">*</span></td>
								<td>
									<input type="radio" name="gender" value="male" id="male" style="display: inline" required="required" <c:if test = "${emp.gender eq 'male'}">checked="checked"</c:if>/>Male
                                    <input type="radio" name="gender" value="female" id="female" style="display: inline" required="required" <c:if test = "${emp.gender eq 'female'}">checked="checked"</c:if>/>Female
								</td>
								<td class="llabel">Religion<span class="required">*</span></td>
								<td>
									<select name="religion" id="religion" required="required">
                                     		<option  value="">---Select Religion---</option>
                                     		<c:forEach var="cat" items="Hindu,Muslim,Christian,Buddhist,Jain,Sikh,Other">		
                                     			<option <c:if test = "${cat eq emp.religion}">selected="selected"</c:if>>${cat}</option>
                                     		</c:forEach>		
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Category<span class="required">*</span></td>
								<td>
									<select name="category" id="category" required="required">
                                     		<option selected="selected" value="">---Select Category---</option>
                                        	<option  value="">---Select Religion---</option>
                                     		<c:forEach var="cat" items="General/OPEN,J and K Migrant,Lingayat Vani,Maratha,NT,NT-1,NT-1(NT-D),NT-2,NT-2(NT-C),NT-2(NT-D),NT-A,NT-B,NT-C,NT-D,OBC,Raghuvanshi,SC,ST,SBC,VJ,VJ,VJ-NT,VJ-DT">		
                                     			<option <c:if test = "${cat eq emp.category}">selected="selected"</c:if>>${cat}</option>
                                     		</c:forEach>
									</select>
								</td>
								<td class="llabel">Caste<span class="required">*</span></td>
								<td>
									<input type="text" name="caste" id="caste" value="${emp.caste}" placeholder="Caste" class="simpletext">
								</td>
							</tr>
							
							<tr>
								<td class="llabel">Marital Status</td>
								<td>
									<select name="mstatus" id="mstatus">
										<option selected="selected" value="">---Select Status---</option>
										<c:forEach var="cat" items="Married,Single,Divorsed">		
                                     			<option <c:if test = "${cat eq emp.mstatus}">selected="selected"</c:if>>${cat}</option>
                                     	</c:forEach>
									</select>
								</td>
								<td class="llabel">Phone<span class="required">*</span></td>
								<td>
									<input type="tel" maxlength="20" class="simpletext" value="${emp.mobile}" pattern="[0-9]*" title="Please enter valid Phone number" placeholder="Phone No." name="phone" id="phone" required="required">
								</td>
							</tr>
							<tr>
								<td class="llabel">Email Id<span class="required">*</span></td>
								<td>
									<input type="email" name="email" id="email" value="${emp.email}" placeholder="Email ID" class="simpletext" required="required">
								</td>
								<td class="llabel">Website</td>
								<td>
									<input type="text" name="website" id="website" value="${emp.website}" placeholder="Website URL" class="simpletext">
								</td>
							</tr>
							<tr>
								<td class="llabel">Current Address<span class="required">*</span></td>
								<td>
									<textarea name="caddress" id="caddress" rows="5" placeholder="Current Address" class="simpletext" required="required">${emp.caddress}</textarea>
								</td>
								<td class="llabel">Permanent Address</td>
								<td>
									<textarea name="paddress" id="paddress" rows="5" placeholder="Permanent Address" class="simpletext">${emp.paddress}</textarea>
								</td>
							</tr>
							<tr>
								<td class="llabel">Current State<span class="required">*</span></td>
								<td>
									<input type="hidden" value="${emp.state}" id="cst">
									<select name="state" id="state" required="required">
                                     		<option  value="">---Select State---</option>
									</select>
								</td>
								<td class="llabel">Permanent State</td>
								<td>
									<input type="hidden" value="${emp.pstate}" id="pst">
									<select name="pstate" id="pstate">
                                     		<option  value="">---Select State---</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Current City<span class="required">*</span></td>
								<td>
									<input type="hidden" value="${emp.city}" id="cct">
									<select name="city" id="city" required="required">
                                     		<option  value="">---Select City---</option>
									</select>
								</td>
								<td class="llabel">Permanent City</td>
								<td>
									<input type="hidden" value="${emp.pcity}" id="pct">
									<select name="pcity" id="pcity">
                                     		<option  value="">---Select City---</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Pincode</td>
								<td>
									<input type="text" name="pincode" id="pincode" value="${emp.cpin}" pattern="[0-9]{6}" title="Please enter valid Pincode number" maxlength="6" placeholder="Pincode" class="simpletext">
								</td>
								<td class="llabel">Pincode</td>
								<td>
									<input type="text" name="ppincode" id="ppincode" value="${emp.ppin}" pattern="[0-9]{6}" title="Please enter valid Pincode number" maxlength="6" placeholder="Pincode" class="simpletext">
								</td>
							</tr>
							<tr><th colspan="4"><font style="font-weight: bold;">Appointment Details</font></th></tr>
							<tr>
								<td class="llabel">Appointed for Department<span class="required">*</span></td>
								<td>
									<select name="branch" id="branch" required="required">
                                     		<option  value="">---Select Department---</option>
                                     		<c:forEach var="cat" items="${deptList}">		
                                     			<option <c:if test = "${cat.value eq emp.branchName}">selected="selected"</c:if> value="${cat.key}">${cat.value}</option>
                                     		</c:forEach>
									</select>
								</td>
								<td class="llabel">Joining Post<span class="required">*</span></td>
								<td>
									<select name="post" id="post" required="required">
										<option selected="selected" value="">---Select Post---</option>
										<c:forEach var="cat" items="Principal,Vice-Principal,HOD,Professor,Professor by Promo,Asst. Professor,Asst. Professor by Promo,Lecturer,Sr. Lecturer,Lecturer Sel Gr.,Lab Assistant,Programmer,Clerk,Sr. Clerk,Technical Asst.,Peon,Librarian,Registrar,Store In Charge,T and P Officer,Phy. Dir. Edu.,Board of Director,Management Committee,Office Staff,Other">		
                                     			<option <c:if test = "${cat eq emp.post}">selected="selected"</c:if>>${cat}</option>
                                     	</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Date of Joining<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" value="<fmt:formatDate value="${emp.doj}" pattern="dd/MM/yyyy"/>" name="doj" id="datepicker-2" required="required" readonly="readonly">
								</td>
								<td class="llabel">Nature of Appointment<span class="required">*</span></td>
								<td>
									<select name="noa" id="noa" required="required">
										<option selected="selected" value="">---Select---</option>
										<c:forEach var="cat" items="Temporary,Permanent,Probation">		
                                     			<option <c:if test = "${cat eq emp.noa}">selected="selected"</c:if>>${cat}</option>
                                     	</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Nature of Job<span class="required">*</span></td>
								<td>
									<select name="noj" id="noj" required="required">
										<option selected="selected" value="">---Nature of job---</option>
										<c:forEach var="cat" items="Teaching,Non-Teaching">		
                                     			<option <c:if test = "${cat eq emp.noj}">selected="selected"</c:if>>${cat}</option>
                                     	</c:forEach>
									</select>
								</td>
							</tr>
							
							
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="submitbtn">Save Information</button></td>
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
<!-- <script type="text/javascript">
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	
		if($.urlParam('success')=='1')
		{
			$("#success").empty();
			$("#success").append('Employee updated Successfully.');
			$("#success").css('display','block');
		}
		else if($.urlParam('success')=='0')
		{
			$("#success").empty();
			$("#success").append('Student Employee failed...Please try again');
			$("#success").css('display','block');
		}
		
		
		

	</script>	 -->	
</body>
</html>
