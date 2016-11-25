<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PDEA E Tender Portal</title>
<meta name="keywords" content="free etendering  by pdea  " />
<meta name="description" content="Maintain and developed by divinity technologies,pune" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../style/table.css" type="text/css" media="screen" />
<script language="javascript" type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/jquery.blockUI.js"></script>
<script>function BUI(){
    $.blockUI({ message: '<br><img src="../icons/load.gif" width="64" height="64" alt="load"/><br><br>Please Wait...<br><br>' }); }
</script>

</head>
<body>
    <%
    //response.setHeader("Pragma","no-cache"); response.setHeader("Cache-Control","no-store");response.setDateHeader("Expires", 0);
 %>
    <div id="templatemo_background_section_top">
        <div class="templatemo_container">
            <jsp:include page="header.jsp"/>
            <jsp:include page="menu.html"/>   
        </div>
    </div>
    <div class="site_content">
        <div class="tital-Div">Abstract Sheet List</div>
        <table width="100%" border="1">
            <tr>
                <th>S. N.</th><th>Created Date</th><th>School / College Name</th><th>Work</th><th>Estimated Amount</th><th>View</th><th>Delete</th>
            </tr>
            
            <c:forEach var="itm" items="${requestScope.m}" varStatus="i">
                <tr>
                    <td>${i.count}</td>
                    <td>${itm.value[0]}</td>
                    <td>${itm.value[1]}</td>
                    <td>${itm.value[2]}</td>
                    <td>${itm.value[3]}</td>
                    <td>
                        <a href="AbstractSheetView?id=${itm.key}" onclick="BUI()"><input type="button" class="GreenButton" value="   View   "/></a>

                    </td>
                    <td>
                        <input type="button" onclick="alert('This Function Will BE Available Soon...')" class="deleteButton" value="   Delete   "/>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </div>
                
        <div id="templatemo_footer">
        	Copyright © 2016 Pune District Education Association,Pune | Website Developed and Maintain by <a href="http://www.techdivinity.com" target="_blank">Tech Divinity,Pune</a>
        </div>
        </div><!-- End Of container -->
    </div><!-- End Of Middle Background -->
</body>
<!--  Designed by w w w . t e m p l a t e m o . c o m  --> 
</html>