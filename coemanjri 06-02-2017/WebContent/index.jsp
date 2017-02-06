<!DOCTYPE html>
<html>
<head>
<title>:: PDEA's College of Engineering</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
.marquee-parent {
  position: relative;
  width: 100%;
  overflow: hidden;
  height: 250px;
}
.marquee-child {
  display: block;
  width: 147px;
  /* width of your text div */
  height: 30px;
  /* height of your text div */
  position: absolute;
  animation: marquee 8s linear infinite; /* change 5s value to your desired speed */
}
.marquee-child:hover {
  animation-play-state: paused;
  cursor: pointer;
}
@keyframes marquee {
  0% {
    top: 100%;
  }
  100% {
    top: -147px /* same as your text width */
  }
}

p#mar1, #mar2, #mar3, #mar4{
	font-size: 16px;text-align:left;width:220px;
}


.marquee-parent1 {
  position: relative;
  width: 100%;
  overflow: hidden;
  height: 50px;
}
.marquee-child1 {
  display: block;
  width: 147px;
  /* width of your text div */
  height: 30px;
  /* height of your text div */
  position: absolute;
  animation: marquee1 8s linear infinite; /* change 5s value to your desired speed */
}
.marquee-child1:hover {
  animation-play-state: paused;
  cursor: pointer;
}
@keyframes marquee1 {
  0% {
    left: 100%;
  }
  100% {
    left: -147px /* same as your text width */
  }
}

p#mar1, #mar2, #mar3, #mar4{
	font-size: 16px;text-align:left;width:220px;
}


</style>

</head>
<body id="top">
<jsp:include page="top.jsp"/>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div id="fixed">
<div class="wrapper">
<!--  <div id="slider">
    <div id="slide-wrapper" class="rounded clear"> -->
       
      <!-- ################################################################################################ -->
       <div id="slider">
<figure>
<img src="images/demo/slider/1.png">
<img src="images/demo/slider/5.png">
<img src="images/demo/slider/2.png">
<img src="images/demo/slider/3.png">
<img src="images/demo/slider/4.png">
<!-- <img src="images/demo/slider/6.png">
<img src="images/demo/slider/7.png">
<img src="images/demo/slider/8.png">
<img src="images/demo/slider/9.png"> -->
</figure>
</div>

</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        <!-- Left Column -->
        <div class="one_quarter first" style="height: 475px;"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
			<li>
			<p style="font-size: 17px; margin-top: 0px;padding-top: 0px">Latest News</p>
 			<!-- <marquee direction="up"  onmouseover="this.stop();" onmouseout="this.start();" height="250" scrollamount="4" style="border-bottom: 1px solid #7ea9f3;border-top: 1px solid #7ea9f3;margin-top: 0px;">
				<ul class="nospace listing" id="myNews">
				</ul>
			</marquee> -->
			<div class="marquee-parent" style="border-bottom: 1px solid #7ea9f3;border-top: 1px solid #7ea9f3;margin-top: 0px;">
  				<div class="marquee-child" id="myNews">
    				
  				</div>
			</div>
			</li>
			<li>
			<br/>
			<p style="font-size: 17px;">Latest Events</p>
 			<!-- <marquee direction="up"  onmouseover="this.stop();" onmouseout="this.start();" height="250" scrollamount="4" style="border-bottom: 1px solid #7ea9f3;border-top: 1px solid #7ea9f3;margin-top: 0px">
				<ul class="nospace listing" id="myEvents">
				</ul>
			</marquee> -->
			<div class="marquee-parent" style="border-bottom: 1px solid #7ea9f3;border-top: 1px solid #7ea9f3;margin-top: 0px;">
				<div class="marquee-child" id="myEvents">
    				
  				</div>
			</div>
			</li>
			
		</ul>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Left Column --> 
        <!-- Middle Column -->
        <div class="one_half" > 
          <!-- ################################################################################################ -->
          <h2>About US</h2>
          <b>PDEA's College of Engineering, Manjari(Bk.)</b>
          <p style="text-align: justify;">was established by Pune District Education Association in the year 1998 with a vision to spread engineering knowledge in the...</p>
           <p class="right"><a href="visionmission.jsp">Read More &raquo;</a></p>
           
           
          <h2>Chairman's Message</h2>
          
          <img src="images/demo/chairman.jpg" style="height: 110px;width:148 "/>
          
          <div class="person">
          <b>Shri. Ajit Pawar</b>
         
          <h2 style="border-bottom: 1px solid;padding-bottom: 4px;border-color: #D7D7D7"></h2>
          <p style="font-style: italic;padding: 0;margin: 0">Hon. Chairman</p>
          <p style="font-style: italic;padding: 0;margin: 0">Pune District Education Association, Pune</p>
         </div>
          <p style="text-align: justify;">Over the years, there has been dynamic progress at C.O.E. Manjari in all academic and research activities, and a parallel improvement...</p>
          <p class="right"><a href="chairman.jsp">Read More &raquo;</a></p>
          
          <h2>Principal Desk</h2>
          <b>Dr. D. A. Kamble</b>
         
         
          
          <p style="font-style: italic;">Principal</p>
          <p style="font-style: italic;">PDEA's College of Engineering, manjari</p>
          <i class="fa fa-phone pright-10"></i>020-26996625
          <p style="text-align: justify;">Over the years, there has been dynamic progress at C.O.E. Manjari in all academic and research activities, and a parallel improvement...</p>
          <p class="right"><a href="principal.jsp">Read More &raquo;</a></p>
          <!-- ################################################################################################ --> 
        </div>
        
        <!-- / Middle Column --> 
        <!-- Right Column -->
        <div class="one_quarter sidebar"> 
          <!-- ################################################################################################ -->
          <div class="sdb_holder">
            <h6>Virtual Tour</h6>
            <video autoplay="autoplay" style="width: 100%;" height="150px" controls="controls" loop="loop">
  				<source src="erp/admin/virtualtour" type="video/mp4">
            </video>
            
            <p style="margin-top: 10px"><a href="#">Take a glance at our Campus </a></p>
          </div>
          <div class="sdb_holder" style="margin-top: 3px">
            <h6>Quick Information</h6>
            <ul class="nospace quickinfo">
              <li class="clear"><a href="pdfs/samplepdf.pdf" target="_blank"><img src="images/demo/application.jpg" alt=""> Make An Application</a></li>
              <li class="clear"><a href="pdfs/samplepdf.pdf" target="_blank"><img src="images/demo/prospectus.jpg" alt=""> Order A Prospectus</a></li>
            </ul>
          </div>
          
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Right Column --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div class="group">
      <center><p style="background-color: black;text-align:center;color: white;font-size: larger;">Our Recruiters</p></center>
      	<div style="margin-bottom: 30px">
      		
      		<marquee onmouseover="this.stop();" onmouseout="this.start();">
      		<img src="images/recruiters/1.jpg">
      		<img src="images/recruiters/2.jpg">
      		<img src="images/recruiters/3.jpg">
      		<img src="images/recruiters/4.jpg">
      		<img src="images/recruiters/5.jpg">
      		<img src="images/recruiters/6.jpg">
      		<img src="images/recruiters/7.jpg">
      		<img src="images/recruiters/8.jpg">
      		<img src="images/recruiters/9.jpg">
      		<img src="images/recruiters/10.jpg">
      		<img src="images/recruiters/11.jpg">
      		</marquee>
      		
      	</div>
      	
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
      	</main>
      
      </div>
   
  </div>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
     
				<div id="gallery">
        			<figure>
          				<header class="heading">Photogallery</header>
          				<marquee direction="left" scrollamount="5" onmouseover="this.stop();" onmouseout="this.start();">
				          <ul class="nospace clear">
				            <li class="one_quarter first" ><a class="nlb" data-lightbox-gallery="gallery1" href="gallery1.jsp" title=""><span id="sp1"></span><br/><img class="borderedbox" src="loadgallery?page=1" alt="" id="img1" style="height: 101px;width: 220px"></a></li>
				            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="gallery2.jsp" title=""><span id="sp2"></span><br/><img class="borderedbox" src="loadgallery?page=2" alt="" id="img2" style="height: 101px;width: 220px"></a></li>
				            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="gallery3.jsp" title=""><span id="sp3"></span><br/><img class="borderedbox" src="loadgallery?page=3" alt="" id="img3" style="height: 101px;width: 220px"></a></li>
				            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="gallery4.jsp" title=""><span id="sp4"></span><br/><img class="borderedbox" src="loadgallery?page=4" alt="" id="img4" style="height: 101px;width: 220px"></a></li>
				          </ul>
				         </marquee>
        				</figure>
  				</div>
  			
      
      </main>
      </div>
      
      </div>
      
      
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- / main body -->
     
    
 


