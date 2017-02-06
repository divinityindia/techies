$(document).ready(function(){
	
	$(function(){
		$.ajax({
		    type: "GET",
		    url: "../showdropdowndepts",                
		    dataType: "json",
		    success:function(data){
		    	
		    	if(data){
		    		var branch=$("#branch");
		    		
		    		$.each(data, function(k, v) {
		    				$('<option>').val(k).text(v).appendTo(branch);
		    		  });
		        }
		    },
		    error:function(){
		        
		    } 
		});
	});
	
	
	$("#addeditbutton").text("Add News")
	$("#formactionadd").val("add");
	
	$('.newsid').change(function() { 
	    if ($('.newsid:checked').length) { 
	        $('#deleteButton').removeAttr('disabled'); 
	    } else { 
	        $('#deleteButton').attr('disabled', 'disabled'); 
	    } 
	}); 
	
	
	//Reset button function
	$('#resetbutton').click(function() { 
		$("#addeditbutton").text("Add News")
		$("#formactionadd").val("add");
		$("#branch").prop('selectedIndex', 0);
		$("#status").prop('selectedIndex', 0);
		});
		
	//editlink onclick function
	
	$('.editlink').click(function() { 
		
		var $this = $(this);
        var newsid = $this.data('p1');
        var branchname= $this.data('p2'); 
        var newstitle = $this.data('p3');
        var url = $this.data('p7');
        var sdate = $this.data('p4'); 
        function formatDate (input) {
        	  var datePart = input.match(/\d+/g),
        	  year = datePart[0].substring(0), // get only two digits
        	  month = datePart[1], day = datePart[2];

        	  return day+'/'+month+'/'+year;
        	}

        var startdate=formatDate (sdate);
        var status = $this.data('p5'); 
        var details = $this.data('p6');
        $("#nid").val(newsid);
        $("#branch option:contains(" + branchname +")").prop("selected", true);
        $("#status option:contains("+status+")").prop("selected", true);
        $("#newstitle").val(newstitle);
        $("#url").val(url);
        $("#details").val(details);
        $("#datepicker-1").val(startdate);
        
        
        $("#addeditbutton").text("Save");
		$("#formactionadd").val("edit");
		});
});
	
	
	

	
	