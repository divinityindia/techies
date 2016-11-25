<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PDEA E Tender Portal</title>
<meta name="keywords" content="free etendering  by pdea  " />
<meta name="description" content="Maintain and developed by divinity technologies,pune" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../style/table.css" type="text/css" media="screen" />

<style>
    table {
    border-collapse: collapse;
    }
    table td{
        background-color: #FFF;
        text-align: center;
    }
    td:nth-child(2)
    {
        text-align: left; 
    }
    td:nth-child(3),td:nth-child(4),td:nth-child(5){
       width: 70px; 
    }
    td:nth-child(6){
        width: 100px;
    }
    table .F td{
        border-bottom: none;
    }
    table .I td{
        
        border-top: none;
        border-bottom: none;
    }
    table .S td{
        
    }
</style>
<script>
    function printDiv(divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;

        window.print();

        document.body.innerHTML = originalContents;
   }
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
        <input type="button" value=" Print " onclick="printDiv('printArea')" class="analysis-button" style="float: right"/>
        
        <c:set var="data" value="${requestScope.info}" scope="page"/>
        <c:set var="cnt" value="${0}"/>
        
        <div id='printArea'>
            <b style="float: right">${data[0]}</b><br>
                Name Of School / College : <b>${data[1]}</b><br>
                Name Of The Work : <b>${data[2]}</b>
                <center>
                    <h4>~~~ ABSTRACT SHEET ~~~</h4>
                </center>
            <table width="100%" border="1">
                <thead>
                <tr><th>Item No</th><th>Description of Item</th><th>Quantity</th><th>Rate</th><th>Per Unit</th><th>Amount Rs</th></tr>
                </thead>
                <tbody>
                <c:forEach var="arr" items="${requestScope.items}" varStatus="i">
                    <tr class="${arr[0]}">
                        <td>
                            <c:if test="${arr[0]=='F' || arr[0]=='S'}">
                                <c:set var="cnt" value="${cnt+1}"/>
                                ${cnt}
                            </c:if>
                        </td>
                        <td>${arr[1]}</td>
                        <td>${arr[2]}</td>
                        <td>${arr[3]}</td>
                        <td>${arr[4]}</td>
                        <td><fmt:formatNumber type="number" groupingUsed="false"  minFractionDigits="2" maxFractionDigits="2" value="${arr[5]}" /></td>
                    </tr>
                </c:forEach>
                </tbody>
                <tr>
                    <td colspan="5" style="text-align: right"> <b>Total</b>(A)  &nbsp;&nbsp;</td>
                    <th><fmt:formatNumber type="number" groupingUsed="false"  minFractionDigits="2" maxFractionDigits="2" value="${data[3]}" /></th>
                </tr>
            </table>
                <br>
                    Lead Charge-${data[4]} (B) : <b><fmt:formatNumber type="number" groupingUsed="false"  minFractionDigits="2" maxFractionDigits="2" value="${data[5]}" /></b><br>
                    Total Amount with lead charge (A+B) : <b><fmt:formatNumber type="number" groupingUsed="false"  minFractionDigits="2" maxFractionDigits="2" value="${data[6]}" /></p></b>     
        </div>
        <input type="button" value=" Print " onclick="printDiv('printArea')" class="analysis-button" style="float: right"/>
        <br>
    </div>
                
        <div id="templatemo_footer">
        	Copyright © 2016 Pune District Education Association,Pune | Website Developed and Maintain by <a href="http://www.techdivinity.com" target="_blank">Tech Divinity,Pune</a>
        </div>
        </div><!-- End Of container -->
    </div><!-- End Of Middle Background -->
</body>
<!--  Designed by w w w . t e m p l a t e m o . c o m  --> 
</html>