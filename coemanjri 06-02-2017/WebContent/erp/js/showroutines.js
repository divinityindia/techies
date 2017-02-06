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
				$("#mainform").css('display','none');
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
		                		
		                		
		                		/*var tf=$(document.getElementById("tf"+routineid));
		                		var tt=$(document.getElementById('tt'+routineid));
		                		var room1=$(document.getElementById('room'+routineid));
		                		
		                		tf.text('');
		                		tt.text('');
		                		room1.text('');
		                		tf.append(etimefrom);
		                		tt.append(etimeto);
		                		room1.append(eroom);*/
		                		
		                		$("#contactdiv").css("display", "none");
		                		
		                		
		                		$( "#routinetable" ).empty();
		                		
		                		course = $("#course option:selected").text();
								branch = $("#branch option:selected").text();
								class1 = $("#classname option:selected").text();
		                		
		    					var ssection = $("#ssection option:selected").text();
		    					$("#sloading").css("visibility", "visible");
		    					$.ajax({
		    		                type: "GET",
		    		                url: "../routinesectionwise",                
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
		    		                						$('#routinetable').append('<div id="mon" class="routinedisplay"><div class="routineblock1"><p class="day">Monday<p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    		                						m=1;
		    		                					}
		    		                				else
		    		                					{
		    		                						$('#mon').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    		                					}
		    		                				
		    		                			}
		    		                			else if(item.day=='Tuesday')
		    		                			{
		    		                				if(t==0)
		    	                					{
		    	                						$('#routinetable').append('<div id="tue" class="routinedisplay"><div class="routineblock1"><p class="day">Tuesday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                						t=1;
		    	                					}
		    	                				else
		    	                					{
		    	                						$('#tue').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25"/></a></div>');
		    	                					}
		    		                			}
		    		                			else if(item.day=='Wednesday')
		    	                				{
		    		                				if(w==0)
		    	                					{
		    	                						$('#routinetable').append('<div id="wed" class="routinedisplay"><div class="routineblock1"><p class="day">Wednesday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                						w=1;
		    	                					}
		    	                				else
		    	                					{
		    	                						$('#wed').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                					}
		    	                				}
		    		                			else if(item.day=='Thursday')
		    	                				{
		    		                				if(th==0)
		    	                					{
		    	                						$('#routinetable').append('<div id="thur" class="routinedisplay"><div class="routineblock1"><p class="day">Thursday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                						th=1;
		    	                					}
		    	                				else
		    	                					{
		    	                						$('#thur').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                					}	                				
		    	                				}
		    		                			else if(item.day=='Friday')
		    	                				{
		    		                				if(f==0)
		    	                					{
		    	                						$('#routinetable').append('<div id="fri" class="routinedisplay"><div class="routineblock1"><p class="day">Friday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                						f=1;
		    	                					}
		    	                				else
		    	                					{
		    	                						$('#fri').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25"/></a></div>');
		    	                					}
		    	                				}
		    		                			else if(item.day=='Saturday')
		    	                				{
		    		                				if(s==0)
		    	                					{
		    	                						$('#routinetable').append('<div id="sat" class="routinedisplay"><div class="routineblock1"><p class="day">Saturday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		    	                						s=1;
		    	                					}
		    	                				else
		    	                					{
		    	                						$('#sat').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
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
		                url: "../routinesectionwise",                
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
		                						$('#routinetable').append('<div id="mon" class="routinedisplay"><div class="routineblock1"><p class="day">Monday<p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		                						m=1;
		                					}
		                				else
		                					{
		                						$('#mon').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
		                					}
		                				
		                			}
		                			else if(item.day=='Tuesday')
		                			{
		                				if(t==0)
	                					{
	                						$('#routinetable').append('<div id="tue" class="routinedisplay"><div class="routineblock1"><p class="day">Tuesday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						t=1;
	                					}
	                				else
	                					{
	                						$('#tue').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25"/></a></div>');
	                					}
		                			}
		                			else if(item.day=='Wednesday')
	                				{
		                				if(w==0)
	                					{
	                						$('#routinetable').append('<div id="wed" class="routinedisplay"><div class="routineblock1"><p class="day">Wednesday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						w=1;
	                					}
	                				else
	                					{
	                						$('#wed').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                					}
	                				}
		                			else if(item.day=='Thursday')
	                				{
		                				if(th==0)
	                					{
	                						$('#routinetable').append('<div id="thur" class="routinedisplay"><div class="routineblock1"><p class="day">Thursday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						th=1;
	                					}
	                				else
	                					{
	                						$('#thur').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                					}	                				
	                				}
		                			else if(item.day=='Friday')
	                				{
		                				if(f==0)
	                					{
	                						$('#routinetable').append('<div id="fri" class="routinedisplay"><div class="routineblock1"><p class="day">Friday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						f=1;
	                					}
	                				else
	                					{
	                						$('#fri').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25"/></a></div>');
	                					}
	                				}
		                			else if(item.day=='Saturday')
	                				{
		                				if(s==0)
	                					{
	                						$('#routinetable').append('<div id="sat" class="routinedisplay"><div class="routineblock1"><p class="day">Saturday</p></div><div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
	                						s=1;
	                					}
	                				else
	                					{
	                						$('#sat').append('<div class="routineblock" id="r'+item.routineId+'"><span id="tf'+item.routineId+'">'+item.timeFrom+'</span> - <span id="tt'+item.routineId+'">'+item.timeto+'</span><br>'+item.subject+'<br><span id="room'+item.routineId+'">'+item.room+'</span><br><a class="delete" href="javascript:;" data-p1="'+item.routineId+'"><img src="../icon/delete.png" height="25" width="25" style="position:relative"/></a><a class="edit" href="javascript:;" data-p1="'+item.routineId+'" data-p2="'+item.timeFrom+'" data-p3="'+item.timeto+'" data-p4="'+item.room+'"><img src="../icon/edit.png" height="25" width="25" style="position:relative"/></a></div>');
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
			
			$("#mainform").css('display','block');
			var $this = $(this);
		    var routineid = $this.data('p1');
		    var etimefrom = $this.data('p2');
		    var etimeto = $this.data('p3');
		    var eroom = $this.data('p4');
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