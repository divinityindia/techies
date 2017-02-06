<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Gallery Master</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/photogallery.js"></script>
</head>
<body>
<jsp:include page="admintop.jsp"/>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<div id="success" style="display: none;color: #A52105;font-weight: normal;font-size: small;"></div>
  						<div id="block">
  						<h3>Gallery  (All Images should be of standard Size 700x300 pixels).</h3>
  						<form action="addgallery" method="post" id="form1" enctype="multipart/form-data">
  						<table id="gallerytable"> 
							<tr>
								<th colspan="3" style="text-align: center;">
								Select Gallery Page: 
									<select name="gpage" id="gpage">
										<option selected="selected" value="">Select Page</option>
										<option value="1">Gallery 1</option>
										<option value="2">Gallery 2</option>
										<option value="3">Gallery 3</option>
										<option value="4">Gallery 4</option>
										<option value="5">Video Gallery</option>
									</select>
									&nbsp;&nbsp;
									<input type="button" id="addmorebtn" value="Add More Images" style="visibility: hidden;"/>
								</th>
							</tr>
						</table>
						<table id="gallerytable1" style="display: none;margin-top: 15px"> 
							<tr>
								<td>Album Heading</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="head" placeholder="Max 25 characters" maxlength="25" name="head" required="required"/></td>
							</tr>
							<tr>
								<td>Album Details</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="details" placeholder="Max 75 characters" maxlength="75" name="details" required="required"/></td>
							</tr>
							<tr>
								<td colspan="3" align="right"><input type="submit" id="addalbum" value="Add Album"/></td>
							</tr>
						</table>
						</form>
						<form action="addvideo" method="post" id="form1" enctype="multipart/form-data">
						<table id="gallerytable2" style="margin-top: 15px;display:none;"> 
							<tr>
								<th>
								Upload Video:
								</th>
								<th>
								<input type="file" id="video" name="video" required="required"/>
								</th>
							</tr>
							<tr>
								<td>Video Heading</td><td><input type="text" id="vhead" placeholder="Max 25 characters" maxlength="25" name="vhead" required="required"/></td>
							</tr>
							<tr>
								<td>Video Details</td><td><input type="text" id="vdetails" placeholder="Max 75 characters" maxlength="75" name="vdetails" required="required"/></td>
							</tr>
							<tr>
								<td colspan="3" style="text-align: center;">
									<input type="submit" value="Add Video" />
								</td>
							</tr>
						</table>
						</form>
  						<center>
  						<hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;width: 900px"/>
  						</center>
  							<table id="gallerytable3"> 
							<tr>
								<th colspan="3" style="text-align: center;">
								Reset album pages 
									<select name="dpage" id="dpage">
										<option selected="selected" value="">Select Page</option>
										
									</select>
									
									&nbsp;&nbsp;
									<input type="button" id="deletealbum" value="Delete Album" style="visibility: hidden;"/>
								</th>
							</tr>
							<tr>
								<td colspan="3" style="text-align: center;"><div style="text-align:center;padding-left: 5px" id="loading"><img src="../../icons/loading3.gif" id="load" width="18" height="18" alt="loading" style="margin-left: 50%;display: none;"/></div></td>
							</tr>
						</table>
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
<script type="text/javascript">
	$(function(){ 
    	$.ajax({
	           type: "GET",
	           url: "checkgallery",                
	           dataType: "json",
	           success:function(data){
	           if(data){
	           		var a=1;
	           		var ddrp=$("#dpage")
            		$.each(data, function(k, v) {
            			if(v=='1') 
            			{
            				$("#gpage option[value='1']").remove();
            				$('<option>').val(v).text('Gallery 1').appendTo(ddrp);
            				
            			}
            			else if(v=='2')
            			{
            				$("#gpage option[value='2']").remove();
            				$('<option>').val(v).text('Gallery 2').appendTo(ddrp);
            				
            			}
            			else if(v=='3')
            			{
            				$("#gpage option[value='3']").remove();
            				$('<option>').val(v).text('Gallery 3').appendTo(ddrp);
            				
            			}
            			else if(v=='4')
            			{
            				$("#gpage option[value='4']").remove();
            				$('<option>').val(v).text('Gallery 4').appendTo(ddrp);
            				
            			}
            			else if(v=='5')
            			{
            				$("#gpage option[value='5']").remove();
            				$('<option>').val(v).text('Video Gallery').appendTo(ddrp);
            				
            			}
            				
            		  });
	               }
	           	else
	           		{
	           		alert("no data");
	           		}
	           	
	           },
	           error:function(){
	           	
	           } 
	      });
	});
	</script>
</body>
</html>
