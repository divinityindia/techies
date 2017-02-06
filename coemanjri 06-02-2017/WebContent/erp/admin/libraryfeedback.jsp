<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Library Feedback Form</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		//Reset button function
		$('#resetbutton').click(function() {
			$('#prnno').val("");
		});


	});
</script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
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
  						</c:choose>
       				<br/>
       				<h2 style="text-align: center;">Feedback Questionnaires</h2>
       				<h3 style="text-align: center;">Pune District Education Association</h3>
       				<h3 style="text-align: center;">Baburaoji Gholap College, Sangvi, Pune</h3>
       				<h3 style="text-align: center;">2015 - 2016</h3>
       				<h2 style="text-align: center;font-size: large;text-decoration: underline;">Student Feedback about Library</h2>	
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="addfeedback" method="post" id="form1">
  						<input type="hidden" name="fid" id="fid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
							<tr>
								<td colspan="4" style="text-align: center;">
									Enter Student PRN Number<span class="required">*</span>: <input type="text" name="prnno" id="prnno"  class="simpletext" placeholder="Enter PRN Number" required/>
                                </td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><!-- <button type="submit" id="addeditbutton">Submit </button>&nbsp;&nbsp;&nbsp; --><button type="reset" id="resetbutton" form="#form1">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Fill Feedback</h3>
						<form action="adddepartment" method="post">
                        <input type="hidden" name="sid" id="sid" value=""/>
						<table class="info">
							<tr>
								<th colspan="6">Tick (&radic;) the appropriate box for grading the teacnon teaching staff where</th>
							</tr>
							<tr>
								<th colspan="6">Grade A: Excellent(10) B: Good(7) C: Average(5) D: Poor(3)</th>
							</tr>
                            <tr>
								<th>Sr. No</th><th>Points</th><th>A(10)</th><th>B(7)</th><th>C(5)</th><th>D(3)</th>
							</tr>
                            <tr>
                            	<td style="text-align:center">1</td>
                                <td>Availability of various book</td>
                                <td style="text-align:center"><input type="radio" name="p1" id="p1a" class="p1" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p1" id="p1b" class="p1" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p1" id="p1c" class="p1" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p1" id="p1d" class="p1" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">2</td>
                                <td>Access to bookracks</td>
                                <td style="text-align:center"><input type="radio" name="p2" id="p2a" class="p2" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p2" id="p2b" class="p2" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p2" id="p2c" class="p2" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p2" id="p2d" class="p2" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">3</td>
                                <td>Studious and silent environment for studies</td>
                                <td style="text-align:center"><input type="radio" name="p3" id="p3a" class="p3" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p3" id="p3b" class="p3" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p3" id="p3c" class="p3" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p3" id="p3d" class="p3" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">4</td>
                                <td>Availability of literary and fiction books</td>
                                <td style="text-align:center"><input type="radio" name="p4" id="p4a" class="p4" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p4" id="p4b" class="p4" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p4" id="p4c" class="p4" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p4" id="p4d" class="p4" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">5</td>
                                <td>Access to library after college hours during exams</td>
                                <td style="text-align:center"><input type="radio" name="p5" id="p5a" class="p5" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p5" id="p5b" class="p5" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p5" id="p5c" class="p5" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p5" id="p5d" class="p5" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">6</td>
                                <td>Availability of Journals and periodicals</td>
                                <td style="text-align:center"><input type="radio" name="p6" id="p6a" class="p6" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p6" id="p6b" class="p6" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p6" id="p6c" class="p6" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p6" id="p6d" class="p6" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">7</td>
                                <td>INFLIBNET / Internet available</td>
                                <td style="text-align:center"><input type="radio" name="p7" id="p7a" class="p7" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p7" id="p7b" class="p7" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p7" id="p7c" class="p7" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p7" id="p1d" class="p7" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">8</td>
                                <td>Cooperative non - teaching staff</td>
                                <td style="text-align:center"><input type="radio" name="p8" id="p8a" class="p8" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p8" id="p8b" class="p8" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p8" id="p8c" class="p8" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p8" id="p8d" class="p8" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">9</td>
                                <td>Prompt service in issuing of books</td>
                                <td style="text-align:center"><input type="radio" name="p9" id="p9a" class="p9" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p9" id="p9b" class="p9" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p9" id="p9c" class="p9" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p9" id="p9d" class="p9" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">10</td>
                                <td>Availability of book bank scheme</td>
                                <td style="text-align:center"><input type="radio" name="p10" id="p10a" class="p10" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p10" id="p10b" class="p10" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p10" id="p10c" class="p10" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p10" id="p10d" class="p10" value="3" required></td>
                            </tr>
                             <tr>
                            	<td style="text-align:center">13</td>
                                <td>Information about scholarships</td>
                                <td style="text-align:center"><input type="radio" name="p13" id="p13a" class="p13" value="10" required></td>
                                <td style="text-align:center"><input type="radio" name="p13" id="p13b" class="p13" value="7" required></td>
                                <td style="text-align:center"><input type="radio" name="p13" id="p13c" class="p13" value="5" required></td>
                                <td style="text-align:center"><input type="radio" name="p13" id="p13d" class="p13" value="3" required></td>
                            </tr>
                            <tr>
                            	<td style="text-align:center">Any other suggessions</td>
                                <td colspan="5" style="text-align:justify"><textarea name="suggessions" id="suggessions" placeholder="Suggessions if Any (Write NA of no suggessions)"></textarea></td>
                            </tr>
                            <tr>
                            	<td colspan="6" style="text-align:center"><button type="submit" id="addButton">Submit Feedback</button><button type="reset" id="resetButton">Reset</button></td>
                            </tr>
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
