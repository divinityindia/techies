<!DOCTYPE html>
<html>
<head>
<title>:: Search Employee</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/searchemployee.js"></script>

</head>
<body>
<jsp:include page="admintop.jsp"/>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Search Employee</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form id="form1">
  						<table> 
  							<tbody id="searchbybranch">
							<tr>
								<th colspan="4">Branch</th>
								
							</tr>
							<tr>
								<th colspan="4">
									<select name="branch" id="branch" required="required">
                                     		<option  value="">---Select Branch---</option>
									</select>
								</th>
							</tr>
							</tbody>
							<tbody id="searchbyname">
							<tr><th colspan="4"><b>Search By Name:</b> <input type="checkbox" name="chkname" id="chkname"  class="simpletext"></th></tr>
							<tr>
								<td colspan="4">
								<table>
									<tr>
										<th>
											<input type="text" name="fname" id="fname" placeholder="First Name"  required="required" disabled="disabled">
											<input type="text" name="mname" id="mname" placeholder="Middle Name"  required="required" disabled="disabled">
											<input type="text" name="lname" id="lname" placeholder="Last Name"  required="required" disabled="disabled">
										</th>
									</tr>
								</table>
								</td>
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
								 <tr><th colspan="5"><h2>Click on Name to see full profile</h2></th></tr>							
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
$('#chkname').change(function() {
	
	$('#fname').attr('disabled', !this.checked);
    $('#fname').attr('required', this.checked);
    $('#mname').attr('disabled', !this.checked);
    $('#mname').attr('required', this.checked);
    $('#lname').attr('disabled', !this.checked);
    $('#lname').attr('required', this.checked);
    $('#branch').attr('disabled', this.checked);
    $('#branch').attr('required', !this.checked);
    
    $('#success').empty();
});		

//branches
$(function(){
	$.ajax({
	    type: "GET",
	    url: "../showdropdownbranch",                
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
