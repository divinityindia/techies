$(document).ready(function(){
				$('#addr').click(function() { 
					var course=$("#course").val();
		    	 	
		    	 	var branch=$("#branch").val()
		    	 	$("#crsid").val(course);
		    	 	$("#brid").val(branch);
		    	 	
		    	 	
					if( $.trim(course) == $.trim("---Select Course---") || $.trim(branch) == $.trim("---Select Branch---"))
						{
							alert("Please select Course and Branch");
						}
					else
						{
						$('#load').css('display','block');
						
			            $.ajax({
			                type: "GET",
			                url: "../showdropdownsubject",                
			                dataType: "json",
			                data: {"course" : course,"branch":branch},
			                success:function(data){
			                	
			                	if(data){
			                		
			                    	
			                		var subject=$("#subjectname");
			                		
			                		$.each(data, function(k, v) {
			                			 $('<option>').val(v).text(v).appendTo(subject); 
			                		  });
			                		
			                		$('#load').css('display','none');
			                		
			                		$('#otherdetails').css('display','block');
			    					$('#coursebranchblock').css('display','none');
			    					
			    					$("#label1").text($("#course option:selected").text());
			    					$("#label2").text($("#branch option:selected").text());
			                    	

			                    }
			                },
			                error:function(){
			                    alert('not worked.');
			                } 

			            })
						}
					 
				});
				
				//Reset button function
				$('#resetbutton').click(function() { 
					$('#subjectname option[value!=""]').remove();
					$('#coursebranchblock').css('display','block');
					$('#otherdetails').css('display','none');
					$("#course").prop("selectedIndex", 0)
					$("#branch").prop("selectedIndex", 0)
					$("#crsid").val("");
		    	 	$("#brid").val("");
					$("#classname").prop("selectedIndex", 0)
					$("#sectionname").prop("selectedIndex", 0)
					$("#subjectname").prop("selectedIndex", 0)
					$("#day").prop("selectedIndex", 0)
					$('#timefrom').val("");
					$('#timeto').val("");
					$('#room').val("");
					
 				});
				
				
 			});