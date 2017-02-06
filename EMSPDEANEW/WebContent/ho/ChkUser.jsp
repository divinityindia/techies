<%--
    Document   : clgUserChk
    Created on : Mar 11, 2016, 10:16:20 AM
    Author     : divinity
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

<!--         <script type="text/javascript" src="../stopBack.js"></script> -->
    </head>
    <body>
		<c:if test="${sessionScope.cat==null || sessionScope.cat!='headoffice' }">
			${sessionScope.cat=null}
			<jsp:forward page="error.jsp" />

		</c:if>

    </body>
</html>
