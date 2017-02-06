$(document).ready(function(){
	$("#searchbtn").click(function(){	
	if($("#dept").val()=='')
	{
		$('#success').empty();
	    $("#success").append("Please select department");
	    $("#success").css('display','block')
	}
	else
	{
		$('#success').empty();
		$('#usertablebody').empty();
		$("#load").css("display", "block");
		var dept=$("#dept").val();
		$.ajax({
            type: "GET",
            url: "publicgetemployee",                
            dataType: "json",
            data: {"dept":dept},
            success:function(data){
            	
            	if(data!=''){
            		var count=1;
            		$.each(data, function (i, item) {
            			
                    $("#load").css("display", "none");
                    $("#usertablebody").append('<tr><td style="text-align:center">'+count+'</td><td><a href="publicviewemployee?employeeid='+item.facultyId+'" target="_blank">'+item.sal+' '+item.fname+' '+item.mname+' '+item.lname+'</a></td><td>'+item.post+'</td></tr>');
                    count++;
            		});
            	}
            	else
            	{
            		$('#success').empty();
    			    $("#success").append("No employee exist for the selected criteria");
    			    $("#success").css('display','block')
            		$("#load").css("display", "none");
            		
            	}
            },
            error:function(){
                alert('not worked.');
            } 

        })
	}
	});	
});


	