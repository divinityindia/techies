<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome To PDEA E Tender Portal</title>
<meta name="keywords" content="free etendering  by pdea  " />
<meta name="description" content="Maintain and developed by divinity technologies,pune" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../style/table.css" type="text/css" media="screen" />

<script type="text/javascript" src="../style/jquery.min.js"></script>
<script type="text/javascript" src="../js/DSRDropDown1.js"></script>

<script language="javascript" type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/jquery.blockUI.js"></script>
<script>function BUI(){
    $.blockUI({ message: '<br><img src="../icons/load.gif" width="64" height="64" alt="load"/><br><br>Please Wait...<br><br>' }); }
</script>

<script>
     function showDropDown(){
		 var links = "";
		 var count = 0;
		 // Get the options from the hidden control
		   $options = $('#selectOptions option');
			$options.each(function(i, val) {	
				$option = $(this) ;
				links = links 
					+ "<div class=\"optionDiv\" onclick=\"setSelectedOption('"+ $option.val() + "');\">" +"<b><font color=\"brown\">"+(count+1)+". </font></b> " + $option.text()+ "</div>";
				count++; 
			});

			
			// Generate the dvi based select control
			$dropDownDiv = $("#dropDownOptions");
			$dropDownDiv.html(links);
			$dropDownDiv.show();
			
			// Add a scroll bar if required
			if(count > 4){
				$dropDownDiv.addClass("scrollDiv");
			}
                        
	}

	function setSelectedOption(val)
        {   
                $('#load2').show();
		$("#dropDownOptions").hide();
		//$("#dropDown").val(text);
                if(chk(val)==true)
                {
                    $('#selectOptions').val(val);
                    addItem(val);
                }

	}
        

$(document).click(function(e) {

  if( e.target.id != 'dropDown') {//alert(e.target.id);
    $("#dropDownOptions").hide();
  }

});



</script>
<style>
     input{
          	    
      	        }
      
		#dropDownOptions{
			display: none; 
			z-index: 5000; 
			position: absolute; 
			padding-top: 2px;
			overflow-x:none;
			padding-bottom: 0 !important;
			width: 500px;
			border: 1px solid #C8C8C8;
			background-color:#fff;
			box-shadow: 0 4px 3px #8C8C8C;
		}
		
		.scrollDiv{
			height: 200px;
			overflow-y: auto;
		}
		      
		.optionDiv {
		    background-color: #FFFFFF;
		    border-bottom: 1px solid #C8C8C8;
		   
		    padding-bottom: 3px;
		    padding-left: 5px;
		    padding-top: 3px;
		    width: 97%;
		    cursor: default;
		}
		
		#dropDownOptions div:hover{
		    background-color: #CCCCCC;
                    
		}
</style>
<style>
/*    .Vscroll td:nth-child(1),.Vscroll th:nth-child(1){
    width: 40px;    
    }*/
    td:nth-child(3),th:nth-child(3)
    {
        width: 100px; 
    }
    td:nth-child(4),th:nth-child(4),td:nth-child(5),th:nth-child(5){
       width: 100px; 
    }
    td:nth-child(6),th:nth-child(6){
        width: 120px;
    }
    td:nth-child(7),th:nth-child(7){
        width: 70px;
    }
    .smallInput4 input[type="number"] {
        width:80px;
    }
    #Dtable td{
        background-color: #FFF;
    }
    #Dtable td:nth-child(2){
        text-align: left;
    }
    #Dtable .downTh{
        background-color:rgba(14, 153, 199, 0.1);
    }
