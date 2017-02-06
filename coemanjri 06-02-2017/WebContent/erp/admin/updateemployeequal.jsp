<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>:: Update Employee Qualification</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/updateemployeequal.js"></script>
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
       				<h2>Update Employee Qualification</h2>
       				<div id="qualsuccess" class="success"></div>
  					<div id="certsuccess" class="success"></div>
  					
       			<div id="block2">
       				<form action="updateemployeequal" method="post" id="form2">
       				<input type="hidden" class="fid" value="${qfid}" name="fid"></input>
       					<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%">
       						<tr>
								<td class="clabel" style="font-weight: bold;">Qualification</td>
								<td class="clabel" style="font-weight: bold;">Degree</td>
								<td class="qlabel" style="font-weight: bold;">Specialization</td>
								<td class="qlabel" style="font-weight: bold;">Institute</td>
								<td class="qlabel" style="font-weight: bold;">University</td>
								<td class="qlabel" style="font-weight: bold;">Passout Yr</td>
								<td class="qlabel" style="font-weight: bold;">%/Grade</td>
								<td class="qlabel" style="font-weight: bold;">Achievement</td>
								<td class="qlabel" style="font-weight: bold;">Delete</td>
							</tr>
							<c:forEach var="cat" items="${qualList}">	
								<tr id="q${cat.qid}">
									<td>${cat.qname}</td><td>${cat.qdegree}</td><td>${cat.qspecialization}</td><td>${cat.qinstitute}</td><td>${cat.quniversity}</td><td>${cat.qpassyr}</td><td>${cat.qper}</td><td>${cat.qachievement}</td><td><a href="javascript:;" data-p1="${cat.qid}" class="deletelinkQual">Delete</a></td>
								</tr>
							</c:forEach>
       					</table>
       					<img src="../../icons/loading3.gif" id="load1" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>
       					
       					<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%">
	       					<tr>
								<td class="cerlabel" style="font-weight: bold;">Course Name</td>
								<td class="cerlabel" style="font-weight: bold;">Institute/University</td>
								<td class="cerlabel" style="font-weight: bold;">Duration in months</td>
								<td class="cerlabel" style="font-weight: bold;">Course Content</td>
								<td class="cerlabel" style="font-weight: bold;">Delete</td>			
							</tr>
							<c:forEach var="cat" items="${certList}">	
								<tr id="c${cat.cid}">
									<td>${cat.ccoursename}</td><td>${cat.cinstitute}</td><td>${cat.cduration}</td><td>${cat.ccontent}</td><td><a href="javascript:;" data-p1="${cat.cid}" class="deletelinkCert">Delete</a></td>
								</tr>
							</c:forEach>
						</table>
						<img src="../../icons/loading3.gif" id="load2" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>
       				</form>	
       				<form action="updateemployeequal" method="post" id="form2">	
       					<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%">
								<tr><th colspan="8"><font style="font-weight: bold;">Add Qualification Details</font></th></tr>
								<tr><th colspan="8">Educational Details</th></tr>
								<tr>
									<td class="clabel" style="font-weight: bold;">Check</td>
									<td class="clabel" style="font-weight: bold;">Degree</td>
									<td class="qlabel" style="font-weight: bold;">Specialization</td>
									<td class="qlabel" style="font-weight: bold;">Institute</td>
									<td class="qlabel" style="font-weight: bold;">University</td>
									<td class="qlabel" style="font-weight: bold;">Passout Yr</td>
									<td class="qlabel" style="font-weight: bold;">%/Grade</td>
									<td class="qlabel" style="font-weight: bold;">Achievement</td>
								</tr>
								<tr>
									<td class="clabel">
										<input type="checkbox" name="qual1" id="qual1" value="ug"><br>UG
										<input type="hidden" class="fid" value="${qfid}" name="fid"></input>
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
									<td class="clabel"><input type="checkbox" name="qual2" id="qual2" value="pg"><br>PG</td>
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
									<td class="clabel"><input type="checkbox" name="qual3" id="qual3" value="ppg"><br>PPG</td>
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
								<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%" >
								<tr><th colspan="8">Certification Details</th></tr>
								<tr>
									<td  colspan="8">
										<table>
											<tr>
												<td class="clabel" style="font-weight: bold;">Check</td>
												<td class="cerlabel" style="font-weight: bold;">Course Name</td>
												<td class="cerlabel" style="font-weight: bold;">Institute/University</td>
												<td class="cerlabel" style="font-weight: bold;">Duration in months</td>
												<td class="cerlabel" style="font-weight: bold;">Course Content</td>			
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
