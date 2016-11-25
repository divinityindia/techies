<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PDEA E Tender Portal</title>
<meta name="keywords" content="free etendering  by pdea  " />
<meta name="description" content="Maintain and developed by divinity technologies,pune" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="style/table.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="style/slimbox2.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style/login.css" type="text/css" media="screen" />
<script type="text/javascript" src="style/jquery.min.js"></script>
<script type="text/javascript" src="style/slimbox2.js"></script>
<script type="text/javascript" src="stopBack.js"></script>


</head>
<body>
    <div id="loadingimage">
        <!--<img src="images/Preloader_21.gif"/> <b>Please turn on javascript</b>-->
</div>
    <div id="templatemo_background_section_top">
    
    	<div class="templatemo_container">
        	<div id="templatemo_logo_section">
            	<img src="images/logo1.png" style="margin-top: -16px; height: 80px"   alt=""/>
            </div>
            
            <div id="templatemo_search_box">
                 <div style="float: right; color: #8A4500" >
                  <span id="date">
                         
                  </span>
                  

              </div>
                
           	 
            	<form action="index.html" method="post">
    	            	<input type="text" value="Search" id="textfield" onfocus="clearText(this)" onblur="clearText(this)"/>
        	            <input type="submit" name="Search" value="Search" alt="Search" id="button" title="Search" />
			  </form>
          </div>
            
            <div id="templatemo_menu_section">
               
                <ul id="nav_m">
	
            
                </ul>
            </div>
        </div>
    </div><!-- End Of Top Background -->
    
    
    <div id="js" style="border: 1px solid #AAA;background: yellow;font-weight: bold;"><marquee behavior="alternate" scrollamount="2"><font color="red">JavaScript seems to be off, Please turn it on for better performance.</font></marquee></div>
    <script>document.getElementById("js").style.display='none';</script>
    
    <div id="templatemo_background_section_mid" > 
         <!--<marquee scrollamount="4">e-Procurement System Pune District Education Association,Pune</marquee>-->
    	<div class="templatemo_container">
        <div id="templatemo_content_area" style="margin-top: 10px;">
        	<div id="templatemo_left_section">
                <div class="templatemo_left_section_box" style="width: 615px">
                    
                    
                	
                        <div class="site_content" style="width: 595px;padding: 10px">
                            <jsp:include page="chkbrowser.jsp"/>
                            <div ><br>
            <table id="simple" width="100%">
                <tr><td>
            <div>
        <img src="images/20.jpg" alt="President" width="98px" height="135px"/>
        <center>President<br>Ajit Pawar</center>
        
            </div></td>
                    <td style="vertical-align: top">
                        <div>
    <p style="font-size: 12px;">

    This portal facilitates all the schools and colleges coming under
    Pune District Education for centralised purchasing of chemicals, equipments, books, 
    journals etc that will ensure for competitive bidding and ultimately reducing the 
    cost of purchase. The e-tendering software will provide platform for schools, 
    colleges and association to work cohesively to get good quantity of stuff. 
    The system also enables the user including vendors to migrate to total 
    electronic procurement mode.
    <p style="font-size: 12px;">
    The primary objective of this portal is to provide a single point access 
    to the information on procurements made across various colleges vendor and supplier.</p>
            </div>
                    </td></tr>
            </table>
        </div>
            
            
                </div>
 </div>

  </div><!-- End Of left Section -->
  <div id="templatemo_right_section" style="background: #FFF;border-radius: 15px;">
           
                
                <div class="templatemo_right_section_box" style="background: #ccffcc;margin: auto;margin-top: 20px;border-radius: 15px;">
                	
                           <!--<section class="container">-->


<div class="homLogin" id="T1" style="border-bottom-left-radius: 0px;border-bottom-right-radius: 0px">
    <a style="cursor:pointer;" onclick="toggleLogin(1)">Login</a>
</div>
<div class="homLoginDiv" id="1">
    
    
    
    <table class="homLogintble">
        <tr>
            <td>
                <c:if test="${requestScope.errMessage !=null}">
                    <div class="alert-box error" style="">
                        <font color="red"><b>${requestScope.errMessage}</b></font>
                    </div>
                </c:if>
            </td>
        </tr>
        <form action="Login" method="post" onsubmit="return valid()">
          <noscript>
            <input type="hidden" name="JavaScript" value="false" />
          </noscript>
    <tr ><td>
        <span id="unSpan"></span>
        <input type="email" name="userName" id="name" required placeholder="Headquarter Login ID" style="width: 200px" oninvalid="this.setCustomValidity('Invalid User Name.')" oninput="setCustomValidity('')"/> 
   </td></tr>
    <tr><td>
        <span id="passSpan"></span>
        <input type="password" name="passWord" id="pass" required placeholder="Password" style="width: 200px" />
    </td></tr>     

        <tr><td ><div class='aNbutton'>
         <a href="resetPassadm.jsp" >Forgot Password ?</a>
         <input type="hidden" value="admin" name="category"/>
         <input type="submit" name="login" class="colorbutton" value="   Login   " style="float: right"/>
            </div></td></tr>
        </form>
    </table>
</div>


        




  <!--</section>-->
              </div>
                
        
            </div><!-- End Of right Section -->
            
			<div class="cleaner_with_height">&nbsp;</div>
		</div><!-- End Of content area -->
                
        
        </div><!-- End Of container -->
        <div id="templatemo_footer">
        	Copyright © 2016 Pune District Education Association,Pune | software Developed and Maintain by <a href="http://www.techdivinity.com" target="_parent">Tech Divinity ,Pune</a>
        </div>
    </div><!-- End Of Middle Background -->
</body>
<!--  Designed by www.divinityindia.in  --> 
</html>