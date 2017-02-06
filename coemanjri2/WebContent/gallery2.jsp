<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Gallery 2</title>
  
  
  
<link href="assets/css/loginstyle.css" rel="stylesheet" type="text/css" />
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/layout1.css" rel="stylesheet" type="text/css" media="all">
<link href="js/slider/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="js/slider/js-image-slider.js" type="text/javascript"></script>
<link href="js/slider/generic.css" rel="stylesheet" type="text/css" />

<script src="../assets/js/modernizr.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">

	 $(function(){ 
		$.ajax({
	           type: "POST",
	           url: "loadgallerypage",                
	           dataType: "json",
	           data: {"page" : '2'},
	           success:function(data){
	           	if(data){
	           		var a=1;
	           		$.each(data, function(i,item) {
	           				/* if(a==1)
	           				{
	           					$("#heading").append(item.heading);
	           					$("#details").append(item.details);
	           					$("#ul").append('<li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="loadgallerypage?id='+item.gid+'" title=""><img class="borderedbox" src="loadgallerypage?id='+item.gid+'" alt=""></a></li>');
	           				}
	           				
	           				else if(a % 4 === 0 )
	           				{
	           					$("#ul").append('<li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="loadgallerypage?id='+item.gid+'" title=""><img class="borderedbox" src="loadgallerypage?id='+item.gid+'" alt=""></a></li>');	
	           				}
	           				else
	           				{
	           					$("#ul").append('<li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="loadgallerypage?id='+item.gid+'" title=""><img class="borderedbox" src="loadgallerypage?id='+item.gid+'" alt=""></a></li>');
	           				}
	           				a++; */
	           				if(a==1)
	           				{
	           					$("#heading").append(item.heading);
	           					$("#details").append(item.details);
	           					a++;
	           				}
	           				$("#slider").append('<img class="borderedbox" src="loadgallerypage?id='+item.gid+'" alt="">');
	           				
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
</head>

<body>
<body id="top">

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="f1">
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
      <ul>
        <li><a href="#">STUDENTS</a></li>
        <li><a href="#">FACULTY</a></li>
        <li><a href="#">PARENTS</a></li>
        <li><a href="#">ALUMNI</a></li>
        <li><a href="#">INDUSTRY</a></li>
        <li><a href="#">VISITORS</a></li>
        <li><a href="#">CAREERS</a></li>
        <li><a class="drop" href="login.jsp">LOGIN</a></li>
        
      </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </div>
</div>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<div class="wrapper row1">
    <div id="flogo">
    	<img src="images/logon.jpg"/>	
    </div>
  	<div id="llogo">
    	<img src="images/l3.png"/>	
    </div>
    <div id="mtext">	
      <p id="tophead">PUNE DISTRICT EDUCATION ASSOCIATION'S</p>
      <p id="middlehead">College of Engineering, Manjari (BK)<p>
      <p id="bottomhead">Achieving The Best</p>
      <p id="bbhead">(Approved by AICTE, Govt. of Maharashtra || Affiliated to Savitribai Phule Pune University) AICTE Approved NO. 740-89-316(E)/Et/98</p>
  	</div>
    <!-- ################################################################################################ --> 
</div>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<div class="wrapper row2">

<div class="rounded1">

<nav id="mainav" class="clear"> 

      <!-- ################################################################################################ -->

      <ul class="clear">

        <li><a href="index.jsp">HOME</a></li>

         <li><a class="drop" href="#">ABOUT US</a>

          <ul>
			<li><a href='visionmission.jsp'>Vision &amp; Mission</a></li>
			<li><a href='chairman.jsp'>Chairman's Message</a></li>
			<li><a href='principal.jsp'>Principal's Message</a></li>
			<li><a href='infrastructure.jsp'>Infrastructure</a></li>
			<li><a href='#'>Mandatory Disclosure</a></li>
          </ul>

        </li>
        <li><a class="drop">ACADEMICS</a>
          <ul>
            <li><a href='academics.jsp'>Academics</a></li>
            <li><a class="drop" href="#">Departments</a>
            <ul>
                <li><a href="fedept.jsp">First Year Engineering</a></li>
			    <li><a href="mechdept.jsp">Mechanical Engineering</a></li>
			    <li><a href="elexdept.jsp">Electronics Engineering</a></li>
			    <li><a href="compdept.jsp">Computer Engineering</a></li>
			    <li><a href="itdept.jsp">Information Technology</a></li>
			    <li><a href="icdept.jsp">Instrumentation and Control</a></li>
			    <li><a href="mbadept.jsp" id="smallCourse">M. B. A</a></li>
              </ul>
            </li>
          </ul>
        </li>
		<li><a href='admissions.jsp'>ADMISSIONS</a></li>
		<li><a href='placementcell.jsp'>TRAINING &amp; PLACEMENT CELL</a></li>
		<li><a class="drop" href="#">GALLERY</a>

          <ul>
			<li><a href='gallery1.jsp'>Gallery 1</a></li>
			<li><a href='gallery2.jsp'>Gallery 2</a></li>
			<li><a href='gallery3.jsp'>Gallery 3</a></li>
			<li><a href='gallery4.jsp'>Gallery 4</a></li>
			<li><a href='videogallery.jsp'>Video Gallery</a></li>
          </ul>

        </li>
        <li><a href='resources.jsp'>RESOURCES</a></li>

      </ul>

      <!-- ################################################################################################ --> 

    </nav>
    </div>


</div>
</div>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div id="fixed">
	<div class="wrapper row3">
  <div class="rounded">
  <main class="container clear"> 
	<!-- <div id="gallery">
        <figure>
          <header class="heading"><span id="heading"></span></header>
          (Click image to enlarge...) <br> <br>
          <ul class="nospace clear" id="ul">
            <li class="one_quarter first"><a class="nlb" data-lightbox-gallery="gallery1" href="images/gallery/1/gall1.jpg" title=""><img class="borderedbox" src="images/gallery/1/gall1.jpg" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="images/gallery/1/gall2.jpg" title=""><img class="borderedbox" src="images/gallery/1/gall2.jpg" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="images/gallery/1/gall3.jpg" title=""><img class="borderedbox" src="images/gallery/1/gall3.jpg" alt=""></a></li>
            <li class="one_quarter"><a class="nlb" data-lightbox-gallery="gallery1" href="images/gallery/1/gall4.jpg" title=""><img class="borderedbox" src="images/gallery/1/gall4.jpg" alt=""></a></li>
          </ul>
          <figcaption><span id="details"></span></figcaption>
        </figure>
      </div> -->
      <header class="heading"><span id="heading"></span></header>
         
      <div id="sliderFrame">
      <div class="scroll">
        <div id="slider">
        </div>
        </div>
        <!--Custom navigation buttons on both sides-->
        <div class="group1-Wrapper">
            <a onclick="imageSlider.previous()" class="group1-Prev"></a>
            <a onclick="imageSlider.next()" class="group1-Next"></a>
        </div>
        <!--nav bar-->
        <div style="text-align:center;padding:20px;z-index:20;">
            <a onclick="imageSlider.previous()" class="group2-Prev"></a>
            <a id='auto' onclick="switchAutoAdvance()"></a>
            <a onclick="imageSlider.next()" class="group2-Next"></a>
        </div>
    </div>
    <figcaption><span id="details"></span></figcaption>
	
	</main>
	</div>
	
	<div class="rounded">
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
      
      </div>
      </div>
      
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    
 

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="one_third first">
        <figure class="center"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.1022291191166!2d73.98048791445812!3d18.524281887406776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c258af5922cf%3A0xde3b91beb5003629!2sPune+District+Education+Association&#39;s+College+of+Engineering!5e0!3m2!1sen!2sin!4v1480922622020" width="300" height="150" style="border:0"></iframe>
          <figcaption><a href="https://goo.gl/maps/8xkRhHZD6YT2">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
        <address>
        College of Engineering, Manjari<br>
        Hadapsar-Manjari Road, Manjari Bk,<br>
        Pune<br>
        Tal: Pune,<br>
        Dist: Pune,<br>
        412307<br>
        <br>
        <i class="fa fa-phone pright-10"></i>020 26996275<br>
        <i class="fa fa-envelope-o pright-10"></i> <a href="#">contact@domain.com</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div>
      <!-- ################################################################################################ --> 
    </footer>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">College of Engineering, Manjari</a></p>    
    <p class="fl_right">Designed and Developed by <a target="_blank" href="#">Techdivinity</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
</div>
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
<script src="layout/scripts/nivo-lightbox/nivo-lightbox.min.js"></script>
 <script type="text/javascript">
        //The following script is for the group 2 navigation buttons.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>
</body>
</html>