<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<jsp:include page="bottom.jsp"/>
</div>
<script type="text/javascript">

	 $(function(){ 
		$.ajax({
	           type: "POST",
	           url: "loadgallery",                
	           dataType: "json",
	           success:function(data){
	           	if(data){
	           		var a='1';
	           		$.each(data, function(i,item) {
	           			if(item.page=='1')
	           			{
	           				$("#sp1").append(item.heading);
	           				
	           			}
	           			else if(item.page=='2')
	           			{
	           				$("#sp2").append(item.heading);
	           				
	           			}
	           			else if(item.page=='3')
	           			{
	           				$("#sp3").append(item.heading);
	           				
	           			}
	           			else if(item.page=='4')
	           			{
	           				$("#sp4").append(item.heading);
	           				
	           			}
	           		  });
	               }
	           	else
	           		{
	           		alert("no data");
	           		}
	           	
	           },
	           error:function(){
	           	
	           } 
	      });
});

</script>
<script type="text/javascript">
			$(function(){
			
				$.ajax({
	                type: "GET",
	                url: "loadevents",                
	                dataType: "json",
	                success:function(data){
	                	if(data!=''){
	                		$.each(data, function(i,item) {
	                			$('#myEvents').append('<li class="clear"><p class="nospace btmspace-15" id="mar1"><a style="color:#040e85;" href="loadevents?eventid='+item.eventId+'" target="_blank"><span style="color:red">*</span>'+item.eventtitle+'(For '+item.branchName+')</a></p></li>');
	                		  });
	                    }
	                	
	                	else
	                	{
	                		$('#myEvents').append('<li class="clear"><p class="nospace btmspace-15"  id="mar2"><a style="color:#040e85;" href="#">No events to show</a></p></li>');
	                	}
	                },
	                error:function(){
	                	
	                } 
	            });
				$.ajax({
	                type: "GET",
	                url: "loadnews",                
	                dataType: "json",
	                success:function(data){
	                	if(data!=''){
	                		$.each(data, function(i,item) {
	                			$('#myNews').append('<li class="clear"><p class="nospace btmspace-15"  id="mar3"><a style="color:#047385;" href="loadnews?newsid='+item.newsId+'" target="_blank"><span style="color:red">*</span>'+item.newstitle+'(For '+item.branchName+')</a></p></li>');
	                		  });
	                    }
	                	
	                	else
	                	{
	                		$('#myNews').append('<li class="clear"><p class="nospace btmspace-15"  id="mar4"><a style="color:#047385;" href="#">No News to show</a></p></li>');
	                	}
	                },
	                error:function(){
	                	
	                } 
	            });
	           
 			}); 
			
</script>

<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>

</body>
</html>