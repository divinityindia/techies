<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: News Manager</title>

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
	  
	});
</script>
<script src="../js/news.js"></script>

</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.news==false}">
	<jsp:forward page="error1.jsp"/>
</c:if>
	<div id="wrapper">
    	<div id="movable">
       		<div id="contentliquid">
       			<div id="content">
       				
       				<p><a href="../../logout" class="logoutbtn">LOGOUT</a></p>
       				
       				<c:choose>
  							<c:when test="${param.success eq 1}">
    							<div class="form_success">Success</div>
  							</c:when>
  							<c:when test="${param.success eq 0}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  							<c:when test="${param.success eq 2}">
    							<div class="form_success">News deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  						</c:choose>
       				
       				<h2>News Manager</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="news" method="post" id="form1" enctype="multipart/form-data">
  						<input type="hidden" name="nid" id="nid" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table> 
  							<tbody>
    						<tr>
								<td class="llabel">Branch<span class="required">*</span></td>
								<td>
									<select name="branch" id="branch" required="required">
                                     		<option  value="">---Select Branch---</option>
                                     		<option  value="0">All</option>
									</select>
								</td>
								<td class="llabel">News Title<span class="required">*</span></td>
								<td>
									<input type="text" name="newstitle" id="newstitle"  class="simpletext" placeholder="News Title" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Details</td>
								<td>
									<textarea name="details" id="details"  placeholder="Details"></textarea>
								</td>
								<td class="llabel">Link if any</td>
								<td>
									<input type="text" name="url" id="url"  class="simpletext" placeholder="Event link if any"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Upload Document</td>
								<td>
									<input type="file" name="document" id="document"  class="simpletext"/>
								</td>
								<td class="llabel">Start Date<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="startdate" id="datepicker-1" required="required" >
								</td>
							</tr>
							<tr>
								<td class="llabel">Status(To view Online)<span class="required">*</span></td>
								<td>
									<select name="status" id="status" required="required">
                                     		<option  value="">---Select Option---</option>
                                     		<option>Yes</option>
                                     		<option>No</option>
									</select>
								</td>
								<td class="llabel"></td>
								<td>
									
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add News</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>News Added</h3>
						<form action="news" method="post"  enctype="multipart/form-data">
						<table class="info">
							<tr>
								<th>News ID</th>
								<th>Branch</th>
								<th>News Title</th>
								<th>Document</th>
								<th>Start Date</th>
								<th>Status</th>
								<th>Delete News</th>
								<th>Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.newsList}">
							<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
								<td>${cat.newsId}</td>
								<td>${cat.branchName}</td>
								<td>${cat.newstitle}</td>
								<td><a href="../../getnewsdocument?newsid=${cat.newsId}" target="_blank">${cat.documentName}</a></td>
								<td>${cat.startdate}</td>
								<td>${cat.status}</td>
								<td><input type="checkbox" name="newsid" value="${cat.newsId}" class="newsid" /></td>
								<td><a href="javascript:;" data-p1="${cat.newsId}" data-p2="${cat.branchName}" data-p3="${cat.newstitle}" data-p4="${cat.startdate}" data-p5="${cat.status}" data-p6="${cat.details}" data-p7="${cat.url}" class="editlink">Edit</a></td>
							</tr>
							</c:forEach>
						</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete News</button>
							<input type="hidden" name="formaction" value="delete" id="formactiondelete"/>
							</td></tr>
						</table>
						</form>
						</center>
					
				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
</body>
</html>