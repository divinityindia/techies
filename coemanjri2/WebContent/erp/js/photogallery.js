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