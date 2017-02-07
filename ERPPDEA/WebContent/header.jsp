
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PDEA E Tender Portal</title>
<meta name="keywords" content="free etendering  by pdea  " />
<meta name="description" content="Maintain and developed by divinity technologies,pune" />

<script type="text/javascript" src="jquery-1.9.1.min.js"></script> 

 <script type="text/javascript" charset="utf-8" src="jquery.leanModal.min.js"></script>

<link rel="stylesheet" type="text/css" href="homemenu.css" />


	<script type="text/javascript">
	$(function(){
	$('#loginform').submit(function(e){
    return false;
	});
  	 $('#modaltrigger').leanModal({ top: 110, overlay: 0.46, closeButton: ".hidemodal" });
	 
	});
	 </script>


<script type="text/javascript">
window.onload = function () {
//        setInterval("",6000);
//        
        
        document.getElementById("loadingimage").style.display='none';
        document.getElementById("js").style.display='none';
        toggleLogin(0);
};

</script>

</head>
<body>

	<div id="header">		
		<div id="main_header">
				<div class="header_left">
				
<img src="images/logo1.png" style="margin-top: -11px; height: 80px" alt="">
				
				</div>

<div class="header_right">

	<div class="login">
	
		<div id="sliderWrap">
						
	<!--------------------------------Login----------------------------------------------------->	
					<div id="regist1">
						<a href="#loginmodal" class ="#loginmodal" id="modaltrigger"><img src="images/login.png" alt="open"/></a>
					</div>
		<center>
			<div id="loginmodal" style="display:none;" >
	
							<div align="right">
						    	<a href="#close" title ="close"  class="close hidemodal" >
					  	 			<img id="#close" src="images/close.png" class="close"  width="20px" height="20px style="margin-left:1000px"/>
					   			</a>
					   		</div>
					    <h1>Sign In!</h1>
				
				<form id="loginform" name="loginform" method="post" action="login.html" onsubmit="this.submit()">
					<table align="center">
						<tr>
							<td> <label for="username">Username:</label> </td>
						    <td><input type="text" name="acc_holder_id" size="30" id="username" class="txtfield" tabindex="1"/></td>
						</tr>
						<tr>
							<td><label for="password">Password:</label></td>
						    <td><input type="password" name="pwd" size="30" id="password" class="txtfield" tabindex="2"/></td>
						</tr>
					</table>
						<button class="submit" type="submit" name="loginbtn" id="loginbtn" value="Log In" tabindex="3" >Login</button>
 						<span style="padding: 0 40px">&nbsp;</span>
						<button class="reset" type="reset" onclick="reset_msg()" name="resetbtn" id="resetbtn"  value="reset" tabindex="4">Reset</button>
		   		
	
		   		 </form>
		   	
		  	</div>
		</center>
	</div>
</div>	

			<!-- -------------------Date----------------------- -->	

					
	</div>			
</div>
	
	<!-------------------------- Menu Bar ----------------------------------->
	
	<ul id="nav_m">
	<li class="top_m"><a href="home.jsp" class="top_link_m"><span>Home</span></a></li>
	<li class="top_m"><a class="top_link_m"><span class="down_m">Data Entry</span></a>
	
	</li>
	<li class="top_m"><a class="top_link_m"><span class="down_m">Reports</span></a>

	</li>
	<li class="top_m"><a href="#" id="about" class="top_link_m"><span>Seniority List</span></a></li>
	<li class="top_m"><a href="contactus.jsp"   class="top_link_m"><span>Programme Management</span></a></li>
	<li class="top_m"><a href="#" id="feedback" class="top_link_m"><span>Exit</span></a></li>
	
</ul>
</div>
<!-------------------------- Main Middle --------------------------------- -->
	
  
 <!--------------------------End Main Middle--------------------------------- -->

    

</body>
<!--  Designed by www.divinityindia.in  --> 
</html>