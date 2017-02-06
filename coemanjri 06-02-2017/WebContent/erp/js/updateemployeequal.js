$(document).ready(function(){
	
	$('.deletelinkQual').click(function() { 
		
		var $this = $(this);
        var qid = $this.data('p1');
        if (!confirm("Do you want to delete")){
		      return false;
		}
		
		$("#load1").css("display", "block");
	    	//ajax call to delete flag
			$.ajax({
              type: "GET",
              url: "deleteemployeedetails",                
              dataType: "json",
              data: {"qid" : qid,"flag":"qual"},
              success:function(data){
            	  if(data){
            		$(document.getElementById("q"+qid)).remove();
              		alert("Qualification deleted successfully.")
              		$("#load1").css("display", "none");
                  }
              },
              error:function(){
                  alert('not worked.');
              } 
          })
	
	
	});
	
	$('.deletelinkCert').click(function() { 
		
		var $this = $(this);
        var cid = $this.data('p1');
        if (!confirm("Do you want to delete")){
		      return false;
		}
		
		$("#load2").css("display", "block");
	    	//ajax call to delete flag
			$.ajax({
              type: "GET",
              url: "deleteemployeedetails",                
              dataType: "json",
              data: {"cid" : cid,"flag":"cert"},
              success:function(data){
            	  if(data){
            		$(document.getElementById("c"+cid)).remove();
              		alert("Certification deleted successfully.")
              		$("#load2").css("display", "none");
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
		
		if($.urlParam('qualsuccess')=='1')
		{
			
			$("#qualsuccess").empty();
			$("#qualsuccess").append('Qualification added successfully');
			$("#qualsuccess").css('display','block');
		}
		else if($.urlParam('qualsuccess')=='0')
		{
			$("#qualsuccess").empty();
			$("#qualsuccess").append('Qualification add failed');
			$("#qualsuccess").css('display','block');
		}
		
		if($.urlParam('certsuccess')=='1')
		{
			
			$("#certsuccess").empty();
			$("#certsuccess").append('Certifications added successfully');
			$("#certsuccess").css('display','block');
		}
		else if($.urlParam('certsuccess')=='0')
		{
			$("#certsuccess").empty();
			$("#certsuccess").append('Certification add failed');
			$("#certsuccess").css('display','block');
		}
	});
		/*if($.urlParam('expsuccess')=='1')
		{
			
			$("#expsuccess").empty();
			$("#expsuccess").append('Experience added successfully...(Add more)');
			$("#expsuccess").css('display','block');
			$(".fid").val($.urlParam('id'));
			$("#block1").css('display', 'none');
			$("#block2").css('display', 'none');
			$("#block3").css('display', 'block');
		}
		else if($.urlParam('expsuccess')=='0')
		{
			$("#expsuccess").empty();
			$("#expsuccess").append('Experience add failed');
			$("#expsuccess").css('display','block');
			$("#block3").css('display', 'block');
			$("#block2").css('display', 'none');
			$("#block1").css('display', 'none');
		}
		
		if($.urlParam('krsuccess')=='1')
		{
			
			$("#krsuccess").empty();
			$("#krsuccess").append('Record added to Knowledge Repository. (Add more)');
			$("#krsuccess").css('display','block');
			$(".fid").val($.urlParam('id'));
			$("#block1").css('display', 'none');
			$("#block2").css('display', 'none');
			$("#block3").css('display', 'none');
			$("#block4").css('display', 'block');
		}
	});
	
	$("#krlink").click(function(){
		$("#expsuccess").empty();
		$("#block3").css('display', 'none');
		$("#block4").css('display', 'block');
	});*/
	
	
	
	$("#qual1").change(function(){
		
		if($(this).is(":checked"))
		{
			$("#udegree").attr({"required" : true, "disabled" : false});
			$("#uspl").attr({"required" : true, "disabled" : false});
			$("#uinst").attr({"required" : true, "disabled" : false});
			$("#uuniv").attr({"required" : true, "disabled" : false});
			$("#upyr").attr({"required" : true, "disabled" : false});
			$("#uper").attr({"required" : true, "disabled" : false});
			$("#uachiev").attr({"required" : true, "disabled" : false});
			
		}
		else
		{
			$("#udegree").attr({"required" : false, "disabled" : true});
			$("#uspl").attr({"required" : false, "disabled" : true});
			$("#uinst").attr({"required" : false, "disabled" : true});
			$("#uuniv").attr({"required" : false, "disabled" : true});
			$("#upyr").attr({"required" : false, "disabled" : true});
			$("#uper").attr({"required" : false, "disabled" : true});
			$("#uachiev").attr({"required" : false, "disabled" : true});
		}
		
	});
	
	$("#qual2").change(function(){
		
		if($(this).is(":checked"))
		{
			$("#pdegree").attr({"required" : true, "disabled" : false});
			$("#pspl").attr({"required" : true, "disabled" : false});
			$("#pinst").attr({"required" : true, "disabled" : false});
			$("#puniv").attr({"required" : true, "disabled" : false});
			$("#ppyr").attr({"required" : true, "disabled" : false});
			$("#pper").attr({"required" : true, "disabled" : false});
			$("#pachiev").attr({"required" : true, "disabled" : false});
			
		}
		else
		{
			$("#pdegree").attr({"required" : false, "disabled" : true});
			$("#pspl").attr({"required" : false, "disabled" : true});
			$("#pinst").attr({"required" : false, "disabled" : true});
			$("#puniv").attr({"required" : false, "disabled" : true});
			$("#ppyr").attr({"required" : false, "disabled" : true});
			$("#pper").attr({"required" : false, "disabled" : true});
			$("#pachiev").attr({"required" : false, "disabled" : true});
		}
		
	});
	
	$("#qual3").change(function(){
		
		if($(this).is(":checked"))
		{
			$("#ppdegree").attr({"required" : true, "disabled" : false});
			$("#ppspl").attr({"required" : true, "disabled" : false});
			$("#ppinst").attr({"required" : true, "disabled" : false});
			$("#ppuniv").attr({"required" : true, "disabled" : false});
			$("#pppyr").attr({"required" : true, "disabled" : false});
			$("#ppper").attr({"required" : true, "disabled" : false});
			$("#ppachiev").attr({"required" : true, "disabled" : false});
			
		}
		else
		{
			$("#ppdegree").attr({"required" : false, "disabled" : true});
			$("#ppspl").attr({"required" : false, "disabled" : true});
			$("#ppinst").attr({"required" : false, "disabled" : true});
			$("#ppuniv").attr({"required" : false, "disabled" : true});
			$("#pppyr").attr({"required" : false, "disabled" : true});
			$("#ppper").attr({"required" : false, "disabled" : true});
			$("#ppachiev").attr({"required" : false, "disabled" : true});
		}
		
	});
	
	$('#cert1').change(function() {
		
        if($(this).is(":checked")) {
        	$("#crsname1").attr({"required" : true, "disabled" : false});
        	$("#cinst1").attr({"required" : true, "disabled" : false});
        	$("#cduration1").attr({"required" : true, "disabled" : false});
        	$("#ccontent1").attr({"required" : true, "disabled" : false});
        }
        else
        {
        	$("#crsname1").attr({"required" : false, "disabled" : true});
        	$("#cinst1").attr({"required" : false, "disabled" : true});
        	$("#cduration1").attr({"required" : false, "disabled" : true});
        	$("#ccontent1").attr({"required" : false, "disabled" : true});
        }
    });
	
	$('#cert2').change(function() {
		
        if($(this).is(":checked")) {
        	$("#crsname2").attr({"required" : true, "disabled" : false});
        	$("#cinst2").attr({"required" : true, "disabled" : false});
        	$("#cduration2").attr({"required" : true, "disabled" : false});
        	$("#ccontent2").attr({"required" : true, "disabled" : false});
        }
        else
        {
        	$("#crsname2").attr({"required" : false, "disabled" : true});
        	$("#cinst2").attr({"required" : false, "disabled" : true});
        	$("#cduration2").attr({"required" : false, "disabled" : true});
        	$("#ccontent2").attr({"required" : false, "disabled" : true});
        }
    });
	
	$('#cert3').change(function() {
		
        if($(this).is(":checked")) {
        	$("#crsname3").attr({"required" : true, "disabled" : false});
        	$("#cinst3").attr({"required" : true, "disabled" : false});
        	$("#cduration3").attr({"required" : true, "disabled" : false});
        	$("#ccontent3").attr({"required" : true, "disabled" : false});
        }
        else
        {
        	$("#crsname3").attr({"required" : false, "disabled" : true});
        	$("#cinst3").attr({"required" : false, "disabled" : true});
        	$("#cduration3").attr({"required" : false, "disabled" : true});
        	$("#ccontent3").attr({"required" : false, "disabled" : true});
        }
    });
	
	$('#cert4').change(function() {
		
        if($(this).is(":checked")) {
        	$("#crsname4").attr({"required" : true, "disabled" : false});
        	$("#cinst4").attr({"required" : true, "disabled" : false});
        	$("#cduration4").attr({"required" : true, "disabled" : false});
        	$("#ccontent4").attr({"required" : true, "disabled" : false});
        }
        else
        {
        	$("#crsname4").attr({"required" : false, "disabled" : true});
        	$("#cinst4").attr({"required" : false, "disabled" : true});
        	$("#cduration4").attr({"required" : false, "disabled" : true});
        	$("#ccontent4").attr({"required" : false, "disabled" : true});
        }
    });
	

});


	