</style>
</head>
<body>
    <%
    //response.setHeader("Pragma","no-cache"); response.setHeader("Cache-Control","no-store");response.setDateHeader("Expires", 0);
 %>
    <div id="templatemo_background_section_top">
        <div class="templatemo_container">
            <jsp:include page="header.jsp"/>
            <jsp:include page="menu.html"/>   
        </div>
    </div>
    <div class="site_content">
        <form action="" method="post" onsubmit="BUI()">
        <table id="simple"  width="100%">
            <tr>
                <td width="170px">Name Of School / College : </td>
                <td>
                    <input type="text" name="schoolName" maxlength="220" style="width: 100%;"  required/>
                </td>
            </tr>
            <tr>
                <td>Name Of The Work : </td>
                <td>
                    <input type="text" name="workName" maxlength="220" style="width: 100%;"  required/>
                </td>
            </tr>
            <tr>
                <td>Estimated Amount : </td>
                <td>
                    <input type="text" id="EstAmt" name="EstAmt" readonly style="width: 100%"/>
                </td>
            </tr>
        </table>
        
        <center>
            <h4>~~~ ABSTRACT SHEET ~~~</h4>
        </center>
        
        <table id="simple">
            <tr>
                <td >
                    <table id="simple">
                        
                        <tr>
                            <td>Category :</td>
                            <td style="white-space: nowrap">
                                <select name="items" onchange="showItem()" id="itm" style="width: 350px;">
                                    <option></option>
                                    <c:forEach var="itm" items="${requestScope.titleList}">
                                        <option>${itm}</option>
                                    </c:forEach>
                                </select>
                                <div style="float: right;padding-left: 5px"> <img src="../icons/loading3.gif" id="load" width="18" height="18" alt="loading3" style="margin: 0px;display: none"/></div>

                            </td>
                        </tr>
                        <tr>
                                <td>Item :</td>
                                <td id="c" ><div id="cl">
                                    <input id="dropDown" readonly="readonly" class="dropDown" style="cursor: default;width: 345px;"
                                                onclick="showDropDown();" value="-- Select Category --">
                                    </input><span id="warning"  class="blink_text"></span> <div style="float: right;padding-left: 5px"> <img src="../icons/loading3.gif" id="load2" width="18" height="18" alt="loading3" style="margin: 0px;display: none"/></div>	
                                        <div id="dropDownOptions" style="display:none;" />
                                        
                                    </div>
                                </td>
                        </tr>

                        <tr>
                                <td ></td>
                                <td>
                                        <select id="selectOptions" style="width:300px;display:none;" >
                                        </select>

                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        
        <span id="msg"></span>
                 
        <table  id="Dtable" border  onclick="estimatinLeadCharges()" onkeyup="estimatinLeadCharges()" class="Vscroll">
            <thead>
                <tr><th>Item No</th><th>Description of Item</th><th>Quantity</th><th>Rate</th><th>Per Unit</th><th>Amount Rs</th><th>Delete</th></tr>
            </thead>
            <tbody>
                
            </tbody>
            <thead>
                <td class="downTh"></td><td class="downTh"></td><td class="downTh"></td><td class="downTh"></td>
                <th><b>Total </b>(A)</th>
                <th><b><span id="showTotal">0</span></b></th>
                <td class="downTh"></td>
            </thead>
         </table>
        <!--<span id="showTotal" style="float: right; font-weight: bolder;color: blue; font-size: 13px;" ></span>-->
           <br>
               <table id="simple" >
                <tr>
                    <td>Lead Charge (B) </td>
                    <td><input type="radio" onchange="estimatinLeadCharges()" name="leadCharges" value="0" checked/>5 %<br>
                        <input type="radio" onchange="estimatinLeadCharges()" name="leadCharges" value="1"/>10 %
                    </td>
                    <td style="width: 160px"><b><span id="percent"></span></b></td>
                </tr>
                <tr>
                    <td colspan="2">Total Amount with lead charge (A+B) &nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><b><span id="totalWithLead"></span></b></td>
                </tr>
            </table>  
               <br>
               <input type="submit" class="colorbutton" value="   Submit   "/>
           </form>
  
    </div>
                
        <div id="templatemo_footer">
        	Copyright © 2016 Pune District Education Association,Pune | Website Developed and Maintain by <a href="http://www.techdivinity.com" target="_blank">Tech Divinity,Pune</a>
        </div>
        </div><!-- End Of container -->
    </div><!-- End Of Middle Background -->
</body>
<!--  Designed by w w w . t e m p l a t e m o . c o m  --> 
</html>