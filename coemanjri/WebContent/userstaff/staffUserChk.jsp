<%-- 
    Document   : admUserChk
    Created on : Jun 21, 2016, 5:08:56 PM
    Author     : divinity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test = "${sessionScope.cat == null||sessionScope.cat != 'staff'}">  	
            ${sessionScope.invalidate}
             <jsp:forward page="error.html" />
        </c:if>
    </body>
</html>
