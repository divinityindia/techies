
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PDEA E Tender Portal</title>
<meta name="keywords" content="free etendering  by pdea  " />
<meta name="description" content="Maintain and developed by divinity technologies,pune" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="table.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="slimbox2.css" type="text/css" media="screen" />
<link rel="stylesheet" href="login.css" type="text/css" media="screen" />
<!-- <script type="text/javascript" src="jquery.min.js"></script> -->
<!-- <script type="text/javascript" src="slimbox2.js"></script> -->
<script type="text/javascript" src="loginJS.js"></script>
<!-- <script type="text/javascript" src="stopBack.js"></script> -->
<script src="tabcontent.js" type="text/javascript"></script>
    <link href="tabcontent.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    
<script type="text/javascript">
window.onload = function () {
//        setInterval("",6000);
//        
        
        document.getElementById("loadingimage").style.display='none';
        document.getElementById("js").style.display='none';
        toggleLogin(0);
};

</script>
<script>
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah')
                .attr('src', e.target.result)
                .width(70)
                .height(70);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>
    <script>
function addRow3(tableID) {

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);


       
        var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "text";
		
		element1.name="textbox[]";
		cell1.appendChild(element1);

         
          var cell2 = row.insertCell(1);
		var element2 = document.createElement("input");
		element2.type = "text";
		
		element2.name="textbox[]";
		cell2.appendChild(element2);
           
           
		var cell3 = row.insertCell(2);
		var element3 = document.createElement("input");
		element3.type = "text";
		element3.name = "txtbox[]";
		cell3.appendChild(element3);
		
	     

	


	}
</script>

<script type="text/javascript">
$(document).ready(function() {
    $("button").click(function(){
        var countries = [];
        $.each($(".transfer option:selected"), function(){            
            countries.push($(this).text());
        });
       // alert("You have selected the country - " + countries.join(", "));
       document.getElementById("transf").innerHTML=countries.join("</br> ");
    });
});
</script>
</head>
<body>
    <div id="loadingimage">
        <!--<img src="images/Preloader_21.gif"/> <b>Please turn on javascript</b>-->
</div>
    <div id="templatemo_background_section_top">
    
<%@ include file="header.jsp"%> 
    </div><!-- End Of Top Background -->
    
    
    <div id="js" style="border: 1px solid #AAA;background: yellow;font-weight: bold;"><marquee behavior="alternate" scrollamount="2"><font color="red">JavaScript seems to be off, Please turn it on for better performance.</font></marquee></div>
    <script>document.getElementById("js").style.display='none';</script>
    
    <div id="templatemo_background_section_mid" > 
         <!--<marquee scrollamount="4">e-Procurement System Pune District Education Association,Pune</marquee>-->
    	<div class="templatemo_container">
        <div id="templatemo_content_area" style="margin-top: 10px;">
        
        	<div id="templatemo_left_section">
                <div class="templatemo_left_section_box" style="width: 615px">
         
                    
                	<div class="templatemo_left_section_box_top" >Welcome To Pune District Education Association ERP Portal</div>
                        <div class="site_content" style="width: 950px;padding: 10px">
                            <fieldset>

<legend>
Transfer Request Entry
</legend>
<label>Year:</label><select style="width: 190px;"><option>2016-2017</option></select>
<label>Code:</label><input type="text"></input>
<label>First Name:</label><input type='text' name='name'>
<label>SurName:</label><input type='text' name='surname'><br></br>
<label>MaidenName:</label><input type='text' name='midname' style="width: 140px;">
<label>Post:</label>&nbsp;&nbsp;<input type="text" value="">
<label>Qualification:</label><input type="text" value="">
<label>Branch:</label>&nbsp;&nbsp;<input type="text" value=""><br></br>
<label style="vertical-align: top;">Subject:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="" style="vertical-align: top;width: 140px;" > &nbsp;&nbsp;
<tr><td><label for="job_category" style="vertical-align: top;">Transfer Request: </label></td><td><select name="job_category"  class="transfer" size="4" multiple='multiple'>
<option value="">- Select (Max 3) -</option>
<option value='1'>manjri</option>
<option value='2'>gholap college</option>
<option value='3'>demo1</option>
<option value='4'>demo2</option>

</select>
<button type="button">Get Values</button>
<div style="float: right;">
<span id="transf" name="transf" rows="5" cols="16" style="margin-bottom: -5opx;"></span></td>
</div>

</br></br>
<label style="vertical-align: top;">Transfer Remark:</label><textarea type="text" value="" style="vertical-align: top"></textarea>
</fieldset>
 <fieldset>
<table id="datawork"  width="750px" >
<legend>
WorkLoad/Teaching Subject
</legend>
<tr><INPUT type="button" value="Add Row" onclick="addRow3('datawork')" >

	
	</tr>
	</br><br>
	<thead>
	<tr>
	<th>Class:</th><th>Division:</th><th>Teaching Subject:</th>
	</tr>
	</thead>
<tr>
<td><input type='text' name='name' > </td>
<td><input type='text' name='surname' > </td>
<td><input type='text' name='midname' ></td>


</tr>

</table>
<table>
<tr><td><label>Reffered By:</label><input type="text"></input></td>
<td><label>Name:</label><input type="text"></input></td>
</tr>
<br></br>&nbsp;

</table>
<input type="button"value=SAVE style="float: right;" >
</fieldset>
                      </div>
 </div>

  </div><!-- End Of left Section -->
<!-- End Of right Section -->
            
			<div class="cleaner_with_height">&nbsp;</div>
		</div><!-- End Of content area -->
                
        
        </div><!-- End Of container -->
        <div id="templatemo_footer">
        	Copyright © 2016 Pune District Education Association,Pune | Website Developed and Maintain by <a href="http://www.techdivinity.com" target="_parent">Tech Divinity ,Pune</a>
        </div>
    </div><!-- End Of Middle Background -->
</body>
<!--  Designed by www.divinityindia.in  --> 
</html>