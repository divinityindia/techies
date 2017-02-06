
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


</head>
<body>
	<jsp:include page="ChkUser.jsp" />

    <div id="loadingimage">
        <!--<img src="images/Preloader_21.gif"/> <b>Please turn on javascript</b>-->
</div>
    <div id="templatemo_background_section_top">

    	<div class="templatemo_container">
        	<div id="templatemo_logo_section">
            	<img src="../images/logo1.png" style="margin-top: -16px; height: 80px"   alt=""/>
            </div>
                <div id="templatemo_search_box">
               
                 <div style="float: right; color: #FF6347" >
                  <span id="date">
                         
                  </span>
                  
              </div>
                <div >
                    <b><font>${sessionScope.cat}</font></b></br>
                       <b><a href="../Logout" >Log Out</a></b>
                </div>
          </div>
           


            <div id="templatemo_menu_section">

        <ul class="menuB">
            <li><a class="singlebtn"  href="home"><span>HOME</span></a></li>
<!--             <li><a class="singlebtn"><span class="down_m">Data Entry</span></a></li> -->
            <li class="dropdown">
            <a class="dropbtn"  href="login.jsp"><span>Data Entry</span></a>
            <div class="dropdown-content">
                           <a href="transferentry.jsp" ><span>Transfer Entry</span></a>
                           <a href="showcollege.jsp" ><span>School/College Name Record</span></a>
                        </div>
            </li>
            <li><a class="singlebtn"  href="contactus.jsp"><span>Reports</span></a></li>
            <li><a class="singlebtn"  href="faq.jsp"><span>Seniority List</span></a></li>
            <li><a class="singlebtn"  href="faq.jsp"><span>Programme Management</span></a></li>
        </ul>
            </div>
        </div>
    </div><!-- End Of Top Background -->



      <!-- End Of Middle Background -->
</body>
<!--  Designed by www.divinityindia.in  -->
</html>