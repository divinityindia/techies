<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>:: Events Manager</title>

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
		  changeMonth: true,
	      changeYear: true,
	      yearRange: "1942:2050",
		  dateFormat:"dd/mm/yy"
	  });
	  
	});
</script>
<script src="../js/events.js"></script>

</head>
<body>
<jsp:include page="admintop.jsp"/>
<c:if test = "${right.event==false}">
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
    							<div class="form_success">Event/Events deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  						</c:choose>
       				
       				<h2>Events Manager</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>
  						<form action="event" method="post" id="form1" enctype="multipart/form-data">
  						<input type="hidden" name="eid" id="eid" value=""/>
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
								<td class="llabel">Category<span class="required">*</span></td>
								<td>
									<select name="category" id="category" required="required">
                                     		<option  value="">---Select Category---</option>
                                     		<option>Academic</option>
                                     		<option>Cultural</option>
                                     		<option>Sports</option>
                                     		<option>Social</option>
									</select>
								</td>
							</tr>
    						
    						<tr>
								<td class="llabel">Event Title<span class="required">*</span></td>
								<td>
									<input type="text" name="eventtitle" id="eventtitle"  class="simpletext" placeholder="Event Title" required="required"/>
								</td>
								<td class="llabel">Organized by</td>
								<td>
									<input type="text" name="organizedby" id="organizedby"  class="simpletext" placeholder="Organized by"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Organized for</td>
								<td>
									<input type="text" name="organizedfor" id="organizedfor"  class="simpletext" placeholder="Organized for"/>
								</td>
								<td class="llabel">Venue</td>
								<td>
									<input type="text" name="venue" id="venue"  class="simpletext" placeholder="Venue"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Details</td>
								<td>
									<textarea name="details" id="details"  placeholder="Details"></textarea>
								</td>
								<td class="llabel">Instructions</td>
								<td>
									<textarea name="instructions" id="instructions"  placeholder="Instructions"></textarea>
								</td>
							</tr>
							<tr>
								<td class="llabel">Upload Document</td>
								<td>
									<input type="file" name="document" id="document"  class="simpletext"/>
								</td>
								<td class="llabel">Link if any</td>
								<td>
									<input type="text" name="url" id="url"  class="simpletext" placeholder="Event link if any"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Contact person<span class="required">*</span></td>
								<td>
									<input type="text" name="contactperson" id="contactperson"  class="simpletext" placeholder="Contact Person" required="required"/>
								</td>
							</tr>
							<tr>
								<td class="llabel">Start Date<span class="required">*</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="startdate" id="datepicker-1" required="required" >
								</td>
							</tr>
							<tr>
								<td>Start Time:</td>
								<td>
								<table>
									<tr><td><select name="hr" id="hr" class="time" required="required">
										<option value="" selected="selected">HH</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
									</select></td><td>
									<select name="min" id="min" class="time" required="required">
										<option value="" selected="selected">MM</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select></td>
									<td><select name="am" id="am" class="time" required="required">
										<option value="" selected="selected">AM/PM</option>
										<option>AM</option>
										<option>PM</option>
									</select></td>
									</tr>
								</table>
								</td>
							</tr>
							<tr>
								<td class="llabel">Repeat Option<span class="required">*</span></td>
								<td>
									<select name="roption" id="roption" required="required">
                                     		<option  value="">---Select Option---</option>
                                     		<option>Never</option>
                                     		<option>To below date</option>
									</select>
								</td>
								<td class="llabel"><span id="edlabel" style="display: none">End Date</span></td>
								<td>
									<input type="text" class="simpletext" placeholder="mm/dd/yyyy" name="enddate" id="datepicker-2" readonly="readonly" style="display: none">
								</td>
							</tr>
							<tr>
								<td>End Time</td>
								<td>
								<table>
									<tr><td><select name="hr1" id="hr1" class="time">
										<option value="" selected="selected">HH</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
									</select></td><td>
									<select name="min1" id="min1" class="time">
										<option value="" selected="selected">MM</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select></td>
									<td><select name="am1" id="am1" class="time">
										<option value="" selected="selected">AM/PM</option>
										<option>AM</option>
										<option>PM</option>
									</select></td>
									</tr>
								</table>
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
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton">Add Event</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton">Reset</button></td>
							</tr>
						</table>
						</form>
						<center>
						
						<h3>Events Added</h3>
						<form action="event" method="post"  enctype="multipart/form-data">
						<table class="info">
							<tr>
								<th>Event ID</th>
								<th>Branch</th>
								<th>Event Title</th>
								<th>Document</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>Status</th>
								<th>Delete Event</th>
								<th>Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.eventList}">
							<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
								<td>${cat.eventId}</td>
								<td>${cat.branchName}</td>
								<td>${cat.eventtitle}</td>
								<td><a href="../../geteventdocument?eventid=${cat.eventId}" target="_blank">${cat.documentName}</a></td>
								<td>${cat.startdate}</td>
								<td>${cat.enddate}</td>
								<td>${cat.status}</td>
								<td><input type="checkbox" name="eventid" value="${cat.eventId}" class="eventid" /></td>
								<td><a href="javascript:;" data-p1="${cat.eventId}" data-p2="${cat.branchName}" data-p3="${cat.category}" data-p4="${cat.eventtitle}" data-p11="${cat.contactperson}" data-p12="${cat.startdate}" data-p14="${cat.status}" data-p16="${cat.organizedby}" data-p17="${cat.organizedfor}" data-p18="${cat.venue}" data-p19="${cat.details}" data-p20="${cat.instructions}" data-p21="${cat.url}" data-p22="${cat.starttime}" data-p23="${cat.repeatoption}" data-p24="${cat.enddate}" data-p25="${cat.endtime}" class="editlink">Edit</a></td>
							</tr>
							</c:forEach>
						</table>
						
						<table style="width: 30%">
							<tr><td><button type="submit" id="deleteButton" disabled="disabled">Delete Events</button>
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
