<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>

<div class="w3-container">
 <h2></h2>
 <div class="w3-card-4" style="width:70%">
    <header class="w3-container w3-light-grey">
    <div style="float: left;">
      <img src="../images/logohd.jpg" width="85" height="100" style="padding-bottom: 5px;padding-top: 5px"/>
    </div>
    <div style="float: left;padding-left: 10px">  
      <h2>PDEA's College of Enginering, Manjari</h2>
      <p>Hadapsar-Manjari Road, Manjari Bk, Tal:Pune, Dist:Pune, 412307</p>
    </div>  
    </header>
    <div class="w3-container">
    	<p style="text-align: center;">F.E. Section A: Academic Year: 2013-14</p>
      	<hr>
      		<img src="${pageContext.servletContext.contextPath}/admin/photoservlet?studentid=${requestScope.studentid}" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
      	<div style="float: left;padding-left: 10px">  
      	<p>Name: ${requestScope.studentname}</p>
      	</div>
      	<div style="float: left;padding-left: 10px">
      	<p>Date of Birth: ${requestScope.dateofbirth}</p>
      	</div>
      	<div style="float: left;padding-left: 10px">
      	<p>Blood Group: ${requestScope.bloodgroup}</p>
		</div>
      	<div style="float: left;padding-left: 10px">
      	<p>Address: ${requestScope.address}</p>
    	</div>
    <button class="w3-btn-block w3-dark-grey">+ Connect</button>
  </div>
</div>

 <div class="w3-card-4" style="width:70%;padding-top: 15px">
    <header class="w3-container w3-light-grey">
    <div style="float: left;">
      <img src="../images/logohd.jpg" width="85" height="100" style="padding-bottom: 5px;padding-top: 5px"/>
    </div>
    <div style="float: left;padding-left: 10px">  
      <h2>PDEA's College of Enginering, Manjari</h2>
      <p>Hadapsar-Manjari Road, Manjari Bk, Tal:Pune, Dist:Pune, 412307</p>
    </div>  
    </header>
    <div class="w3-container">
    	<p style="text-align: center;">F.E. Section A: Academic Year: 2013-14</p>
      	<hr>
      		<img src="${pageContext.servletContext.contextPath}/admin/photoservlet?studentid=${requestScope.studentid}" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
      	<div style="float: left;padding-left: 10px">  
      	<p>Name: ${requestScope.studentname}</p>
      	</div>
      	<div style="float: left;padding-left: 10px">
      	<p>Date of Birth: ${requestScope.dateofbirth}</p>
      	</div>
      	<div style="float: left;padding-left: 10px">
      	<p>Blood Group: ${requestScope.bloodgroup}</p>
		</div>
      	<div style="float: left;padding-left: 10px">
      	<p>Address: ${requestScope.address}</p>
    	</div>
    <button class="w3-btn-block w3-dark-grey">+ Connect</button>
  </div>
</div>
</div>
</body>
</html>