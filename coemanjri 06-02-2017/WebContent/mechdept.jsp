<!DOCTYPE html>
<html>
<head>
<title>:: Mechanical Engineering</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layoutfordept.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/layout1.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/tableinfo.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/accordian/style.css" rel="stylesheet" type="text/css" media="all">
<script src="layout/scripts/tableinfo.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="erp/css/table.css"/>

</head>
<body id="top">

<jsp:include page="depttop.jsp"/>

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
     <div class="scroll">  	
  <center><p style="font-stretch: expanded;font-size:large;">Mechanical Engineering Department</p></center>
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1">About Mechanical Engineering</label>
    
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2">Laboratories</label>
    
  <input id="tab3" type="radio" name="tabs">
  <label for="tab3">Faculties</label>
  
  <input id="tab4" type="radio" name="tabs">
  <label for="tab4">Notice Board</label>
  
  <input id="tab5" type="radio" name="tabs">
  <label for="tab5">Departmental Activities</label>
    
  <section id="content1">
  <div class="table-responsive-vertical shadow-z-1">
  	<p class="talign">Mechanical engineering is one of the oldest branches of engineering. It is also referred to as the "mother" branch of engineering. Another appealing feature of mechanical engineering is that the application base of this field of study is extremely broad and diverse. Almost all inventions during the ancient period and a vast majority in the modern era are direct contributions of one or the other application of mechanics.</p>
	<p class="talign">Traditionally, mechanical engineers have to deal with concepts such as mechanics, thermodynamics, robotics, kinematics, structural analysis, fluid mechanics and many others. These concepts are applied in the process of designing state-of-the-art manufacturing units, different types of motor vehicles, aircraft and aerospace parts and a vast assortment of industrial machinery. Mechanical engineers also contribute in the development of various engines, power plant equipment, heating and cooling systems and other simple and complex machinery. Mechanical engineers not only design new mechanical systems but they are also responsible for testing, maintaining and manufacturing them.</p>
  </div>
  </section>
    
  <section id="content2">
  
   <div class="table-responsive-vertical shadow-z-1">
   	 
   	 
   <table id="table" class="table table-mc-light-blue">
      <tbody>
      	<tr>
      		<td colspan="2" align="center"><p class="impheading">Name of Lab- Theory of Machine/Dynamics of Machinery</p></td>
      	</tr>
        <tr>
          <td>
          <img src="images/mech/lab1.jpg" style="text-align: center;"/>
          </td>
         <td>
         	<p><b>Lab Incharge of Mechanical TOM &amp; DOM: Prof. A. V. Dumbre</b></p>
         	<p class="talign"> 
        	Lab Area = 90 Sq mtr<br>
			Total Investment of Lab . = Rs. 1651672/-<br>
			Lab Utilization For:<br>
    		&nbsp;&nbsp;1. SE Mechanical (TOM I)<br>
    		&nbsp;&nbsp;2. TE Mechanical (TOM II)<br>
    		&nbsp;&nbsp;3. BE Mechanical ( Dynamics Of Machinery)<br>
    		</p>
          </td>
        </tbody>
    </table> 
    
    <table id="table" class="table table-mc-light-blue">
      <tbody>
      	<tr>
      		<td colspan="2" align="center"><p  class="impheading">Name of Lab- Thermal Engineering/I C Engine</p></td>
      	</tr>
        <tr>
          <td>
          <img src="images/mech/lab2.jpg" style="text-align: center;"/>
          </td>
         <td>
         	<p><b>Lab Incharge of Thermal Engineering/I C Engine: Prof. A. A. Bagwan</b></p>
         	<p class="talign"> 
        	Lab Area = 90 Sq mtr<br>
			Total Investment of Lab . = Rs. 1651672/-<br>
			Lab Utilization For:<br>
    		&nbsp;&nbsp;1. SE Mechanical (Thermodynamics)<br>
    		&nbsp;&nbsp;2. TE Mechanical (Machine Drawing) <br>
    		</p>
          </td>
        </tbody>
    </table>
    
    <table id="table" class="table table-mc-light-blue">
      <tbody>
      	<tr>
      		<td colspan="2" align="center"><p  class="impheading">Name of Lab- Heat Transfer</p></td>
      	</tr>
        <tr>
          <td>
          <img src="images/mech/lab3.jpg" style="text-align: center;"/>
          </td>
         <td>
         	<p><b>Lab Incharge of Heat Transfer: Prof. S. A. Patil </b></p>
         	<p class="talign"> 
        	Lab Area = 90 Sq mtr<br>
			Total Investment of Lab . = Rs. 530625/- <br>
			Lab Utilization For:<br>
    		&nbsp;&nbsp;1. TE Mechanical (Heat Transfer)<br>
    		</p>
          </td>
        </tbody>
    </table>
	
   </div>
  </section>
    
  <section id="content3">
     <div class="table-responsive-vertical shadow-z-1">
   		<center><p class="impheading">List of faculties</p></center>
   	 <div id="block1">
  		<p id="success" style="display: none;"></p>
		<center>
			<select name="dept" id="dept" required="required">
        		<option  value="">---Select Department---</option>
			</select>
			<p style="text-align: center"><button type="button" id="searchbtn">Search</button></p>
			<p style="text-align: center"><img src="icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display: none;"/></p>
			<table class="employeeprofile" id="usertable">
				<thead>
					<tr>
						<th style="font-weight: bold;color:black;text-align: center;width:10% ">Sr. No.</th><th style="font-weight: bold;color: black;text-align: center;width:40% ">Name of Faculty(Click link to see faculty profile)</th><th style="font-weight: bold;color: black;text-align: center;">Designation</th>
					</tr>
				</thead>
				<tbody id="usertablebody">
				</tbody>
			</table>
		</center>													
   </div>
     </div>
  </section>
  
  <section id="content4">
     <div class="table-responsive-vertical shadow-z-1">
   	
   	 <p class="impheading">Mechanical Engineering Notice Board</p>
   	 <table id="table" class="table table-mc-light-blue">
      <tbody id="loadevents">
      	<tr>
      		<th style="text-align: center;" width=20%>Sr. No</th>
      		<th style="text-align: center;" width=20%>Event/Notice Title(Click to view in detail)</th>
      		<th style="text-align: center;" width=60%>Details</th>
      	</tr>
        </tbody>
     </table>
   
   </div>
  </section>
  
  <section id="content5">
     <div class="table-responsive-vertical shadow-z-1">
   	
   	 <center><p  class="impheading">Mechanical Engineering Students Association(M.E.S.A.)</p></center>
   	 <center>
   	 <table style="width: 600px;">
      <tbody>
      	<tr>
      		<th align="center" width=10%>Sr. No</th>
      		<th align="center" width=60%>Name</th>
      		<th align="center" width=10%>Committee Post</th>
      		<th align="center" width=20%>Designation</th>
      	</tr>
      	<tr>
      		<td align="center">1</td>
      		<td>Prof. P.S.Dabeer</td>
      		<td>Chief Patron</td>
      		<td align="center">Principal</td>
      	</tr>
      	<tr>
      		<td align="center">2</td>
      		<td>Prof. A.A.Keste</td>
      		<td>President</td>
      		<td align="center">H.O.D. Mech.</td>
      	</tr>
      	<tr>
      		<td align="center">3</td>
      		<td>Prof. P.G. Ranaware</td>
      		<td>Staff Advisor</td>
      		<td align="center">Lecturer</td>
      	</tr>
      	<tr>
      		<td align="center">4</td>
      		<td>Prof. D.R.Amn<br>
				Prof. R.S.Wale<br>
				Prof. A.D. Diwate
			</td>
      		<td>Staff Coordinators</td>
      		<td align="center">
      			Lecturer<br>
      			Lecturer<br>
      			Lecturer<br>
      		</td>
      	</tr>
        </tbody>
     </table>
    </center>
   
   <table>
    	<tr>
    		<td align="center"><p class="impheading">Student Representatives</p></td>
    		<td align="center"><p class="impheading">Student Coordinators</p></td>
    	</tr>
    	<tr>
    		<td>
    			<table id="table" class="table table-mc-light-blue" style="width: 100%;">
      <thead>
       <tr>
          <th align="center">Sr. No</th>
      		<th align="center">Name</th>
      		<th align="center">Committee Post</th>
      		<th align="center">Designation</th>
        </tr>
       </thead>
      <tbody>
        <tr>
          <td align="center">1</td>
          <td>Mr. Sai Srinivas</td>
          <td align="center">General Secretary</td>
          <td align="center">Student</td>
        </tr>
       <tr>
          <td align="center">2</td>
          <td>Mr. Prashant Patil</td>
          <td align="center">Joint Secretary</td>
          <td align="center">Student</td>
        </tr>
        <tr>
          <td align="center">3</td>
          <td>Mr.Amit Kale </td>
          <td align="center">Treasurer</td>
          <td align="center">Student</td>
        </tr>
  		</tbody>
    </table>
    		</td>
    		<td>
    			<table id="table" class="table table-mc-light-blue " style="width: 100%;">
      <thead>
       <tr>
          <th align="center">Sr. No</th>
      		<th align="center">Name</th>
      		<th align="center">Class</th>
      		<th align="center">Designation</th>
        </tr>
       </thead>
      <tbody>
        <tr>
          <td align="center">1</td>
          <td>Mr. Imran Choudhary<br>
			  Mr. Parikshit Joshi
		  </td>
          <td align="center">S.E. MECH.</td>
          <td align="center">Student</td>
        </tr>
       <tr>
          <td align="center">2</td>
          <td>Mr. Sanket Belose<br>
			  Mr. Suhas Kore
		  </td>
		  <td align="center">T.E. MECH.</td>
          <td align="center">Student</td>
        </tr>
        <tr>
          <td align="center">3</td>
          <td>	Mr. Pravin Mandhare<br>
				Mr. Birendar Singh<br>
				Mr. Nilesh Hawaldar<br>
				Mr. Mahesh Dhide
		  </td>
          <td align="center">B.E. MECH.</td>
          <td align="center">Student</td>
        </tr>
  		</tbody>
    </table>
    		</td>
    	</tr>
    <tr>
    <td>
    <table>	
    <tr>
    	<td colspan="3">Few of the visits conducted by our department in last year 2005-06</td>
    </tr>
    <tr>
    	<th>Sr. No</th>
    	<th>Class</th>
    	<th>Visit Place</th>
    </tr>
    <tr>
    	<td>1</td>
    	<td>S.E.</td>
    	<td>Sugar Factory, Theur</td>
    </tr>
    <tr>
    	<td>2</td>
    	<td>S.E.</td>
    	<td>P.M.T.W/S, Pune</td>
    </tr>
    <tr>
    	<td>3</td>
    	<td>T.E.</td>
    	<td>Panshet Hydraulic Power Station, Pune</td>
    </tr>
    <tr>
    	<td>4</td>
    	<td>T.E.</td>
    	<td>ARLAM breveriers Madgaon, Goa</td>
    </tr>
    <tr>
    	<td>5</td>
    	<td>B.E.</td>
    	<td>Eklaher Power Plant, Nashik</td>
    </tr>
    <tr>
    	<td>6</td>
    	<td>B.E.</td>
    	<td>Tata Hydraulic Power Station, Mulshi</td>
    </tr>
    <tr>
    	<td>7</td>
    	<td>T.E</td>
    	<td>Cold Storage Plant, Kondhwa, Pune</td>
    </tr>
    <tr>
    	<td>8</td>
    	<td>B.E.</td>
    	<td>Aundh I.T.I., Pune</td>
    </tr>
    <tr>
    	<td>9</td>
    	<td>B.E.</td>
    	<td>Koyana Hydro Electric Power Station</td>
    </tr>
    </table>
    </td>
    </tr>
    <tr><td>
    	<table>	
    <tr>
    	<td colspan="4">Guest Lectures In Department in 2005-06</td>
    </tr>
    <tr>
    	<th>Sr. No</th>
    	<th>Name Of Subject</th>
    	<th>Speaker Name</th>
    	<th>Association</th>
    </tr>
    <tr>
    	<td>1</td>
    	<td>Heat Transfer</td>
    	<td>Dr. N. K. Sane</td>
    	<td>H. O. D.of P. V. G. College of Engineering, Pune</td>
    </tr>
    <tr>
    	<td>2</td>
    	<td>One Step In Success</td>
    	<td>Mr. Meheta</td>
    	<td>Oness University, Bangalore</td>
    </tr>
    <tr>
    	<td>3</td>
    	<td>Personality Developement</td>
    	<td>Prof.Naidu</td>
    	<td>Modern College, Pune</td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
   </div>
  </section>
    

</div>
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
			
				$.ajax({
	                type: "GET",
	                url: "loadevents",                
	                dataType: "json",
	                data: {"branchname" : "Mechanical Engineering"},
	                success:function(data){
	                	if(data){
	                		var count=1
	                		$.each(data, function(i,item) {
	                			$('#loadevents').append('<tr><td style="text-align: center;">'+count+'</td><td style="text-align: center;"><a href="loadevents?eventid='+item.eventId+'" target="_blank">'+item.eventtitle+'</a></td><td>'+item.details+'</td></tr>');
	                			count++;  
	                		});
	                    }
	                },
	                error:function(){
	                	
	                } 
	            });
	           
 			}); 
			//branches
			$(function(){
				$.ajax({
				    type: "GET",
				    url: "erp/showdropdowndepts",                
				    dataType: "json",
				    success:function(data){
				    	
				    	if(data){
				    		var dept=$("#dept");
				    		
				    		$.each(data, function(k, v) {
				    			 $('<option>').val(k).text(v).appendTo(dept); 
				    		  });
				        }
				    },
				    error:function(){
				        
				    } 
				});
			});
			
</script>
<script src="js/facultylist.js" type="text/javascript"></script> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
</body>
</html>