$(document).ready(function(){
	
			$.ajax({
              type: "GET",
              url: "gethod",                
              dataType: "json",
              success:function(data){
            	  if(data){
            		  
                  }
              },
              error:function(){
                  alert('not worked.');
              } 
          })
	
	
	
	
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


	