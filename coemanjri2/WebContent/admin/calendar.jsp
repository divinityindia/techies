<html>
    <head>
        <link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    </head>
<body>
   <jsp:include page="top.jsp"/>
                                   
  <div style="float: right;margin-right: 5px;margin-top: 240px;overflow-y: scroll;">
 <div class="planner" id="planner"><%= getPlanner(request) %></div>
        <%@ page import="com.dhtmlx.planner.*,com.dhtmlx.planner.data.*" %>
<%!
           String getPlanner(HttpServletRequest request) throws Exception {
           DHXPlanner s = new DHXPlanner("../codebase/", DHXSkin.TERRACE);
           s.setWidth(900);
          
           s.setInitialDate(2016, 0, 21);
           s.load("events.jsp", DHXDataFormat.JSON);
           return s.render();
           }
           %>
           </div>
</body>
</html>