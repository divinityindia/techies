<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Show Routines</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" type="text/css" href="../css/popup.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/showroutines.js"></script>
<style type="text/css">
			
			
			.routinedisplay{
				height:150px;
				width:900px;
				margin: 10px 5px 5px 20px;
				
				background:  #9fd6f7;
				
				float: left;
			}

			.routineblock{
				width:130px;text-align:center;float:left;height:140px;background:#903b53 ;color:white;margin: 5px 0 5px 5px;
				vertical-align: middle;
				font-size: 15px;
			}
			
			.routineblock1{
				width:130px;text-align:center;float:left;height:140px;background:#903b53 ;color:white;margin: 5px 0 5px 5px;
			}
			
			p.day{
				font-weight: bolder;
				font-size: large;
				margin-top: 50px;
			}
			
			a.edit{
				float:right;
				height:30px;
				width:30px
			}
			
			a.delete{
				
				float:right;
				height:30px;
				width:30px
			}
			
			#wait {
			    visibility:hidden;
			    position:   relative;
			    z-index:    1000;
			    top:        35%;
			    left:       35%;
			    height:     100%;
			    width:      100%;
			    
			}
		</style>
</head>
<body>
<jsp:include page="admintop.jsp"/>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Routine Master</h2>
       				<div id="block1">
  						
  						<table> 
    						<tr>
								<td class="llabel">Course<span class="required">*</span></td>
								<td>
									<select name="course" id="course" required="required" class="">
                                     		<option selected="selected">---Select Course---</option>
                                        	<c:forEach var="cat" items="${requestScope.coursename}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
								<td class="llabel">Branch<span class="required">*</span></td>
								<td>
									<select name="branch" id="branch" required="required">
                                     		<option selected="selected">---Select Branch---</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="llabel">Class<span class="required">*</span></td>
								<td>
									<select name="classname" id="classname" required="required">
                                     		<option value="">---Select Class---</option>
                                        	<c:forEach var="cat" items="${requestScope.classname}">
                                            	<option value="${cat.key}">${cat.value}</option>
                                          	</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;">
                                    <button type="button" id="showroutinesBtn">Show Routines</button>
                                    <button type="reset" id="resetbutton" form="#form1">Reset</button>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;">
                                    <div style="float: right;padding-left: 5px;visibility: hidden;" id="loading"><img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
								</td>
							</tr>
						</table>
						<div id="showblock" style="visibility: hidden;">
						<table>
							<tr>
								<td class="llabel">Section<span class="required">*</span></td>
								<td>
									<select name="ssection" id="ssection" required="required">
                                        	<option selected="selected" value="0">---Select Section---</option>
                                    </select>
                                    <div style="float: right;padding-left: 5px;visibility: hidden;" id="sloading"><img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
								</td>
							</tr>
							<tr>
							</tr>
						</table>
						<div class="formitem" id="routinetable" style="visibility: hidden;"></div>
					</div>
				</div>
				<div id="mainform">
			<div id="contactdiv">
				<form class="form" action="#" id="ct">
				<img src="../icon/cancel.png" class="img" id="cl"/>
				<h3>Edit Routine</h3>
				<hr/><br/>
				<label>Time From<span>*</span></label>
				<br/>
				<input type="text" id="etimefrom" placeholder="Time From"/><br/>
				<br/>
				<label>Time to <span>*</span></label>
				<br/>
				<input type="text" id="etimeto" placeholder="Time TO"/><br/>
				<br/>
				<label>Room <span>*</span></label>
				<br/>
				<input type="text" id="eroom" placeholder="Room"/><br/>
				<br/>
				<input type="hidden" id="eroutineid"/>
				<input type="button" id="save" value="Save"/>
				<input type="button" id="cl" value="Cancel"/>
				<br/>
				</form>
				</div>
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
