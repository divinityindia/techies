$(document).ready(function(){
	
	
	
	
	$("#addeditbutton").text("Add Academic Calender")
	$("#formactionadd").val("add");
	
	$('.acid').change(function() { 
	    if ($('.acid:checked').length) { 
	        $('#deleteButton').removeAttr('disabled'); 
	    } else { 
	        $('#deleteButton').attr('disabled', 'disabled'); 
	    } 
	}); 
	
	
	//Reset button function
	$('#resetbutton').click(function() { 
		$("#addeditbutton").text("Add Academic Calender")
		$("#formactionadd").val("add");
		$("#branch").val("");
		$("#class").val("");
		});
		
	//editlink onclick function
	
	$('.editlink').click(function() { 
		
		var $this = $(this);
        var acid = $this.data('p1');
        var branch= $this.data('p2'); 
        var class1 = $this.data('p3');

        $("#acid").val(acid);
        $("#branch").val(branch);
        $("#class").val(class1);
        
        
        $("#addeditbutton").text("Save");
		$("#formactionadd").val("edit");
		});
});
	
	
	

	
	