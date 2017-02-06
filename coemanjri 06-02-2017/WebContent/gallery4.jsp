<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Gallery 4</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/tableinfo.css" rel="stylesheet" type="text/css" media="all">
<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- this file for demo -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	
	<!-- Copy & paste -->
	<link rel="stylesheet" type="text/css" href="css/animate.min.css " />
	<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.min.css " />
	<link rel="stylesheet" type="text/css" href="css/tabs.css" />
	
	<!-- this is for choose your color -->
	<link rel="stylesheet" type="text/css" href="css/colors/color_1.css" id="colors-style" />
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900|Dosis:300,400,700|Oswald:300">


	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">   
  
  
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
	           data: {"page" : '4'},
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
        <li><a href="#">FACULTY</a></li>
        <li><a href="#">ALUMNI</a></li>
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
      <p id="middlehead">COLLEGE OF ENGINEERING</p>
      <p id="bottomhead">Manjari (BK), Pune - 412307(Maharashtra) India</p>
      <p id="bbhead">(Approved by AICTE, New Delhi No. 740-89-316 E/ET/98</p>
      <p id="bbhead">Affiliated to Savitribai Phule Pune University, Pune | DTE Code: 6206 | Pune Uni. Code: 4026(Engg.) 1223(MBA)</p>
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
            <li><a href='academics'>Academics</a></li>
            <li><a class="drop" href="#">Departments</a>
            <ul>
                <li><a href="fedept.jsp">First Year Engineering</a></li>
			    <li><a href="mechdept.jsp">Mechanical Engineering</a></li>
			    <li><a href="compdept.jsp">Computer Engineering</a></li>
			    <li><a href="elexdept.jsp">Electronics Engineering</a></li>
			    <li><a href="icdept.jsp">Instrumentation and Control</a></li>
			    <li><a href="itdept.jsp">Information Technology</a></li>
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
<jsp:include page="bottom.jsp"/>
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