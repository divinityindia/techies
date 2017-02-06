<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  
      <link href="assets/css/loginstyle.css" rel="stylesheet" type="text/css" />
      <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
      <link href="layout/styles/layout1.css" rel="stylesheet" type="text/css" media="all">
<script src="../assets/js/modernizr.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	if($.urlParam('success')=='0')
	{
		$("#sessionexp").empty();
		$("#sessionexp").append('Session Expired or user logged out!');
		$("#sessionexp").css('display','block');
		
	}
	if($.urlParam('success')=='1')
	{
		var message=$.urlParam('message');
		message=decodeURI(message);
		$("#sessionexp").empty();
		$("#sessionexp").append(message);
		$("#sessionexp").css('display','block');
	}
	
});

</script>
</head>


<body id="top">

<jsp:include page="top.jsp"/>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div id="fixed">
	<div class="wrapper row3">
  <div class="rounded" style="background-image: url('images/login.jpg');">
  <main class="container clear"> 
  <div class="scroll">
	<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Sign In</h1>
			</div>
			<form action="login" method="post">	
			<div class="login-form" style="color: black;">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="Username" id="login-name" required="required" name="userName1">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="Password" id="login-pass" required="required" name="passWord1">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

				<input type="submit" class="btn btn-primary btn-large btn-block" value="Login"/>
				<a class="login-link" href="#">Lost your password?</a>
				<div id="sessionexp" style="color: #FF0000; display: none;"></div>
				<div style="color: #FF0000;">${errorMessage}</div>
			</div>
			</form>
		</div>
	</div>
	</div>
	</main>
	</div>
	
	
	
	<div class="rounded">
	<div class="group">
        <h2>Quickly Find What You Are Looking For</h2>
       	<div class="myfont">
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="http://unipune.ac.in/" target="_blank">&#9755; Savitribai Phule Pune University</a></li>
			<li><a href="https://mahaeschol.maharashtra.gov.in" target="_blank">&#9755; Samaj Kalyan(E Scholarship)</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://exam.unipune.ac.in" target="_blank">&#9755; SPPU's Online Examination Form</a></li>
          	<li><a href="#">&#9755; Anti Ragging</a></li> 
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://dte.org.in" target="_blank">&#9755; Directorate of Technical Education</a></li>
          	<li><a href="#">&#9755; Women's grievance cell</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://ropune.org.in" target="_blank">&#9755; RO DTE, Pune</a></li>
          	<li><a href="#">&#9755; Mandatory Disclosure</a></li>  
          </ul>
          <!-- ################################################################################################ --> 
        </div>
		</div>
      </div>
      
      </div>
      </div>
      
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    
 

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<jsp:include page="bottom.jsp"/>
</div>
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
</body>
</html>