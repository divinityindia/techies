<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        
        <link href="../assets/css/table.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link href="../assets/css/photogallery.css" rel="stylesheet" type="text/css" />
        <!-- <link href="../layout/layout.css" rel="stylesheet" type="text/css" /> -->

       

        <script src="../assets/js/modernizr.min.js"></script>
        
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
        			$("#gallerytable2").css('display','none');
        			$('#gallerytable tr').slice(1).remove();
        		}
        		else if(page=='5')
        		{
        			$("#addmorebtn").css('visibility','hidden');
        			$("#gallerytable1").css('display','none');
        			$('#gallerytable tr').slice(1).remove();
        			$("#gallerytable2").css('display','block');
        		}
        		else
        		{
        			$("#gallerytable2").css('display','none');
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
        	else if($.urlParam('vsuccess')=='0')
        	{
        		$("#success").append('Error in adding video...Please try again!')
        		$("#success").css('display','block')
        	}
        	else if($.urlParam('vsuccess')=='1')
        	{
        		$("#success").append('Video Added Successfully')
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
        		$("#load").css('display','block');
        		var page = $('#dpage option:selected').val();
        		$.ajax({
     	           type: "get",
     	           url: "deletegallery",                
     	           dataType: "json",
     	           data: {"page" : page},
     	           success:function(data){
     	           	if(data)
     	           	{
     	           		var ddrp=$("#gpage");
     	           		if(page=='5')
     	           		{
     	           			$('<option>').val(page).text('Video Gallery').appendTo(ddrp);
     	           			$("#dpage option[value='"+page+"']").remove();
     	           		}
     	           		else
     	           		{
	     	           		$('<option>').val(page).text('Gallery '+page).appendTo(ddrp);
	 	           			$("#dpage option[value='"+page+"']").remove();
     	           		}
	     	           	alert("Deleted Successfully");
	     	           	$("#load").css('display','none');
     	           	}
     	           	else
     	           	{
     	           		alert("Album already deleted or error Please verify!");
     	           		$("#load").css('display','none');
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

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>
	<div class="wrapper">
    	<div class="container clear">

           <!-- Page-Title -->
          
        	<div class="row">
            	<div class="col-sm-12">
                	<div class="card-box" style="background:#EABFB6">
                    	
  						<div id="success" style="display: none;color: tomato;font-weight: bold;font-size: large;"></div>
  						<div id="block">
  						<h3>Gallery  (All Images should be of standard Size 700x300 pixels).</h3>
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
										<option value="5">Video Gallery</option>
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
						<form action="addvideo" method="post" id="form1" enctype="multipart/form-data">
						<table id="gallerytable2" style="margin-top: 15px;display:none;"> 
							<tr>
								<th>
								Upload Video:
								</th>
								<th>
								<input type="file" id="video" name="video" required="required"/>
								</th>
							</tr>
							<tr>
								<td>Video Heading</td><td><input type="text" id="vhead" placeholder="Max 25 characters" maxlength="25" name="vhead" required="required"/></td>
							</tr>
							<tr>
								<td>Video Details</td><td><input type="text" id="vdetails" placeholder="Max 75 characters" maxlength="75" name="vdetails" required="required"/></td>
							</tr>
							<tr>
								<td colspan="3" style="text-align: center;">
									<input type="submit" value="Add Video" />
								</td>
							</tr>
						</table>
						</form>
  						
  						<hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;"/>
  						
  							<table id="gallerytable3"> 
							<tr>
								<th colspan="3" style="text-align: center;">
								Reset album pages 
									<select name="dpage" id="dpage">
										<option selected="selected" value="">Select Page</option>
										
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
	<script type="text/javascript">
	$(function(){ 
    	$.ajax({
	           type: "GET",
	           url: "checkgallery",                
	           dataType: "json",
	           success:function(data){
	           if(data){
	           		var a=1;
	           		var ddrp=$("#dpage")
            		$.each(data, function(k, v) {
            			if(v=='1') 
            			{
            				$("#gpage option[value='1']").remove();
            				$('<option>').val(v).text('Gallery 1').appendTo(ddrp);
            				
            			}
            			else if(v=='2')
            			{
            				$("#gpage option[value='2']").remove();
            				$('<option>').val(v).text('Gallery 2').appendTo(ddrp);
            				
            			}
            			else if(v=='3')
            			{
            				$("#gpage option[value='3']").remove();
            				$('<option>').val(v).text('Gallery 3').appendTo(ddrp);
            				
            			}
            			else if(v=='4')
            			{
            				$("#gpage option[value='4']").remove();
            				$('<option>').val(v).text('Gallery 4').appendTo(ddrp);
            				
            			}
            			else if(v=='5')
            			{
            				$("#gpage option[value='5']").remove();
            				$('<option>').val(v).text('Video Gallery').appendTo(ddrp);
            				
            			}
            				
            		  });
	               }
	           	else
	           		{
	           		alert("no data");
	           		}
	           	
	           },
	           error:function(){
	           	
	           } 
	      });
	});
	</script>
    </body>
</html>