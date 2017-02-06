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
	
	
	$("#addeditbutton").text("Add Event")
	$("#formactionadd").val("add");
	
	$('.eventid').change(function() { 
	    if ($('.eventid:checked').length) { 
	        $('#deleteButton').removeAttr('disabled'); 
	    } else { 
	        $('#deleteButton').attr('disabled', 'disabled'); 
	    } 
	}); 
	
	
	//Reset button function
	$('#resetbutton').click(function() { 
		$("#addeditbutton").text("Add Event")
		$("#formactionadd").val("add");
		$("#branch").prop('selectedIndex', 0);
		$("#category").prop('selectedIndex', 0);
		$("#hr").prop('selectedIndex', 0);
		$("#min").prop('selectedIndex', 0);
		$("#am").prop('selectedIndex', 0);
		$("#hr1").prop('selectedIndex', 0);
		$("#min1").prop('selectedIndex', 0);
		$("#am1").prop('selectedIndex', 0);
		$("#roption").prop('selectedIndex', 0);
		$("#status").prop('selectedIndex', 0);
		});
		
	//editlink onclick function
	
	$('.editlink').click(function() { 
		
		var $this = $(this);
        var eventid = $this.data('p1');
        var branchname= $this.data('p2'); 
        var category = $this.data('p3'); 
        var eventtitle = $this.data('p4'); 
        var contactperson = $this.data('p11'); 
        var sdate = $this.data('p12'); 
        function formatDate (input) {
        	  var datePart = input.match(/\d+/g),
        	  year = datePart[0].substring(0), // get only two digits
        	  month = datePart[1], day = datePart[2];

        	  return day+'/'+month+'/'+year;
        	}

        var startdate=formatDate (sdate);
        var organizedby = $this.data('p16'); 
        var organizedfor = $this.data('p17');
        var venue = $this.data('p18'); 
        var details = $this.data('p19'); 
        var instructions = $this.data('p20'); 
        var url = $this.data('p21'); 
        var starttime = $this.data('p22'); 
        var status = $this.data('p14'); 
        var hr=starttime.substring(0, 2);
        var min=starttime.substring(3, 5);
        var am=starttime.substring(6);
        
        var roption = $this.data('p23'); 
        var enddate = $this.data('p24'); 
        var endtime = $this.data('p25'); 
        
        var hr1=endtime.substring(0, 2);
        var min1=endtime.substring(3, 5);
        var am1=endtime.substring(6);
        
        
        $("#eid").val(eventid);
        $("#branch option:contains(" + branchname +")").prop("selected", true);
        $("#category option:contains(" + category +")").prop("selected", true);
        
        $("#hr option:contains(" + hr +")").prop("selected", true);
        $("#min option:contains(" + min +")").prop("selected", true);
        $("#am option:contains(" + am +")").prop("selected", true);
        
        $("#hr1 option:contains(" + hr1 +")").prop("selected", true);
        $("#min1 option:contains(" + min1 +")").prop("selected", true);
        $("#am1 option:contains(" + am1 +")").prop("selected", true);
        
        $("#eventtitle").val(eventtitle);
        $("#organizedby").val(organizedby);
        $("#organizedfor").val(organizedfor);
        $("#venue").val(venue);
        $("#details").val(details);
        $("#instructions").val(instructions);
        $("#url").val(url);
        
        
        $("#contactperson").val(contactperson);
        $("#datepicker-1").val(startdate);
        $("#datepicker-2").val(enddate);
        $("#status option:contains("+status+")").prop("selected", true);
        $("#roption option:contains("+roption+")").prop("selected", true);
        
        $("#addeditbutton").text("Save");
		$("#formactionadd").val("edit");
		});
	
	$('#roption').change(function() { 
	    if ($("#roption").val()=='To below date') { 
	        $("#edlabel").css('display','block');
	        $("#datepicker-2").css('display','block');
	    } else { 
	    	 $("#edlabel").css('display','none');
		        $("#datepicker-2").css('display','none');
	    } 
	});
});
	
	
	

	
	