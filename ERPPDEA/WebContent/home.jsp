<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>C-DAC Stock Exchange</title>
<link rel="stylesheet" href="index1.css" type="text/css" media="screen" />
<script type="text/javascript">
	$(function(){
	$('#loginform').submit(function(e){
    return false;
	});
  	 $('#modaltrigger').leanModal({ top: 110, overlay: 0.46, closeButton: ".hidemodal" });
	 
	});
	 </script>	

	  
</head>
<body>
<div id="main_container">
<frameset rows="100,*,75" frameborder="0" border="0" >
  <frame name="topNav" src="header.jsp">
  </frame>
  </frameset>
<%-- <%@ include file="header.jsp"%>  --%>
<!-------------------------- Main Middle ----------------------------------->
	
<div id="main_services">
	
<!--------------------------Left Banner----------------------------------->
	
			<div id="left"  style=" overflow-x:scroll;">
		     <table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
   <td><h1>Example PDEA FORM</h1></td>
</tr>

<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td align='center'>Name:</td>
    <td><input type='text' name='name'></td>
  
    <td align='center'>Sur Name:</td>
    <td><input type='text' name='name'></td>

</tr>

<tr>
    <td align='center'>Date Of Birth:</td>
    <td><input type='text' name='name'></td>
   
    <td align='center'>Address:</td>
    <td><input type='text' name='name'></td>

</tr>

<tr>
    <td align='center'>Phone:</td>
    <td><input type='text' name='name'></td>
    <td align='center'>Email:</td>
    <td><input type='text' name='name'></td>
</tr>

<tr>
    <td align='center'>Zip:</td>
    <td><input type='text' name='zip'></td>
</tr>

<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
<tr>
    <td align='center'><input type='submit' name='REGISTER' value="register"></td>
</tr>
</table>
</table>

</table>
			</div>	
			   
<!--------------------------Right Banner----------------------------------->
			    
<!-- 			<div id="right"> -->
<%-- 			  	<%@ include file="masterright_main.jsp"%> --%>
<!-- 			</div> -->
			
<!--------------------------Footer----------------------------------->
	   
 	 <%@ include file="master_footer.jsp"%>  
 </div>    
 <!--------------------------End Main Middle----------------------------------->
</div>
</body>
</html>