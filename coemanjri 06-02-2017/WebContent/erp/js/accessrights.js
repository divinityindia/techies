$(document).ready(function(){
	$("#category").change(function(){
		
		$('#usertablebody').empty();
		if($("#dept").val()==''||$("#category").val()=='')
		{
			alert("Please Select Department and Branch.")
		}
		else
		{
			var cuserid=$("#cuserid").val();
			$("#load").css('display','block');
			$.ajax({
			    type: "GET",
			    url: "accessrights", 
			    dataType: "json",
			    data: {"deptid":$("#dept").val(),"category":$("#category").val()},
			    success:function(data){
			    	
			    	if(data!=''){
			    		
			    		$.each(data, function(i,item) {
			    			
			    			if(item.userid!=cuserid)
			    			{
			    				$("#usertablebody").append('<tr><td>'+item.userid+'</td><td>'+item.deptName+'</td><td>'+item.username+'</td><td>'+item.category+'</td><td><a href="updateaccessrights?userid=474576hbvxg675475bnbvjhb73dfgxcbdf6564575n'+item.userid+'&username='+item.username+'&category='+item.category+'">Click to Edit</a></td></tr>');
			    			}
			    			
			    		});
			    		$("#load").css('display','none');
			    		$("#dept").prop('selectedIndex', 0);
			    		$("#category").prop('selectedIndex', 0);
			        }
			    	else
			    	{
			    		alert("No user exist for the selected criteria");
			    		$("#load").css('display','none');
			    		$("#dept").prop('selectedIndex', 0);
			    		$("#category").prop('selectedIndex', 0);
			    	}
			    },
			    error:function(){
			        
			    } 
		
			});
		}
	});
});	
