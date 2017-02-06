$(document).ready(function(){
	$(function(){
		$.ajax({
		    type: "GET",
		    url: "../../count",                
		    dataType: "json",
		    success:function(data){
		    	
		    	if(data){
		    		
		    		$.each(data, function(i,item) {
		    			$("#stdct").append(item.studentCount);
			    		$("#tcrct").append(item.teacherCount);
			    		$("#prtct").append(item.parentCount);
			    		$("#atdct").append(item.attendanceCount);
		    		  });
		        }
		    },
		    error:function(){
		        
		    } 
	
		});
	});
});
