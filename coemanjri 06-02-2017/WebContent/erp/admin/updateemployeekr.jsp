<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>:: Update Employee</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/form.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        $(function() {  
            $( "#datepicker-1" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#datepicker-2" ).datepicker({
            	dateFormat:"dd/MM/yyyy",
            	changeMonth: true,
      	      changeYear: true,
    	      yearRange: "1942:2050",
    		  dateFormat:"dd/mm/yy"
            });  
            $( "#fromdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#todate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#krdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
         });
        </script>
<script src="../js/updateemployeekr.js"></script>
<style type="text/css">
td.krheading{
	width: 30%;
	font-weight: bold;
	color: #000000;
}
</style>
</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.updateemployee==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				<h2>Update Employee Knowledge Repository</h2>
       				<div id="krsuccess" class="success"></div>
  					
  						<c:forEach var="cat" items="${krList}">	
						<table class="employeeprofile" id="k${cat.krid}" style="margin-top: 15px;width: 95%">
								
								<tr>
									<th colspan="2" style="font-weight: bold;">Knowledge Repository (Author: ${cat.sal} ${cat.fname} ${cat.lname})</th>
								</tr>
								<tr>
									<td class="krheading">Headline</td><td>${cat.headline}</td>
								</tr>
								<tr>
									<td class="krheading">Category</td><td>${cat.krcategory}</td>
								</tr>
								<tr>
									<td class="krheading">Publication</td><td>${cat.publication}</td>
								</tr>
								<tr>
									<td class="krheading">Author</td><td>${cat.author}</td>
								</tr>
								<tr>
									<td class="krheading">Date of Publication</td><td>${cat.krdate}</td>
								</tr>
								<tr>
									<td class="krheading">URL</td><td>${cat.krurl}</td>
								</tr>
								<c:if test = "${not empty cat.documentName}"><tr>
									<td class="krheading">Download Article</td><td><a href="getkrarticle?krid=${cat.krid}">Article Document(Click to Download)</a></td>
								</tr></c:if>
								<tr>
									<td class="krheading">Keywords</td><td>${cat.keywords}</td>
								</tr>
								<tr>
									<td class="krheading">Content</td><td>${cat.content}</td>
								</tr>
								<tr>
									<td class="krheading">Notes</td><td>${cat.notes}</td>
								</tr>
								<tr>
									<td class="krheading">Priority</td><td>${cat.priority}</td>
								</tr>
								<tr>
									<td class="krheading">Guide</td><td>${cat.guide}</td>
								</tr>
								<tr>
									<td class="krheading">Co-Guide</td><td>${cat.coguide}</td>
								</tr>
								<tr>
									<td class="krheading">Teamsize</td><td>${cat.teamsize}</td>
								</tr>
								<tr>
									<td colspan="2" style="text-align: right;"><a href="javascript:;" data-p1="${cat.krid}" class="deletelinkKr">Delete</a></td>
								</tr>
								
						</table>
						</c:forEach>
						<img src="../../icons/loading3.gif" id="load1" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>
						
						<div id="block4">
  							<form action="updateemployeekr" method="post" id="form4"  enctype="multipart/form-data">
  							<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 95%">
								<tr><th colspan="4">
									Add more Knowledge Repository
									<input type="hidden" class="fid" value="${kfid}" name="fid"></input>									
								</th></tr>
								<tr>
									<td class="exlabel">Headline:<span class="required">*</span></td>
									<td>
										<input type="text" name="headline" id="headline"  placeholder="Headline" class="simpletext" required="required">
									</td>
									<td class="exlabel">Category</td>
									<td>
										<select name="krcategory" id="krcategory">
												<option selected="selected" value="">Select</option>
												<option>Publication</option>
												<option>Presentation</option>
												<option>Workshop/Seminar Attended</option>
												<option>Book Published</option>
												<option>Guest Lecture Delivered</option>
												<option>Petant</option>
												<option>Project</option>
												<option>Seminar</option>
												<option>Conference Attended</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="exlabel">Publication:</td>
									<td>
										<input type="text" name="publication" id="publication"  placeholder="Publication" class="simpletext">
									</td>
									<td class="exlabel">Author:</td>
									<td>
										<input type="text" name="author" id="author"  placeholder="Author" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Date:</td>
									<td>
										<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="krdate" id="krdate" readonly="readonly">
									</td>
									<td class="exlabel">URL:</td>
									<td>
										<input type="text" name="kurl" id="kurl"  placeholder="URL" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Article Upload:</td>
									<td>
										<input type="file" name="articlefile" id="articlefile" class="simpletext">
									</td>
									<td class="exlabel">Keywords:</td>
									<td>
										<input type="text" name="keywords" id="keywords"  placeholder="Keywords" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Content:</td>
									<td>
										<input type="text" name="content" id="content1"  placeholder="Content" class="simpletext">
									</td>
									<td class="exlabel">Notes:</td>
									<td>
										<input type="text" name="notes" id="notes"  placeholder="Notes" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Priority:</td>
									<td>
										<select name="priority" id="priority">
												<option selected="selected" value="">Select</option>
												<option>Business</option>
												<option>Urjent</option>
												<option>High</option>
												<option>Low</option>
										</select>
									</td>
									<td class="exlabel">Guide(For Seminar/Project):</td>
									<td>
										<input type="text" name="guide" id="guide"  placeholder="Guide" class="simpletext">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Co-Guide:</td>
									<td>
										<input type="text" name="coguide" id="coguide"  placeholder="Co - Guide" class="simpletext">
									</td>
									<td class="exlabel">Team Size:</td>
									<td>
										<input type="text" name="tsize" id="tsize"  placeholder="Team Size" class="simpletext">
									</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><button type="submit" id="save3">Save Details</button></td>
								</tr>
								<tr>
									<td  class="exlabel" colspan="4" >* Fields are compulsory</td>
								</tr>
							</table>
							</form>
						</div>
       		</div>	
       		</div>
        	<div id="footer">
           		<div id="copyright" class="clear"> 
    				<p style="float: left;">Copyright &copy; 2016 - All Rights Reserved - <a href="#">College of Engineering, Manjari</a></p>    
    				<p style="float: right;">Designed and Developed by <a target="_blank" href="#">Techdivinity</a></p>
  				</div>
        	</div>
        </div>
    </div>
<!-- <script type="text/javascript">
	
	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}
	
	
		if($.urlParam('success')=='1')
		{
			$("#success").empty();
			$("#success").append('Employee updated Successfully.');
			$("#success").css('display','block');
		}
		else if($.urlParam('success')=='0')
		{
			$("#success").empty();
			$("#success").append('Student Employee failed...Please try again');
			$("#success").css('display','block');
		}
		
		
		

	</script>	 -->	
</body>
</html>
