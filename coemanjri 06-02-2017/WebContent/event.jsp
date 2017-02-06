<!DOCTYPE html>

<html>
<head>
<title>:: Event</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/layout1.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/tableinfo.css" rel="stylesheet" type="text/css" media="all">

</head>
<body id="top">

<jsp:include page="top.jsp"/>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div id="fixed">
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        <!-- Left Column -->

        <!-- / Left Column --> 
        <!-- Middle Column -->
        <p class="impheading">Event Details</p>
        <div class="scroll">
          <table id="table" class="table table-hover table-mc-light-blue" style="table-layout: auto;">
			
				<tbody id="eventdetails">
				
				</tbody>
			</table>
			</div>
          
        
        <!-- / Middle Column --> 
        <!-- Right Column -->
        <div class="one_quarter sidebar"> 
          <!-- ################################################################################################ -->
          
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Right Column --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div class="group">
        <h2>Quickly Find What You Are Looking For</h2>
       	<div class="myfont">
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="http://unipune.ac.in/" target="_blank">&#9755; Savitribai Phule Pune University</a></li>
			<li><a href="https://mahaeschol.maharashtra.gov.in" target="_blank">&#9755; Samaj Kalyan(E Scholarship)</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://exam.unipune.ac.in" target="_blank">&#9755; SPPU's Online Examination Form</a></li>
          	<li><a href="#">&#9755; Anti Ragging</a></li> 
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://dte.org.in" target="_blank">&#9755; Directorate of Technical Education</a></li>
          	<li><a href="#">&#9755; Women's grievance cell</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
          	<li><a href="http://ropune.org.in" target="_blank">&#9755; RO DTE, Pune</a></li>
          	<li><a href="#">&#9755; Mandatory Disclosure</a></li>  
          </ul>
          <!-- ################################################################################################ --> 
        </div>
		</div>
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<jsp:include page="bottom.jsp"/>
</div>
<!-- JAVASCRIPTS -->
<script type="text/javascript">
			$(function(){
				$.urlParam = function(name){
				    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
				    if (results==null){
				       return null;
				    }
				    else{
				       return results[1] || 0;
				    }
				}
				
				var eventid=$.urlParam('eventid');
				$.ajax({
	                type: "GET",
	                url: "loadsingleevent",                
	                dataType: "json",
	                data: {"eventid" : eventid},
	                success:function(data){
	                	if(data){
	                		var enddate='';
	                		if(data.repeatoption!='Never')
	                		{
	                			enddate=data.enddate;
	                		}
	                		if(data.documentName!='')
	                		{
	                			$('#eventdetails').append('<tr><th colspan="2" style="text-align:center"><span style="font-weight:bold;">Notice/Event For<span> - '+data.branchName+'</hd></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Category</span></td><td>'+data.category+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Event Title</span></td><td>'+data.eventtitle+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Organized by</span></td><td>'+data.organizedby+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Organized for</span></td><td>'+data.organizedfor+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Venue</span></td><td>'+data.venue+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Details</span></td><td>'+data.details+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Instructions</span></td><td>'+data.instructions+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Document</span></td><td><a href="geteventdocument?eventid='+data.eventId+'">Download Event Related Document</a></td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">URL</span></td><td>'+data.url+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Contact Person</span></td><td>'+data.contactperson+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Start Date</span></td><td>'+data.startdate+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Start Time</span></td><td>'+data.starttime+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">End Date</span></td><td>'+enddate+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">End Time</span></td><td>'+data.endtime+'</td></tr>');
	                		}
	                		else
	                		{
	                			$('#eventdetails').append('<tr><th colspan="2" style="text-align:center"><span style="font-weight:bold;">Notice/Event For<span> - '+data.branchName+'</hd></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Category</span></td><td>'+data.category+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Event Title</span></td><td>'+data.eventtitle+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Organized by</span></td><td>'+data.organizedby+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Organized for</span></td><td>'+data.organizedfor+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Venue</span></td><td>'+data.venue+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Details</span></td><td>'+data.details+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Instructions</span></td><td>'+data.instructions+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">URL</span></td><td>'+data.url+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Contact Person</span></td><td>'+data.contactperson+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Start Date</span></td><td>'+data.startdate+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">Start Time</span></td><td>'+data.starttime+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">End Date</span></td><td>'+enddate+'</td></tr><tr><td><span style="font-weight:bold;color:#1e5d5b">End Time</span></td><td>'+data.endtime+'</td></tr>');
	                		}
	                		
	                		
	                    }
	                },
	                error:function(){
	                	
	                } 
	            });
	           
 			}); 
			
</script> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
</body>
</html>