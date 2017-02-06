$(document).ready(function(){
	
	$('.deletelinkExp').click(function() { 
		
		var $this = $(this);
        var expid = $this.data('p1');
        if (!confirm("Do you want to delete")){
		      return false;
		}
		
		$("#load1").css("display", "block");
	    	//ajax call to delete flag
			$.ajax({
              type: "GET",
              url: "deleteemployeedetails",                
              dataType: "json",
              data: {"expid" : expid,"flag":"exp"},
              success:function(data){
            	  if(data){
            		$(document.getElementById("e"+expid)).remove();
              		alert("Experience deleted successfully.")
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
		
		if($.urlParam('expsuccess')=='1')
		{
			
			$("#expsuccess").empty();
			$("#expsuccess").append('Experience added successfully');
			$("#expsuccess").css('display','block');
		}
		else if($.urlParam('qualsuccess')=='0')
		{
			$("#expsuccess").empty();
			$("#expsuccess").append('Experience add failed');
			$("#expsuccess").css('display','block');
		}
		
	});
	
});


	