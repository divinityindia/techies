$(document).ready(function(){
	
	$('.deletelinkKr').click(function() { 
		
		var $this = $(this);
        var krid = $this.data('p1');
        if (!confirm("Do you want to delete")){
		      return false;
		}
		
		$("#load1").css("display", "block");
	    	//ajax call to delete flag
			$.ajax({
              type: "GET",
              url: "deleteemployeedetails",                
              dataType: "json",
              data: {"krid" : krid,"flag":"kr"},
              success:function(data){
            	  if(data){
            		$(document.getElementById("k"+krid)).remove();
              		alert("Knowledge repository deleted successfully.")
              		$("#load1").css("display", "none");
                  }
              },
              error:function(){
                  alert('not worked.');
              } 
          })
	
	
	});
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	$(function(){
		
		if($.urlParam('krsuccess')=='1')
		{
			
			$("#krsuccess").empty();
			$("#krsuccess").append('Knowledge repository added successfully');
			$("#krsuccess").css('display','block');
		}
		else if($.urlParam('qualsuccess')=='0')
		{
			$("#krsuccess").empty();
			$("#krsuccess").append('Knowledge repository add failed');
			$("#krsuccess").css('display','block');
		}
		
	});

});


	