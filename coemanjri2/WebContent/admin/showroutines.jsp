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
        <title>:: Show Routine</title>

        <!-- Plugins css -->
       
        <link href="../assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/form.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/popup.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
		
        <script src="../assets/js/modernizr.min.js"></script>
        <style type="text/css">
			
			
			.routinedisplay{
				height:150px;
				width:1000px;
				margin: 10px 5px 5px 20px;
				
				background:  #9fd6f7;
				
				float: left;
			}

			.routineblock{
				width:130px;text-align:center;float:left;height:130px;background:#903b53 ;color:white;margin: 5px 0 5px 5px;padding: 1px 1px 2px 1px;
				vertical-align: middle;
				font-size: 15px;
			}
			
			p{
				font-weight: bolder;
				font-size: large;
				padding-top: 55px;
			}
			
			a.edit{
				float:right;
				height:30px;
				width:30px
			}
			
			a.delete{
				
				float:right;
				height:30px;
				width:30px
			}
			
			#wait {
			    visibility:hidden;
			    position:   relative;
			    z-index:    1000;
			    top:        35%;
			    left:       35%;
			    height:     100%;
			    width:      100%;
			    
			}
		</style>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		
			
			$(document).ready(function(){
				var course;
				var branch;
				var class1;
				//Reset button function
				$('#resetbutton').click(function() { 
					$("#classname").prop("selectedIndex", 0)
					$("#branch").prop("selectedIndex", 0)
					$("#course").prop("selectedIndex", 0)
					$('#ssection option[value!="0"]').remove();
					$("#routinetable").empty();
					
					
 				});
				
				//Edit Popup
				
				$("#ct #cl").click(function() {
				$this = $(this);
				$this.parent().parent().hide();
				});
				
				$("#save").click(function() {
					var etimefrom = $("#etimefrom").val();
					var etimeto = $("#etimeto").val();
					var eroom = $("#eroom").val();
					var routineid= $("#eroutineid").val();
					var action="edit";
					
					//ajax call to Save Routine
					$.ajax({
		                type: "POST",
		                url: "routine",                
		                dataType: "json",
		                data: {"routineid" : routineid,"action":action,"etimefrom":etimefrom,"etimeto":etimeto,"eroom":eroom},
		                success:function(data){
		                	if(data){
		                		
		                		
		                		var tf=$(document.getElementById("tt"+routineid));
		                		var tt=$(document.getElementById('tf'+routineid));
		                		var room1=$(document.getElementById('room'+routineid));
		                		
		                		tf.text('');
		                		tt.text('');
		                		room1.text('');
		                		tf.append(etimefrom);
		                		tt.append(etimeto);
		                		room1.append(eroom);
		                		
		                		$("#contactdiv").css("display", "none");
		                    }
		                },
		                error:function(){
		                    alert('Error in saving details...Please try later!');
		                } 

		            })
					
					
				});
				
				
				
				
				//Show button function
				$('#showroutinesBtn').click(function() { 
					if ($("#course")[0].selectedIndex <= 0 || $("#branch")[0].selectedIndex <= 0 || $("#classname")[0].selectedIndex <= 0) {
		                alert("Please select course, branch and class.");
		            }
					else
					{
						$("#loading").css("visibility", "visible");
						$('#ssection option[value!="0"]').remove();
						course = $("#course option:selected").text();
						branch = $("#branch option:selected").text();
						class1 = $("#classname option:selected").text();
						
						//ajax call to load Routines
						$.ajax({
			                type: "POST",
			                url: "showroutines",                
			                dataType: "json",
			                data: {"course" : course,"branch":branch,"class":class1},
			                success:function(data){
			                	if(data){
			                		$("#loading").css("visibility", "hidden");
			                		$("#showblock").css("visibility", "visible");
			                		var ssection=$("#ssection");
			                		$.each(data, function(i,item) {
			                			 $('<option>').val(item).text(item).appendTo(ssection); 
			                		  });
			                		
		
			                    }
			                },
			                error:function(){
			                    alert('not worked.');
			                } 

			            })
						
						
					}
 				});
				
				//Onclick ssection function
				
				$('#ssection').change(function(event) { 
					
					$( "#routinetable" ).empty();
					var ssection = $( 'option:selected', this ).val();
					
					$("#sloading").css("visibility", "visible");
					$.ajax({
		                type: "GET",
		                url: "routinesectionwise",                
		                dataType: "json",
		                data: {"course" : course,"branch":branch,"class":class1,"section":ssection},
		                success:function(data){
		                	if(data){
		                		$("#sloading").css("visibility", "hidden");
		                		var c=1;
		                		var m=0;
		                		var t=0;
		                		var w=0;
		                		var th=0;
		                		var f=0;
		                		var s=0;
		                		$.each(data, function (i, item) {
		                			
		                			if(item.day=='Monday')
		                			{	
		                				if(m==0)
		                					{
		                						$('#routinetable').append('<div id="mon" class="routinedisplay"><div class="routineblock" style="font-weight:bold;padding-top:55px">Monday</div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		                						m=1;
		                					}
		                				else
		                					{
		                						$('#mon').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		                					}
		                				
		                			}
		                			else if(item.day=='Tuesday')
		                			{
		                				if(t==0)
	                					{
	                						$('#routinetable').append('<div id="tue" class="routinedisplay"><div class="routineblock" style="font-weight:bold;padding-top:55px">Tuesday</div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						t=1;
	                					}
	                				else
	                					{
	                						$('#tue').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25"/></a></div>');
	                					}
		                			}
		                			else if(item.day=='Wednesday')
	                				{
		                				if(w==0)
	                					{
	                						$('#routinetable').append('<div id="wed" class="routinedisplay"><div class="routineblock" style="font-weight:bold;padding-top:55px">Wednesday</div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						w=1;
	                					}
	                				else
	                					{
	                						$('#wed').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                					}
	                				}
		                			else if(item.day=='Thursday')
	                				{
		                				if(th==0)
	                					{
	                						$('#routinetable').append('<div id="thur" class="routinedisplay"><div class="routineblock" style="font-weight:bold;padding-top:55px">Thursday</div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						th=1;
	                					}
	                				else
	                					{
	                						$('#thur').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                					}	                				
	                				}
		                			else if(item.day=='Friday')
	                				{
		                				if(f==0)
	                					{
	                						$('#routinetable').append('<div id="fri" class="routinedisplay"><div class="routineblock" style="font-weight:bold;padding-top:55px">Friday</div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						f=1;
	                					}
	                				else
	                					{
	                						$('#fri').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25"/></a></div>');
	                					}
	                				}
		                			else if(item.day=='Saturday')
	                				{
		                				if(s==0)
	                					{
	                						$('#routinetable').append('<div id="sat" class="routinedisplay"><div class="routineblock" style="font-weight:bold;padding-top:55px">Saturday</div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						s=1;
	                					}
	                				else
	                					{
	                						$('#sat').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../assets/images/icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../assets/images/icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                					}
	                				}
		                			
		                			
									c++;		     							                   	
		                        	
		                        });
		                		
		                		$('#mon').append('</div><br>');
	                			$('#tue').append('</div><br>');
	                			$('#wed').append('</div><br>');
	                			$('#thur').append('</div><br>');
	                			$('#fri').append('</div><br>');
	                			$('#sat').append('</div><br>');
		                		$(".routinedisplay").mouseenter(function() {
		                            $(this).css("backgroundColor","#d6f0ff");
		                        }).mouseleave(function() {
		                             $(this).css("backgroundColor","#9fd6f7");
		                        });
		                		$("#routinetable").css("visibility", "visible");
		                		
		                		$(".routineblock").mouseenter(function() {
		                            $(this).css("backgroundColor","#1e577a");
		                        }).mouseleave(function() {
		                             $(this).css("backgroundColor","#903b53");
		                        });
		                		$("#routinetable").css("visibility", "visible");
		                		
	
		                    }
		                },
		                error:function(){
		                    alert('not worked.');
		                } 

		            })
					
 				});
				
			
 		}); 
			
		//Edit link onClick function
		$(document).on("click", ".edit", function(e) {
			
			var $this = $(this);
		    var routineid = $this.data('p1');
		    var etimefrom = $this.data('p2');
		    var etimeto = $this.data('p3');
		    var eroom = $this.data('p4');
		    $('#subtotal').val(etimefrom);
		    $('#etimefrom').val(etimefrom);
		    $('#etimeto').val(etimeto);
		    $('#eroom').val(eroom);
		    $('#eroutineid').val(routineid);
		    $("#contactdiv").css("display", "block");
		    //$("#wait").css("visibility", "visible");
		   
	    });
		
		//Delete link onClick function
		$(document).on("click", ".delete", function(e) {
			
			if (!confirm("Do you want to delete")){
			      return false;
			}
			
			$("#wait").css("visibility", "visible");
			var $this = $(this);
		    var routineid = $this.data('p1');
		    var action="delete"	
		    
		    	//ajax call to delete Routines
				$.ajax({
	                type: "POST",
	                url: "routine",                
	                dataType: "json",
	                data: {"routineid" : routineid,"action":action},
	                success:function(data){
	                	if(data){
	                		$this.parents('.routineblock').remove();
	                		$("#wait").css("visibility", "hidden");  
	                    }
	                },
	                error:function(){
	                    alert('not worked.');
	                } 

	            })
		    
		    
		   
	    });
		
		
		</script> 
	</head>


    <body>

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>


	<div class="wrapper">
    	<div class="container">

           <!-- Page-Title -->
          
        	<div class="row">
            	<div class="col-sm-12">
                	<div class="card-box">
                    	<c:choose>
  							<c:when test="${param.success eq 1}">
    							<div class="form_success">Success</div>
  							</c:when>
  							<c:when test="${param.success eq 0}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  							<c:when test="${param.success eq 2}">
    							<div class="form_success">Schedule/Schedules deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Error please try again!</div>
  							</c:when>
  							<c:when test="${param.success eq 4}">
    							<div class="form_success">Edit Successful</div>
  							</c:when>
  							<c:when test="${param.success eq 5}">
    							<div class="form_success">Edit failed</div>
  							</c:when>
  						</c:choose>
                    <div class="row">
                   		                  
               				<div>
                            	<div class="row">
                            	<div class="formitem">
                                		<h5><b>Course: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="course" id="course" required="required">
                                        	<option selected="selected">---Select Course---</option>
                                        	<c:forEach var="cat" items="${requestScope.coursename}">
                                            	<option value="${cat.value}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                                   	<div class="formitem">
                                    	<h5><b>Branch: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="branch" id="branch" required="required">
                                        	<option selected="selected">---Select Branch---</option>
                                        	<c:forEach var="cat" items="${requestScope.branchname}">
                                            	<option value="${cat.value}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                  	</div>
                                </div>
                               	<div class="row">
                              		<div class="formitem">
                                   		<h5><b>Class: <font color="tomato">*</font></b></h5>
                                   		<select class="form-control"  name="classname" id="classname" required="required">
                                        	<option selected="selected" value="">---Select Class--</option>
                                        	<c:forEach var="cat" items="${requestScope.classname}">
                                            	<option value="${cat.value}">${cat.value}</option>
                                          	</c:forEach>
                                        </select>
                                   	</div>
                              	</div>
                              	<div class="row">
                                    <div class="formitem">
                                    	<button type="reset" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;margin-left: 20px" id="resetbutton" form="#form1">Reset</button>
                                    	<button type="button" class="btn btn-warning waves-effect waves-light w-lg" style="margin-top: 20px;height: 40px;float: right;" id="showroutinesBtn">Show Routines</button>
                                    	<div style="float: right;padding-left: 5px;visibility: hidden;" id="loading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
                                    </div>
                              	</div>
                           	</div>
                        
                    </div>
                    <hr style="display: block;margin-top: 20px;margin-bottom: 20px;margin-left: 0px;margin-right: 0px;border-style: double;border-width: 1px;"/>
                   	<div id="showblock" style="visibility: hidden;">
                    <div class="row">                  
               				<div>
                            	<div class="row">
                                	<div class="formitem">
                                	
                                		<h5><b>Section: <font color="tomato">*</font></b></h5>
                                        <select class="form-control"  name="ssection" id="ssection" required="required">
                                        	<option selected="selected" value="0">---Select Section---</option>
                                        </select>
                                        <div style="float: right;padding-left: 5px;visibility: hidden;" id="sloading"><img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;"/></div>
                               		</div>
                              	</div>
                              	<div class="row">
                                	<div class="formitem" id="routinetable" style="visibility: hidden;">
                                     	
                                     	<h5><b>Routine Table</b></h5>
                                     	
                                     	<div id="wait"><img src="../assets/images/icon/wait.gif" id="load" width=30% height=30% alt="loading3" style="margin: 0px;"/></div>
                                     	<!-- <div id="mon" class="routinedisplay">
                                     		<div class="routineblock">Monday</div>
                                     	</div>
                                     	<br>
                                     	<div id="tue" class="routinedisplay">
                                     		<div class="routineblock">Tuesday</div>
                                     	</div>
                                     	<br>
                                     	<div id="wed" class="routinedisplay">
                                     		<div class="routineblock">Wednesday</div>
                                     	</div>
                                     	<br>
                                     	<div id="thur" class="routinedisplay">
                                     		<div class="routineblock">Thursday</div>
                                     	</div>
                                     	<br>
                                     	<div id="fri" class="routinedisplay">
                                     		<div class="routineblock">Friday</div>
                                     	</div>
                                     	<br>
                                     	<div id="sat" class="routinedisplay">
                                     		<div class="routineblock">Saturday</div>
                                     	</div> -->
                                     	
                                     	<!-- <table id="myTable" style="color: #ffffff">
											
										<tbody>
											<tr id="mon" class="trow">
												<td>MONDAY</td>
											</tr>
											<tr id="tue" class="trow">
												<td>TUESDAY</td>
											</tr>
											<tr id="wed" class="trow">
												<td>WEDNESDAY</td>
											</tr>
											<tr id="thur" class="trow">
												<td>THURSDAY</td>
											</tr>
											<tr id="fri" class="trow">
												<td>FRIDAY</td>
											</tr>
											<tr id="sat" class="trow">
												<td>SATURDAY</td>
											</tr>
										</tbody>
										</table> -->
                               		</div>
                              	</div>
                          	</div>
                    </div>
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

		<div id="mainform">
			<div id="contactdiv">
<form class="form" action="#" id="ct">
<img src="../assets/images/icon/cancel.png" class="img" id="cl"/>
<h3>Edit Routine</h3>
<hr/><br/>
<label>Time From<span>*</span></label>
<br/>
<input type="text" id="etimefrom" placeholder="Time From"/><br/>
<br/>
<label>Time to <span>*</span></label>
<br/>
<input type="text" id="etimeto" placeholder="Time TO"/><br/>
<br/>
<label>Room <span>*</span></label>
<br/>
<input type="text" id="eroom" placeholder="Room"/><br/>
<br/>
<input type="hidden" id="eroutineid"/>
<input type="button" id="save" value="Save"/>
<input type="button" id="cl" value="Cancel"/>
<br/>
</form>
</div>
		</div>

        <!-- jQuery  -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/detect.js"></script>
        <script src="../assets/js/fastclick.js"></script>
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <script src="../assets/js/jquery.blockUI.js"></script>
        <script src="../assets/js/waves.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/jquery.nicescroll.js"></script>
        <script src="../assets/js/jquery.scrollTo.min.js"></script>

        <!-- plugins js -->
        <script src="../assets/plugins/moment/moment.js"></script>
     	<script src="../assets/plugins/timepicker/bootstrap-timepicker.js"></script>
     	<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
     	<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
     	<script src="../assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
     	<script src="../assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>

        <!-- App core js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>

        <!-- page js -->
        <script src="../assets/pages/jquery.form-pickers.init.js"></script>
		
    </body>
</html>