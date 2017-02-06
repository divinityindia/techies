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
	
	$("#emessage").empty();
	$("#emessage1").empty();
	$("#squestion").empty();
	$("#answer").val("");
	$("#login-name1").val("");
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
	
	
	$("#forgotpassword").click(function(){
		$("#signstatus").empty();
		$("#signstatus").append('Enter username to retrieve password');
		$("#block1").css('display','none');
		$("#block2").css('display','block');
	});
	
	$("#cancel").click(function(){
		$("#squestion").empty();
		$("#answer").val("");
		$("#login-name1").val("");
		$("#signstatus").empty();
		$("#login-name").val("");
		$("#login-pass").val("");
		$("#signstatus").append('Sign In');
		$("#block1").css('display','block');
		$("#block2").css('display','none');
		$("#block3").css('display','none');
		$("#emessage").empty();
		$("#emessage1").empty();
	});
	
	$("#cancel1").click(function(){
		$("#squestion").empty();
		$("#answer").val("");
		$("#login-name1").val("");
		$("#signstatus").empty();
		$("#login-name").val("");
		$("#login-pass").val("");
		$("#signstatus").append('Sign In');
		$("#block1").css('display','block');
		$("#block2").css('display','none');
		$("#block3").css('display','none');
		$("#emessage").empty();
		$("#emessage1").empty();
	});
	
	var fusername="";
	$("#fpassword").click(function(){
		fusername=$("#login-name1").val();
		$(function(){
			$.ajax({
			    type: "GET",
			    url: "forgotpassword",                
			    dataType: "json",
			    data: {"fusername":fusername},
			    success:function(data){
			    	
			    	if(data){
			    		if(data.status=='SUCCESS')
			    		{
			    			var userid=data.userid;
				    		var squestion=data.squestion;
				    		$("#squestion").empty();
				    		$("#squestion").append(squestion);
				    		$("#signstatus").empty();
				    		$("#signstatus").append('Give answer to security question');
				    		$("#block2").css('display','none');
				    		$("#block3").css('display','block');	
			    		}
			    		else
			    		{
			    			$("#emessage").empty();
				    		$("#emessage").append("Please enter valid username");
				    		$("#emessage").css('display','block');
			    		}
			    		
			        }
			    },
			    error:function(){
			        
			    } 
		
			});
		});
	});
	
	
	$("#fpassword1").click(function(){
		var answer=$("#answer").val();
		$(function(){
			$.ajax({
			    type: "POST",
			    url: "forgotpassword",                
			    dataType: "json",
			    data: {"fusername":fusername,"answer":answer},
			    success:function(data){
			    	
			    	if(data){
			    		if(data.status=='SUCCESS')
			    		{
			    			alert("Your new password is sent to authorized email id");
			    			$("#emessage").empty();
			    			$("#emessage1").empty();
			    			$("#squestion").empty();
			    			$("#answer").val("");
			    			$("#login-name1").val("");
			    			$("#signstatus").empty();
			    			$("#login-name").val("");
			    			$("#login-pass").val("");
				    		$("#signstatus").append('Sign In');
			    			$("#block1").css('display','block');
			    			$("#block2").css('display','none');
			    			$("#block3").css('display','none');
			    			
			    		}
			    		else if(data.status=='SUCCESS1')
			    		{
			    			alert("Mail not sent. Please again change password");
			    			$("#emessage").empty();
			    			$("#emessage1").empty();
			    			$("#squestion").empty();
			    			$("#answer").val("");
			    			$("#login-name1").val("");
			    			$("#signstatus").empty();
			    			$("#login-name").val("");
			    			$("#login-pass").val("");
				    		$("#signstatus").append('Sign In');
			    			$("#block1").css('display','block');
			    			$("#block2").css('display','none');
			    			$("#block3").css('display','none');
			    			
			    		}
			    		else if(data.status=='ERROR')
			    		{
			    			alert("Please enter valid answer.");
			    			$("#emessage").empty();
			    			$("#emessage1").empty();
			    			$("#squestion").empty();
			    			$("#answer").val("");
			    			$("#login-name1").val("");
			    			$("#signstatus").empty();
			    			$("#login-name").val("");
			    			$("#login-pass").val("");
				    		$("#signstatus").append('Sign In');
			    			$("#block1").css('display','block');
			    			$("#block2").css('display','none');
			    			$("#block3").css('display','none');
			    		}
			    		else
			    		{
			    			alert("Something went wrong please try again");
			    			$("#emessage").empty();
			    			$("#emessage1").empty();
			    			$("#squestion").empty();
			    			$("#answer").val("");
			    			$("#login-name1").val("");
			    			$("#signstatus").empty();
			    			$("#login-name").val("");
			    			$("#login-pass").val("");
				    		$("#signstatus").append('Sign In');
			    			$("#block1").css('display','block');
			    			$("#block2").css('display','none');
			    			$("#block3").css('display','none');
			    		}
			    		
			        }
			    },
			    error:function(){
			        
			    } 
		
			});
		});
	});
	
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
				<h1 id="signstatus">Sign In</h1>
			</div>
			<form action="login" method="post">	
			<div class="login-form" style="color: black;" id="block1">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="Username" id="login-name" required="required" name="userName1">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="Password" id="login-pass" required="required" name="passWord1">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

				<input type="submit" class="btn btn-primary btn-large btn-block" value="Login"/>
				<a class="login-link" href="javascript:;" id="forgotpassword">Lost your password?</a>
				<div id="sessionexp" style="color: #FF0000; display: none;"></div>
				<div style="color: #FF0000;">${errorMessage}</div>
			</div>
			</form>
			
			<div class="login-form" style="color: black;display: none" id="block2">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="Username" id="login-name1" required="required" name="username">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>
					
				<input type="button" class="btn btn-primary btn-large btn-block" value="Submit" id="fpassword"/>
				<a class="login-link" href="javascript:;" id="cancel">Cancel</a>
				<div id="emessage" style="color: #FF0000; display: none;"></div>
			</div>
			
			
			<div class="login-form" style="color: black;display: none" id="block3">
				<div class="control-group">
				<p id="squestion"></p>
				</div>
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="Answer" id="answer" required="required" name="answer">
				</div>	
				<input type="button" class="btn btn-primary btn-large btn-block" value="Submit" id="fpassword1"/>
				<a class="login-link" href="javascript:;" id="cancel1">Cancel</a>
				<div id="e1message" style="color: #FF0000; display: none;"></div>
			</div>
			
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