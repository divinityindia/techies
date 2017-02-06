<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Virtual Tour Video</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.gallery==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<div id="success" style="display: none;color: #A52105;font-weight: normal;font-size: small;"></div>
  						<div id="block">
  						<h3>Add Virtual Tour Video</h3>
  						
						<form action="virtualtour" method="post" id="form1" enctype="multipart/form-data">
						<table id="gallerytable2" style="margin-top: 15px;"> 
							<tr>
								<th>
								Upload Video:
								</th>
								<th>
								<input type="file" id="video" name="video" required="required"/>
								</th>
							</tr>
							<tr>
								<td colspan="3" style="text-align: center;">
									<input type="submit" value="Add Video" />
								</td>
							</tr>
						</table>
						</form>
  						
  						<video controls id="virtualtour" autoplay="autoplay">
  							<source src="virtualtour" type="video/mp4">
            			</video>
  						<button type="button" id="delete">Delete Virtual Tour</button>
  						
  						</div>	
       				
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
       			</div>
       		</div>
        	<div id="footer">
           		<div id="copyright" class="clear"> 
    				<p style="float: left;">Copyright &copy; 2016 - All Rights Reserved - <a href="#">College of Engineering, Manjari</a></p>    
    				<p style="float: right;">Designed and Developed by <a target="_blank" href="#">Techdivinity</a></p>
  				</div>
        	</div>
        </div>
    </div>
<script type="text/javascript">
$("#delete").css('display','none')
$("#virtualtour").css('display','none')
$.ajax({
    type: "GET",
    url: "virtualtourupdate",                
    dataType: "json",
    data: {"flag" : "check"},
    success:function(data){
  	  if(data){
  		$("#gallerytable2").css('display','none');
  		$("#delete").css('display','block')
  		$("#virtualtour").css('display','block')
  	  }
    },
    error:function(){
        alert('not worked.');
    } 
})
	
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	
		if($.urlParam('success')=='1')
		{
			$("#success").empty();
			$("#success").append('Video added Successfully.');
			$("#success").css('display','block');
		}
		else if($.urlParam('success')=='0')
		{
			$("#success").empty();
			$("#success").append('Video add failed...Please try again');
			$("#success").css('display','block');
		}
		
		
		$("#delete").click(function(event){
    		
    		if (!confirm("Are you sure?")){
			      return false;
				}
    		
    		
    		$.ajax({
 	           type: "get",
 	           url: "virtualtourupdate",                
 	           dataType: "json",
 	           data: {"flag" : "delete"},
 	           success:function(data){
 	           	if(data)
 	           	{
 	           		alert("Virtual tour deleted successfully");
 	           		$("#gallerytable2").css('display','block');
 	           		$("#virtualtour").css('display','none')
 	           		$("#delete").css('display','none')
 	           		
 	           	}
 	           	
 	           	
 	           },
 	           error:function(){
 	        	  alert("Error...!Please try again");
 	           } 
 	      });
    		
    	});	
	</script>
</body>
</html>
