<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <!-- App Favicon icon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App Title -->
        <title>:: Gallery Master</title>

        <!-- Plugins css -->
       
       <!--  <link href="../assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet"> -->

       <!--  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" /> -->
        <!-- <link href="../assets/css/menu.css" rel="stylesheet" type="text/css" /> -->
        <!-- <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" /> -->
        <link href="assets/css/table.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="assets/css/photogallery.css" rel="stylesheet" type="text/css" />
        <link href="erplayout/layout.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="assets/js/modernizr.min.js"></script>
        
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript">
        
        $(document).ready(function(){
        	var i=2;
        	$("#gpage").change(function(event){
        		var page = $( 'option:selected', this ).val();
        		if(page=='')
        		{
        			$("#addmorebtn").css('visibility','hidden');
        			$("#gallerytable1").css('display','none');
        			$('#gallerytable tr').slice(1).remove();
        		}
        		else
        		{
        			$("#gallerytable1").css('display','block');
        			$('#gallerytable tr').slice(1).remove();
        			$("#addmorebtn").css('visibility','visible');
        			$("#gallerytable").append("<tr id='r1'><td>Upload Image</td><td><input type='file' id='img1' name='file1' required='required'/></td><td></td></tr>");
        			
        		}
        	});
        	$("#addmorebtn").click(function(event){
        		$("#gallerytable").append("<tr id='r"+i+"'><td></td><td><input type='file' id='img"+i+"' name='file"+i+"' required='required'/></td><td><input type='button' id='remove"+i+"' value='Remove' class='remove' /></td></tr>");
        		i++;
        	});
        	
        	$(document).on('click', '.remove', (function(event){
        	
        		$(this).closest('tr').remove();
        		i--;
        	}));
        	
        	
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
        		$("#success").append('Album Added Successfully')
        		$("#success").css('display','block')
        	}
        	else if($.urlParam('success')=='0')
        	{
        		$("#success").append('Error in adding album...Please try again!')
        		$("#success").css('display','block')
        	}
        	
        	$("#dpage").change(function(event){
        		var page = $( 'option:selected', this ).val();
        		if(page=='')
        		{
        			$("#deletealbum").css('visibility','hidden');
        		}
        		else
        		{
        			$("#deletealbum").css('visibility','visible');
        		}
        	});
        	$("#deletealbum").click(function(event){
        		
        		if (!confirm("Are you sure?")){
  			      return false;
  				}
        		$("#loading").css('display','block');
        		var page = $('#dpage option:selected').val();
        		$.ajax({
     	           type: "get",
     	           url: "deletegallery",                
     	           dataType: "json",
     	           data: {"page" : page},
     	           success:function(data){
     	           	if(data)
     	           	{
     	           		alert("Deleted Successfully");
     	           		$("#loading").css('display','none');
     	           	}
     	           	else
     	           	{
     	           		alert("Album already deleted or error Please verify!");
     	           		$("#loading").css('display','none');
     	           	}
     	           	
     	           },
     	           error:function(){
     	        	  alert("Error...!Please try again");
     	           } 
     	      });
        		
        	});
        	
        });
        </script>
       
    </head>


    <body>


	<div class="wrapper">
    	<div class="container clear">

           <!-- Page-Title -->
          
        	<div class="row">
            	<div class="col-sm-12">
                	<div class="card-box">
                    	
  						<div id="success" style="display: none;color: tomato;font-weight: bold;font-size: large;"></div>
  						<div id="block">
  						<h3>Gallery 1 (All Images should be of standard Size 700x300 pixels).</h3>
  						<form action="addgallery" method="post" id="form1" enctype="multipart/form-data">
  						<table id="gallerytable"> 
							<tr>
								<th colspan="3" style="text-align: center;">
								Select Gallery Page: 
									<select name="gpage" id="gpage">
										<option selected="selected" value="">Select Page</option>
										<option value="1">Gallery 1</option>
										<option value="2">Gallery 2</option>
										<option value="3">Gallery 3</option>
										<option value="4">Gallery 4</option>
									</select>
									&nbsp;&nbsp;
									<input type="button" id="addmorebtn" value="Add More Images" style="visibility: hidden;"/>
								</th>
							</tr>
						</table>
						<table id="gallerytable1" style="display: none;margin-top: 15px"> 
							<tr>
								<td>Album Heading</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="head" placeholder="Max 25 characters" maxlength="25" name="head" required="required"/></td>
							</tr>
							<tr>
								<td>Album Details</td><td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="details" placeholder="Max 75 characters" maxlength="75" name="details" required="required"/></td>
							</tr>
							<tr>
								<td colspan="3" align="right"><input type="submit" id="addalbum" value="Add Album"/></td>
							</tr>
						</table>
						</form>
  						</div>
  						<hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;"/>
  						<div id="block1">
  							<table id="gallerytable3"> 
							<tr>
								<th colspan="3" style="text-align: center;">
								Reset album pages 
									<select name="dpage" id="dpage">
										<option selected="selected" value="">Select Page</option>
										<option value="1">Gallery 1</option>
										<option value="2">Gallery 2</option>
										<option value="3">Gallery 3</option>
										<option value="4">Gallery 4</option>
									</select>
									
									&nbsp;&nbsp;
									<input type="button" id="deletealbum" value="Delete Album" style="visibility: hidden;"/>
								</th>
							</tr>
							<tr>
								<td colspan="3" style="text-align: center;"><div style="text-align:center;padding-left: 5px" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading" style="margin-left: 50%;display: none;"/></div></td>
							</tr>
						</table>
  						</div>
  						
                    
                </div>
            </div>
        </div>
                <!-- Footer -->
                <footer class="footer text-right">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6">
                                © 2016. All rights reserved.
                            </div>
                            <div class="col-xs-6">
                                <ul class="pull-right list-inline m-b-0">
                                    <li>
                                        <a href="#">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->

    </body>
</html>